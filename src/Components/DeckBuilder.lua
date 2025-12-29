-- The DeckBuilder object should live at {13.50, 1.40, 31.50}.
-- https://api.tabletopsimulator.com/base/#spawnobject
-- https://api.tabletopsimulator.com/object/#setcustomobject
-- https://api.tabletopsimulator.com/custom-game-objects/#custom-card

function onLoad()
  -- Make this object not interactable.
  self.interactable = false
  self.setLock(true)
  self.setPosition({13.5, 1.5, 31.5})
  self.setRotation({0, 180, 0})
end

-- The scale to use for all cards.
CARD_SCALE = {2.12, 1.00, 2.11}

-- A table of card backs.
CARD_BACK_URLS = {
  default = "https://steamusercontent-a.akamaihd.net/ugc/41202414673555291/A6F430EEBBDBC1B5FEF77B0D0134D6A7C5FFA6BA/",
  event = "https://steamusercontent-a.akamaihd.net/ugc/41201955293156641/5D47086C919A98CB7785AEB1DD56C1B2504BAC61/",
  pokeballs = "https://steamusercontent-a.akamaihd.net/ugc/41201327654156520/872ED53E811F0EC9E667DC4C30B7232C1C419F77/",
  tera_type = "https://steamusercontent-a.akamaihd.net/ugc/41201327654156477/6095A2918358D17AA36770E6FAF9AE3EDAB06BB0/",
  tm = "https://steamusercontent-a.akamaihd.net/ugc/2492256070866424138/1FE6941F3DE7B046E07CC3BDA3931F4EF4BEA3B7/",
  type_enhancer = "https://steamusercontent-a.akamaihd.net/ugc/41201327654156506/EBB6392674DF472811A6BCD448BF5D2FE4BDA3FF/",
  z_crystal = "https://steamusercontent-a.akamaihd.net/ugc/41201327654156459/B24C29B1871DEF728A62C42586DE7BAF4BA6F511/"
}

