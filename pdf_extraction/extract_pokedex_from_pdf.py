#!/usr/bin/env python3

"""
extract_pokedex_from_pdf.py

Scan one or two Pokedex PDFs page-by-page, detect entries like "#001 Bulbasaur",
normalize names, and emit a Lua table in the form:

  local pokedex_table = {
    ["Bulbasaur"] = {1, 12},
    ["Mega Charizard Y"] = {2, 3},
    ...
  }

Usage examples:
  python extract_pokedex_from_pdf.py "Pokedex Gen I.pdf" "pokedex_1-4.pdf" -o "./output/pokedex_table.lua"
  python extract_pokedex_from_pdf.py "pokedex_1-4.pdf" --page-offset1 0 -o "./output/pokedex_table.lua"

Options:
  -o, --output FILE       Output Lua file (default: pokedex_table.lua)
  --var NAME              Lua variable name (default: pokedex_table)
  --no-local              Emit 'NAME = { ... }' instead of 'local NAME = { ... }'
  --prefer {first,second} If a name appears in both PDFs, which wins (default: first)
  --page-offset1 N        Page offset added to PDF #1 pages (default: 0)
  --page-offset2 N        Page offset added to PDF #2 pages (default: 0)
  --strict                Only match lines that begin with the marker
  --min-digits N          Expected digits in the dex marker (default: 3)
  --debug                 Verbose debug to stderr

Dependencies:
  Prefer: pdfminer.six   (pip install pdfminer.six)
  Fallback: PyPDF2       (pip install PyPDF2)
"""

import argparse
import os
import re
import sys
from typing import Dict, List, Tuple

# ----------------- PDF extraction backends -----------------
_EXTRACTOR = None

try:
    from pdfminer.high_level import extract_text as pdfminer_extract_text
    _EXTRACTOR = ("pdfminer", pdfminer_extract_text)
except Exception:
    pass

try:
    import PyPDF2
    if _EXTRACTOR is None:
        def _pypdf2_extract_text(path, page_numbers=None):
            reader = PyPDF2.PdfReader(path)
            pages = page_numbers if page_numbers is not None else range(len(reader.pages))
            chunks = []
            for i in pages:
                try:
                    chunks.append(reader.pages[i].extract_text() or "")
                except Exception:
                    chunks.append("")
            return "\n".join(chunks)
        _EXTRACTOR = ("pypdf2", _pypdf2_extract_text)
except Exception:
    pass

if _EXTRACTOR is None:
    sys.stderr.write("No PDF text extractor available. Install pdfminer.six or PyPDF2.\n")
    sys.exit(2)

def page_count(path: str) -> int:
    try:
        import PyPDF2
        return len(PyPDF2.PdfReader(path).pages)
    except Exception as e:
        raise RuntimeError("PyPDF2 is required for page counting.") from e

def extract_page_text(path: str, page_index: int) -> str:
    name, extractor = _EXTRACTOR
    if name == "pdfminer":
        try:
            return extractor(path, page_numbers=[page_index]) or ""
        except Exception:
            return ""
    try:
        import PyPDF2
        reader = PyPDF2.PdfReader(path)
        return reader.pages[page_index].extract_text() or ""
    except Exception:
        return ""

# -------------------- Known failures  --------------------
# Keys are the broken names after normalization steps below.
# Values are the corrected names you want in the Lua output.
KNOWN_FIXES: Dict[str, str] = {
    # Your reported issues
    "Jigglypu": "Jigglypuff",
    "Jigglypu(cid:31)": "Jigglypuff",
    "Jigglypuff(cid:31)": "Jigglypuff",
    "(cid:31)roh": "Throh",
    "Thro": "Throh",
    "Farfetch'd": "Farfetch\'d",
    "Flabébé": "Flabebe",
    "Zygarde-10": "10% Zygarde",
    "Zygarde-50": "50% Zygarde",
    "Zygarde-Complete": "Complete Zygarde",
    "Shiny {Mega}Gyarados": "Shiny Mega Gyarados",
    "Enamorus": "Incarnate Enamorus",
    "Enamorus-erian": "Therian Enamorus",
    "Palan-Hero": "Hero Palafin",
    "Palan-Zero": "Zero Palafin",
}

