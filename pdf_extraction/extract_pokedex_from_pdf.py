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
import difflib
import os
import re
import sys
from typing import Dict, List, Tuple, Set

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
    # Common OCR/dash issues observed
    "Beautiy": "Beautifly",
    "Boualant": "Bouffalant",
    "Clea": "Cleffa",
    "Core Minior": "Red Core Minior",
    "Curly Mega Tatsugiri": "Mega Curly Tatsugiri",
    "Cutiey": "Cutiefly",
    "Deerling": "Spring Deerling",
    "Deoxys-Attack": "Attack Deoxys",
    "Deoxys-Speed": "Speed Deoxys",
    "Drilim": "Drifblim",
    "Drioon": "Drifloon",
    "Droopy Mega Tatsugiri": "Mega Droopy Tatsugiri",
    "Flaay": "Flaaffy",
    "Gastrodon-East": "East Gastrodon",
    "Gossieur": "Gossifleur",
    "Hisuian Qwilsh": "Hisuian Qwilfish",
    "Igglybu": "Igglybuff",
    "ievul": "Thievul",
    "Iron orns": "Iron Thorns",
    "Jumplu": "Jumpluff",
    "Keldeo": "Ordinary Keldeo",
    "Klei": "Klefki",
    "Kong": "Koffing",
    "Landorus": "Incarnate Landorus",
    "Landorus-erian": "Therian Landorus",
    "Mabossti": "Mabosstiff",
    "Maschi": "Maschiff",
    "Mega Scray": "Mega Scrafty",
    "Morpeko-Full-Belly": "Full Belly Morpeko",
    "Nidoran{Female}": "Nidoran (F)",
    "Nidoran{Male}": "Nidoran (M)",
    "Oricorio-Pom-Pom": "Pom-Pom Oricorio",
    "Pau Oricorio": "Pa'u Oricorio",
    "Primal-Blue Kyogre": "Primal Kyogre",
    "Primal-Red Groudon": "Primal Groudon",
    "Qwilsh": "Qwilfish",
    "Rockru": "Rockruff",
    "roh": "Throh",
    "Ruet": "Rufflet",
    "Sawsbuck": "Spring Sawsbuck",
    "Scray": "Scrafty",
    "Shaymin": "Land Shaymin",
    "Shaymin-Sky": "Sky Shaymin",
    "Shellos-East": "East Shellos",
    "Shiny Gyarados": "Red Gyarados",
    "Shiny Mega Gyarados": "Mega Red Gyarados",
    "Shiry": "Shiftry",
    "Slurpu": "Slurpuff",
    "Stretchy Mega Tatsugiri": "Mega Stretchy Tatsugiri",
    "Stunsk": "Stunfisk",
    "Stuul": "Stufful",
    "Sunora": "Sunflora",
    "Taloname": "Talonflame",
    "Tinkatu": "Tinkatuff",
    "Tornadus": "Incarnate Tornadus",
    "Toxtricity-Low-Key": "Low-Key Toxtricity",
    "undurus": "Incarnate Thundurus",
    "undurus-erian": "Therian Thundurus",
    "wackey": "Thwackey",
    "Wigglytu": "Wigglytuff",
    "Wobbuet": "Wobbuffet",
    "Ho-Oh": "Ho-oh",
    "Ogerpon": "Teal Ogerpon",
    "Ogerpon-Cornerstone": "Cornerstone Ogerpon",
    "Ogerpon-Hearthame": "Hearthflame Ogerpon",
    "Ogerpon-Wellspring": "Wellspring Ogerpon",
    # Additional safety for Tatsugiri Megas and shiny mega variant
    "Curly Mega Tatsugiri": "Mega Curly Tatsugiri",
    "Droopy Mega Tatsugiri": "Mega Droopy Tatsugiri",
    "Stretchy Mega Tatsugiri": "Mega Stretchy Tatsugiri",
    "Shiny Mega Gyarados": "Mega Red Gyarados",
}