-- A table containing card info for deck building.
CARD_INFO = {
  -- Item Cards.
  amulet_coin = { name="Amulet Coin", front="https://steamusercontent-a.akamaihd.net/ugc/16711344406083212845/D72BEAC5D4C0B5D37801174522F110AEAAEAE1FE/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  apricorn = { name="Apricorn", front="https://steamusercontent-a.akamaihd.net/ugc/18093021116790281550/1FE2D9752AC621E1AE2589147A8E0EDABD420EC1/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  berry = { name="Berry", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293150233/769B0826468514AB3163C61E081E48B6965AFAE7/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  bicycle = { name="Bicycle", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293150290/011FEC43E088692F4CECBFE1C1BC0FC1942184F1/", back=CARD_BACK_URLS.default },
  black_flute = { name="Black Flute", front="https://steamusercontent-a.akamaihd.net/ugc/17065829723322956015/976686A5F38C439C431B381579913230458A27E1/", back=CARD_BACK_URLS.default },
  dynamax_band = { name="Dynamax Band", front="https://steamusercontent-a.akamaihd.net/ugc/12409879893624459365/18718DDBBDE2661EDB6E94AAC1CA03EEA8D9F0E7/", back=CARD_BACK_URLS.default },
  escape_rope = { name="Escape Rope", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293150465/D3DF81CB2D62AD8862FAEA6B397BFDE11F607EF7/", back=CARD_BACK_URLS.default },
  eviolite = { name="Eviolite", front="https://steamusercontent-a.akamaihd.net/ugc/11045614255527848655/F71749F7D7B3877C7091B8408C647ACE353F64A7/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  xp_share = { name="XP Share", front="https://steamusercontent-a.akamaihd.net/ugc/9335405612614433931/E8E7EF79C01802F0A78D4AA3DA76D730D2C58058/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  full_heal = { name="Full Heal", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293150705/38322A4B99B23ABAA4493C0B4E6C8B671826C44C/", back=CARD_BACK_URLS.default },
  item_finder = { name="Item Finder", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293150840/3309269717B61AA20E97849F42E64911EB964345/", back=CARD_BACK_URLS.default },
  kings_rock = { name="King's Rock", front="https://steamusercontent-a.akamaihd.net/ugc/14080031643383625774/2460B62ED63700B1D0192FDE33FCCE26C1B48C59/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  leftovers = { name="Leftovers", front="https://steamusercontent-a.akamaihd.net/ugc/11900743884810344999/12A0B68684B868EC0B363B1F129CF075BC6F0CCB/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  lucky_egg = { name="Lucky Egg", front="https://steamusercontent-a.akamaihd.net/ugc/17351377520925047185/840BCE350EC2ADA32E7A6E5368D5FA289B81FC7A/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  max_potion = { name="Max Potion", front="https://steamusercontent-a.akamaihd.net/ugc/9333942494492843473/E0C5DE42345DE9F52E869F8A7F13A2D4CBE00D25/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  max_revive = { name="Max Revive", front="https://steamusercontent-a.akamaihd.net/ugc/10770486561716578630/9C025547584177A77AB604F1A8AE6C3DA727D041/", back=CARD_BACK_URLS.default },
  mega_bracelet = { name="Mega Bracelet", front="https://steamusercontent-a.akamaihd.net/ugc/9362161435743044043/9BD0FA6D6466ABEC410C4DC126E6EB77C8A9C483/", back=CARD_BACK_URLS.default },
  mega_stone = { name="Mega Stone", front="https://steamusercontent-a.akamaihd.net/ugc/17497923673342367069/11DC74137F98F7DC63B4FF8484BF578E96A72FDC/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  poke_doll = { name="Poké Doll", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293151180/FDA9042B364268FF80E7D61EBB8420E217AEA49B/", back=CARD_BACK_URLS.default },
  potion = { name="Potion", front="https://steamusercontent-a.akamaihd.net/ugc/12848208111259375199/E103D2F47620B5EAC859A3B5880420B7F617BE83/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  quick_claw = { name="Quick Claw", front="https://steamusercontent-a.akamaihd.net/ugc/13580339890662910262/FD97B32C61AA314A27494C758B2D54D660E88A08/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  rare_candy = { name="Rare Candy", front="https://steamusercontent-a.akamaihd.net/ugc/17995608923062099811/C523B3B25A8C9FEA388C5637BC3AA80E37409EC3/", back=CARD_BACK_URLS.default },
  razor_claw = { name="Razor Claw", front="https://steamusercontent-a.akamaihd.net/ugc/13152324188253135657/08BBBFAACACCF28B4FD8256012F3DF3EF9207D93/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  repel = { name="Repel", front="https://steamusercontent-a.akamaihd.net/ugc/16494352917487387415/EE7F4B50337A21C355B7449B6EB0D3DCCC4666A4/", back=CARD_BACK_URLS.default },
  revive = { name="Revive", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293151970/75665598F9D26CB6729DB215A0E62365DF1720ED/", back=CARD_BACK_URLS.default },
  running_shoes = { name="Running Shoes", front="https://steamusercontent-a.akamaihd.net/ugc/10037544696594162620/6958BA78A4FD4EA369D1C2F98674A17CD90AD1E9/", back=CARD_BACK_URLS.default },
  shiny_charm = { name="Shiny Charm", front="https://steamusercontent-a.akamaihd.net/ugc/10242531035428832915/7C5B14E611A532F2D223836D5E9008E3DE0170D8/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  technical_machine = { name="Technical Machine", front="https://steamusercontent-a.akamaihd.net/ugc/2455116747421290612/EA9E44F3969D65D9620BCE5662A2600AA5AC1FE3/", back=CARD_BACK_URLS.default },
  tera_orb = { name="Tera Orb", front="https://steamusercontent-a.akamaihd.net/ugc/12423817305788187831/82C21F68BE71A45168FF478AEF5235DE84A6BD48/", back=CARD_BACK_URLS.default },
  treasure = { name="Treasure", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293152301/7BC580A33FCF3D63AFBE569DD471B45BD2AA0394/", back=CARD_BACK_URLS.default },
  type_enhancer = { name="Type Enhancer", front="https://steamusercontent-a.akamaihd.net/ugc/13023814319139827918/26022E243AB306ECDA82C4D65C28EF9734BBF308/", back=CARD_BACK_URLS.default },
  vitamin = { name="Vitamin", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293152384/01453266CBE75DEDEF4757A7714790687F44EA6E/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  weather_rock = { name="Weather Rock", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293152469/A00C7024F300B7558A9BA28BFAA26C0E231AD325/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  wide_lens = { name="Wide Lens", front="https://steamusercontent-a.akamaihd.net/ugc/13925725784966785526/DC0B735E23EDF5D6406772C6FA8EEBF2EF5C48FB/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  zoom_lens = { name="Zoom Lens", front="https://steamusercontent-a.akamaihd.net/ugc/15602441331992887534/C7A56C515553EF8BBEEE76AA49D058B2C95F2D17/", back=CARD_BACK_URLS.default, tags = {"Item"} },
  z_ring = { name="Z Ring", front="https://steamusercontent-a.akamaihd.net/ugc/17691067122829758961/29AE2F3F7C8AD9EE2F15C9CC8358B7E7EEAFA6E6/", back=CARD_BACK_URLS.default },

  -- Pokeballs.
  dream_ball = { name="Dream Ball", front="https://steamusercontent-a.akamaihd.net/ugc/11849740340381397540/37F9E40ABE7AB6B07B47F59949043720097F6FF6/", back=CARD_BACK_URLS.default },
  great_ball = { name="Great Ball", front="https://steamusercontent-a.akamaihd.net/ugc/10961038370056606017/834DE9BC47D3E100C389903E30F8463440B8A908/", back=CARD_BACK_URLS.default },
  poke_ball = { name="Poké Ball", front="https://steamusercontent-a.akamaihd.net/ugc/16477419591502156036/299B137398CEEA647F5158963E6C7817CF4141B9/", back=CARD_BACK_URLS.default },
  safari_ball = { name="Safari Ball", front="https://steamusercontent-a.akamaihd.net/ugc/13952315835474857518/F8E61853208D8AF09A9EC3C36A1C8D5A05517D53/", back=CARD_BACK_URLS.default },
  ultra_ball = { name="Ultra Ball", front="https://steamusercontent-a.akamaihd.net/ugc/15222620497498949406/ADE48924A46A62D1616CFC9D38264729A4184B3D/", back=CARD_BACK_URLS.default },

  -- Battle Cards.
  dire_hit = { name="Dire Hit", front="https://steamusercontent-a.akamaihd.net/ugc/18334645907628805527/FF7F5CA34DCD4A7ACA6E1C180B4B51D572289A2F/", back=CARD_BACK_URLS.default },
  guard_spec = { name="Guard Spec", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293150777/9B89FAF6B2A1DE45FF13E62646CCD420D5AE9FD6/", back=CARD_BACK_URLS.default },
  x_accuracy = { name="X Accuracy", front="https://steamusercontent-a.akamaihd.net/ugc/41201955293152743/86AC1D50764455E776CEDF75CB5750D8B87DF0EF/", back=CARD_BACK_URLS.default },
  x_attack = { name="X Attack", front="https://steamusercontent-a.akamaihd.net/ugc/14707283711565201159/D7511725B3CDFA840E339DCD19FC2804DE42B662/", back=CARD_BACK_URLS.default },
  x_defense = { name="X Defense", front="https://steamusercontent-a.akamaihd.net/ugc/10576440514180908711/B86E30D106C9D6A2952B360559C12579568CDF99/", back=CARD_BACK_URLS.default },
}

-- Custom Cards.
CUSTOM_CARD_INFO = {}

-- Standard Deck used across all maps.
STANDARD_ITEM_DECK = {
  -- Attach cards.
  { card=CARD_INFO.zoom_lens, count=2 },
  { card=CARD_INFO.razor_claw, count=2 },
  { card=CARD_INFO.eviolite, count=2 },
  { card=CARD_INFO.shiny_charm, count=3 },
  { card=CARD_INFO.amulet_coin, count=3 },
  { card=CARD_INFO.wide_lens, count=3 },
  { card=CARD_INFO.kings_rock, count=3 },
  { card=CARD_INFO.vitamin, count=2 },
  { card=CARD_INFO.quick_claw, count=2 },
  { card=CARD_INFO.leftovers, count=2 },
  { card=CARD_INFO.xp_share, count=2 },
  { card=CARD_INFO.berry, count=5 },
  { card=CARD_INFO.lucky_egg, count=2 },
  { card=CARD_INFO.weather_rock, count=4 },

  -- Battle boosters.
  { card=CARD_INFO.x_attack, count=3 },
  { card=CARD_INFO.x_defense, count=3 },
  { card=CARD_INFO.x_accuracy, count=3 },
  { card=CARD_INFO.dire_hit, count=3 },
  { card=CARD_INFO.guard_spec, count=3 },

  -- Card Draw.
  { card=CARD_INFO.apricorn, count=4 },
  { card=CARD_INFO.technical_machine, count=3 },
  { card=CARD_INFO.type_enhancer, count=4 },
  { card=CARD_INFO.tera_orb, count=3 },
  { card=CARD_INFO.z_ring, count=4 },

  -- Pokeballs.
  { card=CARD_INFO.poke_ball, count=4 },
  { card=CARD_INFO.great_ball, count=3 },
  { card=CARD_INFO.ultra_ball, count=2 },

  -- Action.
  { card=CARD_INFO.full_heal, count=3 },
  { card=CARD_INFO.treasure, count=3 },
  { card=CARD_INFO.repel, count=4 },
  { card=CARD_INFO.black_flute, count=3 },
  { card=CARD_INFO.running_shoes, count=4 },
  { card=CARD_INFO.max_revive, count=3 },
  { card=CARD_INFO.revive, count=4 },
  { card=CARD_INFO.max_potion, count=3 },
  { card=CARD_INFO.potion, count=3 },
  { card=CARD_INFO.rare_candy, count=2 },
  { card=CARD_INFO.bicycle, count=2 },
  { card=CARD_INFO.item_finder, count=3 },
  { card=CARD_INFO.escape_rope, count=4 },
  { card=CARD_INFO.poke_doll, count=3 },
}

-- Add-ons specific to each map for the standard deck.
ITEM_DECK_MAP_ADD_ONS = {
  Kanto = {
    { card=CARD_INFO.safari_ball, count=4 }
  },
  Johto = {
    { card=CARD_INFO.safari_ball, count=4 }
  },
  Hoenn = {},
  Sinnoh = {
    { card=CARD_INFO.safari_ball, count=4 }
  },
  Unova = {
    { card=CARD_INFO.dream_ball, count=4 }
  },
  Kalos = {},
  Alola = {},
  Galar = {},
  Paldea = {},
  Ransei = {},
  Hisui = {},
  ["Orange Islands"] = {}
}

-- Custom items.
-- Format: { card_info, count }
CUSTOM_ITEM_CARDS = {}

EVEN_CARD_INFO = {
  alpha_pokemon = { name="Alpha Pokémon", front="https://steamusercontent-a.akamaihd.net/ugc/2447224599432732219/87C6BCD6605729CC9A34A02BA5AA40BAB6BB902F/", back=CARD_BACK_URLS.event, tags = {"Item"} },
  game_corner = { name="Game", front="https://steamusercontent-a.akamaihd.net/ugc/18105693738693143429/8A6519C660D8AC21BB7EC96B910B6FD52164EE4C/", back=CARD_BACK_URLS.event },
  chance_card = { name="Chance Card", front="https://steamusercontent-a.akamaihd.net/ugc/12268546406515072901/28375EECB008ED78ABBA8B1235BED8A76DD71E73/", back=CARD_BACK_URLS.event },
  wonder_trade = { name="Wonder Trade", front="https://steamusercontent-a.akamaihd.net/ugc/15683538532508640609/F8A01C2804C786897B020C3DC86604D91665B8B5/", back=CARD_BACK_URLS.event },
  pick_up_item = { name="Pick Up Item", front="https://steamusercontent-a.akamaihd.net/ugc/13156279064286227086/5CFB85AE6F763D6540F17ABD3C90AFCEB6C61CA7/", back=CARD_BACK_URLS.event },
  pokestop = { name="Pokéstop", front="https://steamusercontent-a.akamaihd.net/ugc/11281991657761846664/69542B6D1289D2EDFD27E9EEC9DAA26DF9F453CA/", back=CARD_BACK_URLS.event },
  pokemon_egg = { name="Pokémon Egg", front="https://steamusercontent-a.akamaihd.net/ugc/13094737038333522319/C0DDF8709B6AEC4BF133A6FB0C103809BE9C9348/", back=CARD_BACK_URLS.event },
  rival_battle = { name="Rival Battle", front="https://steamusercontent-a.akamaihd.net/ugc/9493651423265963669/5A79A6F63D4CC5822149304D8380C493F12EB71B/", back=CARD_BACK_URLS.event },
  blimp_ride = { name="Blimp Ride", front="https://steamusercontent-a.akamaihd.net/ugc/10701836599243327764/ECB7333A0B23A6377BAE793A4236FDC44EA2E5D9/", back=CARD_BACK_URLS.event },
  poke_mart = { name="Poké Mart", front="https://steamusercontent-a.akamaihd.net/ugc/10518817256057593238/8F294A5F3B1C09218B20ADAD1811EFC481DEFB8A/", back=CARD_BACK_URLS.event },
  pokemon_center = { name="Pokémon Center", front="https://steamusercontent-a.akamaihd.net/ugc/13064136183024481683/F2C1F3EEE79A444E8EAD4BDA543D1FD7B6A0E7DC/", back=CARD_BACK_URLS.event },
  team_rocket = { name="Team Rocket", front="https://steamusercontent-a.akamaihd.net/ugc/16580675482551270305/3F397143702BA7F1768ACEFA8085BE177BAC8FCD/", back=CARD_BACK_URLS.event },
  fossil_discovery = { name="Fossil Discovery", front="https://steamusercontent-a.akamaihd.net/ugc/13162127032496614024/793CE1A55BB211C281D065A58805906A7C28B5C8/", back=CARD_BACK_URLS.event },
  day_care = { name="Day Care", front="https://steamusercontent-a.akamaihd.net/ugc/14671025127672324471/664A648848A4DD61D7F75997AEE6EB4F9F3EECF8/", back=CARD_BACK_URLS.event },
  trainer_battle_1 = { name="Trainer Battle (1)", front="https://steamusercontent-a.akamaihd.net/ugc/13738758650142390279/2B040F1DCC326F4438C116EEA7421A678C1E1A2A/", back=CARD_BACK_URLS.event },
  trainer_battle_2 = { name="Trainer Battle (2)", front="https://steamusercontent-a.akamaihd.net/ugc/11302069463819087467/E63F9B543F1480E5FAC65CCFFA4289F86D53FEB1/", back=CARD_BACK_URLS.event },
  roaming_legend = { name="Roaming Legend", front="https://steamusercontent-a.akamaihd.net/ugc/16869779897382015577/11068AA17A9B7C9F877FA38C256133FE9DEF8328/", back=CARD_BACK_URLS.event },
  lets_fight = { name="Let's Fight!", front="https://steamusercontent-a.akamaihd.net/ugc/13506113127439310446/A47935EAFB52AAF82B3D4A3F7B814EF4455C9895/", back=CARD_BACK_URLS.event },
  regional_traveler = { name="Regional Traveler", front="https://steamusercontent-a.akamaihd.net/ugc/12050992074004061618/C87C92287B239DD7CD7FC883C28E367916F51358/", back=CARD_BACK_URLS.event },

  -- Map Specific.
  explore_underground = { name="Explore Undergroud", front="https://steamusercontent-a.akamaihd.net/ugc/11454952311343157406/0AB5F4A5FD231E6ADF29DAB2E7B6C0D1A5FCA869/", back=CARD_BACK_URLS.event },
  max_raid_battle = { name="Max Raid Battle", front="https://steamusercontent-a.akamaihd.net/ugc/10635006920814012988/78EBE433E03DAF1C14436DA46E7F71DB9DAACB71/", back=CARD_BACK_URLS.event },
  area_zero = { name="Area Zero", front="https://steamusercontent-a.akamaihd.net/ugc/12732930275825578756/7702ADB5BCF403C954E13955CA530F3CC5029976/", back=CARD_BACK_URLS.event },
  shamouti_prophecy = { name="Shamouti Prophecy", front="https://steamusercontent-a.akamaihd.net/ugc/12176026173434913203/9EEADAFBEC84F37DF5A2D89192DA28E7AEDA8907/", back=CARD_BACK_URLS.event },
  pokestar_studios = { name="Pokéstar Studios", front="https://steamusercontent-a.akamaihd.net/ugc/15252102455902343027/499383D3225B2E24E90ADB3979A88054DDE9844B/", back=CARD_BACK_URLS.event },
  pokemon_contest = { name="Pokémon Contest", front="https://steamusercontent-a.akamaihd.net/ugc/11344146918930955387/152AC3487E99BC74B0A60178C9D2D5226FB0B609/", back=CARD_BACK_URLS.event },
  mystery_springs = { name="Mystery Springs", front="https://steamusercontent-a.akamaihd.net/ugc/9663887983854230710/EBB291788906EF6F6BC686060085F3C11E0BA94E/", back=CARD_BACK_URLS.event },
  gs_ball = { name="GS Ball", front="https://steamusercontent-a.akamaihd.net/ugc/12058208352402279056/A9D56447E75F97FE11614B20E2DF601598AC9973/", back=CARD_BACK_URLS.event },
  battle_royal_dome = { name="Battle Royal Dome", front="https://steamusercontent-a.akamaihd.net/ugc/15522905169769024111/848A6C181155124BB9ABB895E81F61F0C461EEB1/", back=CARD_BACK_URLS.event },
  horde_encounter = { name="Horde Encounter", front="https://steamusercontent-a.akamaihd.net/ugc/16333995117853438050/5F0ED1EBDF90936B75DDAC4FB517F06676FFF76B/", back=CARD_BACK_URLS.event }
}

-- Event deck used across all maps.
STANDARD_EVENT_DECK = {
  { card=EVEN_CARD_INFO.alpha_pokemon, count=3 },
  { card=EVEN_CARD_INFO.game_corner, count=3 },
  { card=EVEN_CARD_INFO.chance_card, count=5 },
  { card=EVEN_CARD_INFO.wonder_trade, count=5 },
  { card=EVEN_CARD_INFO.pick_up_item, count=8 },
  { card=EVEN_CARD_INFO.pokestop, count=8 },
  { card=EVEN_CARD_INFO.pokemon_egg, count=4 },
  { card=EVEN_CARD_INFO.rival_battle, count=6 },
  { card=EVEN_CARD_INFO.blimp_ride, count=4 },
  { card=EVEN_CARD_INFO.poke_mart, count=6 },
  { card=EVEN_CARD_INFO.pokemon_center, count=4 },
  { card=EVEN_CARD_INFO.team_rocket, count=4 },
  { card=EVEN_CARD_INFO.fossil_discovery, count=3 },
  { card=EVEN_CARD_INFO.day_care, count=3 },
  { card=EVEN_CARD_INFO.trainer_battle_1, count=4 },
  { card=EVEN_CARD_INFO.trainer_battle_2, count=6 },
  { card=EVEN_CARD_INFO.roaming_legend, count=4 },
  { card=EVEN_CARD_INFO.lets_fight, count=6 },
  { card=EVEN_CARD_INFO.regional_traveler, count=4 }
}

-- Add-ons specific to each map for the event deck.
EVENT_MAP_ADD_ONS = {
  Kanto = {},
  Johto = {
    { card=EVEN_CARD_INFO.gs_ball, count=3 }
  },
  Hoenn = {
    { card=EVEN_CARD_INFO.pokemon_contest, count=4 }
  },
  Sinnoh = {
    { card=EVEN_CARD_INFO.explore_underground, count=4 }
  },
  Unova = {
    { card=EVEN_CARD_INFO.pokestar_studios, count=4 }
  },
  Kalos = {
    { card=EVEN_CARD_INFO.horde_encounter, count=4 }
  },
  Alola = {
    { card=EVEN_CARD_INFO.battle_royal_dome, count=4 }
  },
  Galar = {
    { card=EVEN_CARD_INFO.max_raid_battle, count=4 }
  },
  Paldea = {
    { card=EVEN_CARD_INFO.area_zero, count=4 }
  },
  Ransei = {
    { card=EVEN_CARD_INFO.mystery_springs, count=4 }
  },
  Hisui = {
    -- Technially Alpha Event.
  },
  ["Orange Islands"] = {
    { card=EVEN_CARD_INFO.shamouti_prophecy, count=4 }
  }
}

-- Custom Event cards.
-- Format: { card_info, count }
CUSTOM_EVENT_CARDS = {}

-- Pokeballs deck used across all maps.
POKEBALLS_DECK = {}

-- Tera Type deck used across all maps.
TERA_TYPE_DECK = {}

-- Technical Machine deck used across all maps.
TM_DECK = {}

-- Type Enhancer deck used across all maps.
TYPE_ENHANCER_DECK = {}

-- Z-Crystals deck used across all maps.
Z_CRYSTALS_DECK = {}

-- Cards available to be gym boosters.
GYM_BOOSTERS_INFO = {
  -- Attach.
  CARD_INFO.zoom_lens,
  CARD_INFO.razor_claw,
  CARD_INFO.eviolite,
  CARD_INFO.wide_lens,
  CARD_INFO.kings_rock,
  CARD_INFO.vitamin,
  CARD_INFO.quick_claw,
  CARD_INFO.leftovers,
  CARD_INFO.berry,
  CARD_INFO.weather_rock,
  CARD_INFO.potion,

  -- Boosters.
  CARD_INFO.x_attack,
  CARD_INFO.x_defense,
  CARD_INFO.x_accuracy,
  CARD_INFO.dire_hit,
  CARD_INFO.guard_spec,
}

GYM_ONE_TIME_BOOSTERS_INFO = {
  -- Boosters.
  CARD_INFO.x_attack,
  CARD_INFO.x_defense,
  CARD_INFO.x_accuracy,
  CARD_INFO.dire_hit,
  CARD_INFO.guard_spec,
}

--------------------------------------------
-- Functions
--------------------------------------------

-- Helper function used to create a custom card.
function create_card(params)
  -- Spawn a base card. The offset helps the deck get auto-shuffled.
  local offset = 0
  if params.offset == true then
    offset = math.random(10, 45) * 0.1
  end
  local card = spawnObject(
    {
      type = "CardCustom",
      position = {params.position[1], params.position[2] + offset, params.position[3]},
      rotation = params.rotation,
      scale = CARD_SCALE,
      sound = false
    }
  )

  -- Give the base card its custom parameters.
  card.setCustomObject(
    {
      type = 0,   -- Rounded Rectangle
      face = params.card_data.front,
      back = params.card_data.back,
      sideways = false
    }
  )

  -- Name the item card.
  card.setName(params.card_data.name)

  -- Assign the tags, if applicable.
  local card_data = params.card_data
  if card_data.tags ~= nil then
    for tag_index=1, #card_data.tags do
      card.addTag(card_data.tags[tag_index])
    end
  end

  -- Return the card GUID.
  return card.getGUID()
end

-- Helper function to build a standard item card deck.
-- Arguments:
--  map
--  type (Item, Event ...)
--  position
--  rotation
function build_card_deck(params)
  -- Determine which deck we are building.
  local deck = {}
  local add_ons = {}
  local custom_cards = {}
  if params.type == "Item" then
    deck = STANDARD_ITEM_DECK
    add_ons = ITEM_DECK_MAP_ADD_ONS
    custom_cards = CUSTOM_ITEM_CARDS
  elseif params.type == "Event" then
    deck = STANDARD_EVENT_DECK
    add_ons = EVENT_MAP_ADD_ONS
    custom_cards = CUSTOM_EVENT_CARDS
  else
    print("ERROR: Unrecognized deck type: " .. tostring(params.type))
    return
  end

  -- Loop through the Item Card deck params.
  for index = 1, #deck do
    local card_data = deck[index].card

    -- We need to spawn a set count of this card.
    for card_index=1, deck[index].count do
      local card_params = copyTable(params)
      card_params.card_data = card_data
      card_params.offset = true
      create_card(card_params)
    end
  end

  -- Determine if any map-specific item cards need to be spawned.
  local map_item_cards = add_ons[params.map] or {}
  -- Loop through the Item Card map add ons.
  for index = 1, #map_item_cards do
    local map_card_data = map_item_cards[index].card

    -- We need to spawn a set count of this card.
    for card_index=1, map_item_cards[index].count do
      local card_params = copyTable(params)
      card_params.card_data = map_card_data
      card_params.offset = true
      create_card(card_params)
    end
  end

  -- Determine if any custom item cards need to be spawned.
  for index=1, #custom_cards do
    local custom_card_data = custom_cards[index].card
    print("TEMP | custom_card_data: " .. dump_table(custom_card_data))

    -- We need to spawn a set count of this card.
    for card_index=1, custom_card_data[index].count do
      local card_params = copyTable(params)
      card_params.card_data = custom_card_data
      card_params.offset = true
      create_card(card_params)
    end
  end
end

-- Helper function to get the standard item card config.
function get_item_card_config()
  return STANDARD_ITEM_DECK
end

-- Helper function to get the standard event card config.
function get_event_card_config()
  return STANDARD_EVENT_DECK
end

-- Helper function to get booster info.
function get_gym_booster_info()
  return GYM_BOOSTERS_INFO
end

-- Helper function to get booster info.
function get_one_time_gym_booster_info()
  return GYM_ONE_TIME_BOOSTERS_INFO
end

-- Helper function to print a table.
function dump_table(o)
  if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
        if type(k) ~= 'number' then k = '"'..k..'"' end
        s = s .. '['..k..'] = ' .. dump_table(v) .. ','
      end
      return s .. '} '
  else
      return tostring(o)
  end
end

function copyTable (original)
  local copy = {}
	for k, v in pairs(original) do
		if type(v) == "table" then
			v = copyTable(v)
		end
		copy[k] = v
	end
	return copy
end