# ----------------- Normalization helpers -----------------
CID_TOKEN_RE = re.compile(r"\(cid:\s*\d+\)")
LIGATURE_FIXES = {
    "\ufb00": "ff",  # ﬀ
    "\ufb01": "fi",  # ﬁ
    "\ufb02": "fl",  # ﬂ
    "\ufb03": "ffi", # ﬃ
    "\ufb04": "ffl", # ﬄ
    "\u00ad": "",    # soft hyphen
    "\u200b": "",    # zero-width space
}

def apply_basic_fixes(s: str) -> str:
    for k, v in LIGATURE_FIXES.items():
        s = s.replace(k, v)
    s = CID_TOKEN_RE.sub("", s)
    s = re.sub(r"\s+", " ", s).strip()
    return s

def clean_name_tail(name: str) -> str:
    n = name.strip()
    n = re.sub(r"\.(png|jpg|jpeg)\b", "", n, flags=re.IGNORECASE)
    n = re.sub(r"\s*\.*\s*Page\s*\d+\s*$", "", n, flags=re.IGNORECASE)
    n = re.sub(r"\s+", " ", n)
    return n.strip()

def normalize_gender_suffix(s: str) -> str:
    s = re.sub(r"\s*-\s*Female\s*$", " (F)", s, flags=re.IGNORECASE)
    s = re.sub(r"\s*-\s*Male\s*$", " (M)", s, flags=re.IGNORECASE)
    return s

def normalize_variant_prefix(raw: str) -> str:
    s = raw.strip()
    m = re.match(r"^\{([^}]+)\}\s*(.+)$", s)
    if m:
        prefix = m.group(1).strip()
        rest = m.group(2).strip()
        return f"{prefix} {rest}"
    return s

def map_variant_prefix(s: str) -> str:
    parts = s.split(" ", 1)
    first = parts[0] if parts else ""
    rest = parts[1].strip() if len(parts) > 1 else ""
    norm = first.lower().replace("—", "-").replace("–", "-").replace("_", "-")
    norm = re.sub(r"\s+", "-", norm)
    prefix_map = {
        "g-max": "Gmax",
        "gmax": "Gmax",
        "gigantamax": "Gmax",
        "mega": "Mega",
        "primal": "Primal",
        "shadow": "Shadow",
        "alolan": "Alolan",
        "galarian": "Galarian",
        "hisuian": "Hisuian",
        "paldean": "Paldean",
        "armored": "Armored",
        "totem": "Totem",
        "ash-greninja": "Ash-Greninja"
    }
    if norm in prefix_map:
        return (prefix_map[norm] + (" " + rest if rest else "")).strip()
    if norm in ("g-max", "gigantamax"):
        return ("Gmax " + rest).strip()
    return s

def final_known_fixes(name: str) -> str:
    return KNOWN_FIXES.get(name, name)

def normalize_name(raw: str) -> str:
    s = apply_basic_fixes(raw)
    s = clean_name_tail(s)
    s = normalize_variant_prefix(s)
    s = map_variant_prefix(s)
    s = normalize_gender_suffix(s)
    s = final_known_fixes(s)

    # --- Attribute flip logic.
    # If name has the form "X-Attribute" where Attribute looks like a region or form,
    # flip it to "Attribute X" (e.g., "Gastrodon-East" -> "East Gastrodon")
    # but skip cases where the dash is part of a known Pokémon name (e.g. Ho-Oh, Porygon-Z)
    skip_dash_names = {"Ho-Oh", "Porygon-Z", "Type-Null"}
    if s not in skip_dash_names and "-" in s:
        parts = s.split("-")
        if len(parts) == 2:
            first, second = parts[0].strip(), parts[1].strip()
            # Only flip if the suffix is one of the common attributes
            region_like = {
                "Amped", "Aqua", "Autumn", "Baile", "Blade", "Blue", "Combat",
                "Core", "Curly", "Defense", "Droopy", "Drowzee", "Dusk",
                "Fan", "Frost", "Full-Belly", "Hangry", "Heat", "Ice", "Low-Key",
                "Mane", "Meteor", "Midday", "Midnight", "Mow", "Noice", "Origin",
                "Pau", "Pirouette", "Plant", "Pom-Pom", "Red", "Rainy", "Resolute",
                "School", "Sensu", "Shield", "Solo", "Sandy", "Snowy", "Stretchy",
                "Summer", "Sunny", "Trash", "Unbound", "Wash", "West", "Winter", "Zen",
                "Aqua", "Blaze",  # Paldean Tauros forms
            }
            if second.capitalize() in region_like:
                s = f"{second.capitalize()} {first}"
    return s