# Names that might not appear in PokemonData name="..." but should be treated as canonical
EXTRA_CANONICAL = {
    "Red Core Minior",
    "Mega Curly Tatsugiri",
    "Mega Droopy Tatsugiri",
    "Mega Stretchy Tatsugiri",
    "Mega Red Gyarados",
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
    s = s.replace("{Female}", "(F)").replace("{Male}", "(M)")
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
    norm = first.lower().replace("_", "-")
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
    prefix_blocklist = {"mega", "gmax", "primal", "shadow", "alolan", "galarian", "hisuian", "paldean", "armored", "totem", "ash-greninja"}
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
            if first.lower() not in prefix_blocklist and second.capitalize() in region_like:
                s = f"{second.capitalize()} {first}"
    return s

# ----------------- Detection -----------------
def build_patterns(min_digits: int, strict: bool) -> List[re.Pattern]:
    anchor = r"^" if strict else r""
    # Allow any dex number length >= min_digits (newer dexes exceed 999)
    digit_block = rf"(\d{{{min_digits},}})"
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
        # Flatten newlines/spaces so names split across lines (e.g., trailing "Z") stay together.
        text = re.sub(r"[ \t]*\n[ \t]*", " ", text)
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

# ----------------- Canonical name loading & matching -----------------
def load_canonical_from_lua(path: str) -> Set[str]:
    """Parse name=\"...\" entries from a Lua file containing PokemonData tables."""
    try:
        text = open(path, "r", encoding="utf-8").read()
    except Exception as e:
        sys.stderr.write(f"Failed to read canonical Lua file {path}: {e}\n")
        return set()
    return set(m.group(1) for m in re.finditer(r'name="([^"]+)"', text))

def load_canonical_from_list(path: str) -> Set[str]:
    try:
        lines = open(path, "r", encoding="utf-8").read().splitlines()
    except Exception as e:
        sys.stderr.write(f"Failed to read canonical list {path}: {e}\n")
        return set()
    return set([ln.strip() for ln in lines if ln.strip()])

def pick_nearest(name: str, canon: Set[str], cutoff: float = 0.9) -> str:
    matches = difflib.get_close_matches(name, list(canon), n=1, cutoff=cutoff)
    return matches[0] if matches else ""

def align_to_canonical(name_map: Dict[str, int], canonical: Set[str], auto_fix: bool) -> Tuple[Dict[str, int], Set[str], Dict[str, str]]:
    """Align detected names to a canonical set; optionally auto-fix via nearest match."""
    if not canonical:
        return name_map, set(), {}
    aligned: Dict[str, int] = {}
    unknown: Set[str] = set()
    fixes: Dict[str, str] = {}
    for name, page in name_map.items():
        # First try a known-fix remap before any canonical checks.
        fixed_name = final_known_fixes(name)
        if fixed_name in canonical:
            aligned[fixed_name] = page
            if fixed_name != name:
                fixes[name] = fixed_name
            continue
        if name in canonical:
            aligned[name] = page
            continue
        guess = pick_nearest(name, canonical) if auto_fix else ""
        if guess:
            aligned[guess] = page
            fixes[name] = guess
        else:
            unknown.add(name)
            aligned[name] = page  # keep it so nothing is dropped, but surface it
    return aligned, unknown, fixes

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
    ap.add_argument("--canonical-lua", action="append", default=[],
                    help="Lua file(s) containing PokemonData entries to use as canonical names")
    ap.add_argument("--canonical-list", action="append", default=[],
                    help="Plaintext file(s), one name per line, to use as canonical names")
    ap.add_argument("--auto-fix-unknown", action="store_true",
                    help="If a detected name is not canonical, map it to the closest canonical name (difflib)")
    args = ap.parse_args()

    pdf1 = os.path.abspath(args.pdf1)
    if not os.path.exists(pdf1):
        sys.stderr.write(f"Missing file: {pdf1}\n")
        sys.exit(1)

    pdf2 = os.path.abspath(args.pdf2) if args.pdf2 else None
    if pdf2 and not os.path.exists(pdf2):
        sys.stderr.write(f"Missing file: {pdf2}\n")
        sys.exit(1)

    # Build canonical set (optional).
    canonical: Set[str] = set()
    # Always try to pull PokemonData names from Global.lua (default location).
    script_dir = os.path.dirname(os.path.abspath(__file__))
    default_global = os.path.abspath(os.path.join(script_dir, "..", "src", "Global.lua"))
    if os.path.exists(default_global):
        canonical |= load_canonical_from_lua(default_global)
    else:
        sys.stderr.write(f"Warning: default Global.lua not found at {default_global}\n")

    # Add extras that don't appear as name=\"...\" in PokemonData
    canonical |= EXTRA_CANONICAL

    # Additional canonical sources (optional flags).
    for lua_path in args.canonical_lua:
        canonical |= load_canonical_from_lua(lua_path)
    for list_path in args.canonical_list:
        canonical |= load_canonical_from_list(list_path)

    names1 = detect_names_in_pdf(pdf1, args.min_digits, args.strict, args.debug)
    names2 = detect_names_in_pdf(pdf2, args.min_digits, args.strict, args.debug) if pdf2 else {}

    # Align to canonical, track unknowns/fixes.
    unknown_total: Set[str] = set()
    fixes_total: Dict[str, str] = {}
    names1, unknown1, fixes1 = align_to_canonical(names1, canonical, args.auto_fix_unknown)
    names2, unknown2, fixes2 = align_to_canonical(names2, canonical, args.auto_fix_unknown)
    unknown_total |= unknown1 | unknown2
    fixes_total.update(fixes1)
    fixes_total.update(fixes2)

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
    if fixes_total:
        sys.stderr.write(f"Auto-fixed {len(fixes_total)} names via canonical matching.\n")
        for src, dst in sorted(fixes_total.items()):
            sys.stderr.write(f"  {src} -> {dst}\n")
    if unknown_total:
        sys.stderr.write(f"Unmatched (not in canonical): {len(unknown_total)}\n")
        for name in sorted(unknown_total):
            sys.stderr.write(f"  {name}\n")

if __name__ == "__main__":
    main()