# ----------------- Detection -----------------
def build_patterns(min_digits: int, strict: bool) -> List[re.Pattern]:
    anchor = r"^" if strict else r""
    digit_block = rf"(\d{{{min_digits},{min_digits}}})"
    return [
        re.compile(rf"{anchor}\s*#\s*{digit_block}\s+([^\n#]+)"),
        re.compile(rf"{anchor}\s*(?:No\.?|№)\s*{digit_block}\s+([^\n#]+)"),
    ]

def detect_names_in_pdf(path: str, min_digits: int, strict: bool, debug: bool=False) -> Dict[str, int]:
    patterns = build_patterns(min_digits=min_digits, strict=strict)
    total = page_count(path)
    first_seen: Dict[str, int] = {}
    for i in range(total):
        text = extract_page_text(path, i)
        if not text:
            continue
        for pat in patterns:
            for m in pat.finditer(text):
                raw = m.group(2)
                name_norm = normalize_name(raw)
                if not name_norm:
                    continue
                page_num = i + 1
                if name_norm not in first_seen:
                    first_seen[name_norm] = page_num
                    if debug:
                        sys.stderr.write(f"[DEBUG] {os.path.basename(path)} p{page_num}: {name_norm}\n")
    return first_seen

# ----------------- Lua rendering -----------------
def lua_escape(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"')

def render_lua_local_table(var: str, mapping: Dict[str, Tuple[int, int]], make_local: bool) -> str:
    header = f"local {var} = {{" if make_local else f"{var} = {{"
    lines = [header]
    for name in sorted(mapping.keys(), key=lambda x: x.lower()):
        book, page = mapping[name]
        lines.append(f'  ["{lua_escape(name)}"] = {{book={book}, page={page}}},')
    lines.append("}")
    return "\n".join(lines)

# ----------------- Main -----------------
def main():
    ap = argparse.ArgumentParser(description="Extract names/pages from 1 or 2 Pokedex PDFs and emit a Lua table.")
    ap.add_argument("pdf1", help="First PDF (book 1)")
    ap.add_argument("pdf2", nargs="?", help="Second PDF (book 2, optional)")
    ap.add_argument("-o", "--output", default="pokedex_table.lua", help="Output Lua file path")
    ap.add_argument("--var", default="pokedex_table", help="Lua variable name")
    ap.add_argument("--no-local", action="store_true", help="Emit 'NAME = { ... }' instead of 'local NAME = { ... }'")
    ap.add_argument("--prefer", choices=["first", "second"], default="first",
                    help="If a name appears in both PDFs, which one wins")
    ap.add_argument("--page-offset1", type=int, default=0, help="Page offset for PDF #1")
    ap.add_argument("--page-offset2", type=int, default=0, help="Page offset for PDF #2")
    ap.add_argument("--strict", action="store_true", help="Only match lines that begin with the marker")
    ap.add_argument("--min-digits", type=int, default=3, help="Digits in dex marker (default 3 -> 001)")
    ap.add_argument("--debug", action="store_true", help="Verbose debug to stderr")
    args = ap.parse_args()

    pdf1 = os.path.abspath(args.pdf1)
    if not os.path.exists(pdf1):
        sys.stderr.write(f"Missing file: {pdf1}\n")
        sys.exit(1)

    pdf2 = os.path.abspath(args.pdf2) if args.pdf2 else None
    if pdf2 and not os.path.exists(pdf2):
        sys.stderr.write(f"Missing file: {pdf2}\n")
        sys.exit(1)

    names1 = detect_names_in_pdf(pdf1, args.min_digits, args.strict, args.debug)
    names2 = detect_names_in_pdf(pdf2, args.min_digits, args.strict, args.debug) if pdf2 else {}

    final: Dict[str, Tuple[int, int]] = {}
    for name, page in names1.items():
        final[name] = (1, page + args.page_offset1)
    if pdf2:
        for name, page in names2.items():
            if name in final:
                if args.prefer == "second":
                    final[name] = (2, page + args.page_offset2)
            else:
                final[name] = (2, page + args.page_offset2)

    out_path = os.path.abspath(args.output)
    os.makedirs(os.path.dirname(out_path) or ".", exist_ok=True)
    lua_text = render_lua_local_table(args.var, final, make_local=(not args.no_local))
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(lua_text + "\n")

    print(f"Wrote {out_path} with {len(final)} entries.")

if __name__ == "__main__":
    main()
