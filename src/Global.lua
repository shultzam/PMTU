--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]

-- Commonly used GUIDs.
BATTLE_MANAGER_GUID = "de7152"
MODELS_BALL_GUID = "bebe24"
MAP_MANAGER_GUID = "026857"
STARTER_POKEBALL_GUID = "ec1e4b"
RIVAL_EVENT_POKEBALL_GUID = "432e69"
ROLLING_TABLE_GUIDS = { "aac333", "ea0e09" }
TYPE_CHART_GUID = "a3dfb6"

-- Pokedex Info.
GEN_1_4_POKEDEX_GUIDS = { "9adc0d", "372ed8" }
GEN_5_9_POKEDEX_GUIDS = { "48c255", "dea94b" }

-- Global Pokedex Handler GUID.
POKEDEX_HANDLER_GUID = "ea518e"

-- This basically says that if your pokedex number is less than or equal to this number here is your book and page number.
POKEDEX_PAGE_REFERENCES = {
  -- Book one.
  [9] = {book=1, page=2},
  [20] = {book=1, page=3},
  [34] = {book=1, page=4},
  [49] = {book=1, page=5},
  [63] = {book=1, page=6},
  [76] = {book=1, page=7},
  [90] = {book=1, page=8},
  [102] = {book=1, page=9},
  [116] = {book=1, page=10},
  [130] = {book=1, page=11},
  [142] = {book=1, page=12},
  [151] = {book=1, page=13},
  [166] = {book=1, page=16},
  [181] = {book=1, page=17},
  [195] = {book=1, page=18},
  [209] = {book=1, page=19},
  [222] = {book=1, page=20},
  [236] = {book=1, page=21},
  [249] = {book=1, page=22},
  [251] = {book=1, page=23},
  [263] = {book=1, page=26},
  [278] = {book=1, page=27},
  [292] = {book=1, page=28},
  [305] = {book=1, page=29},
  [317] = {book=1, page=30},
  [330] = {book=1, page=31},
  [344] = {book=1, page=32},
  [355] = {book=1, page=33},
  [368] = {book=1, page=34},
  [380] = {book=1, page=35},
  [386] = {book=1, page=36},
  [401] = {book=1, page=38},
  [413] = {book=1, page=39},
  [425] = {book=1, page=40},
  [439] = {book=1, page=41},
  [452] = {book=1, page=42},
  [466] = {book=1, page=43},
  [479] = {book=1, page=44},
  [487] = {book=1, page=45},
  [493] = {book=1, page=46},

  -- Book 2.
  [508] = {book=2, page=2},
  [523] = {book=2, page=3},
  [537] = {book=2, page=4},
  [551] = {book=2, page=5},
  [565] = {book=2, page=6},
  [579] = {book=2, page=7},
  [588] = {book=2, page=8},
  [601] = {book=2, page=9},
  [616] = {book=2, page=10},
  [631] = {book=2, page=11},
  [644] = {book=2, page=12},
  [649] = {book=2, page=13},
  [664] = {book=2, page=16},
  [678] = {book=2, page=17},
  [692] = {book=2, page=18},
  [707] = {book=2, page=19},
  [719] = {book=2, page=20},
  [721] = {book=2, page=21},
  [736] = {book=2, page=24},
  [746] = {book=2, page=25},
  [761] = {book=2, page=26},
  [775] = {book=2, page=27},
  [790] = {book=2, page=28},
  [802] = {book=2, page=29},
  [809] = {book=2, page=30},
  [821] = {book=2, page=34},
  [834] = {book=2, page=35},
  [844] = {book=2, page=36},
  [856] = {book=2, page=37},
  [864] = {book=2, page=38},
  [875] = {book=2, page=39},
  [887] = {book=2, page=40},
  [896] = {book=2, page=41},
  [905] = {book=2, page=42},
  [919] = {book=2, page=46},
  [934] = {book=2, page=47},
  [949] = {book=2, page=48},
  [964] = {book=2, page=49},
  [978] = {book=2, page=50},
  [991] = {book=2, page=51},
  [1006] = {book=2, page=52},
  [1018] = {book=2, page=53},
  [1025] = {book=2, page=54}
}

-- Current track reference.
currentTrack = 1

-- Pokeball references.
deploy_pokeballs = { "9c4411", "c988ea", "2cf16d", "986cb5", "f66036", "e46f90", "1feef7" }
customPokeballs = { "a927cf", "acd90d", "63bb92", "88b157", "8aaeef", "915bb4", "47780a" }

-- Pokeball Colours
PINK = 1
GREEN = 2
BLUE = 3
YELLOW = 4
RED = 5
LEGENDARY = 6
MEGA = 7
FOSSIL = 8

-- Player Coin Counter GUIDs for auto-increase when turns are used.
PLAYER_COIN_GUIDS = {
  Yellow = "b08b0e",
  Green = "fe0861",
  Blue = "92cb92",
  Red = "252975",
  Purple = "b15f1b",
  Orange = "68de04"
}

-- Helper for Shinies.
SHINY_RGB = {255/255, 215/255, 0/255}

-- Status Effects
BURN = 0
FREEZE = 1
PARALYSIS = 2
POISON = 3
SLEEP = 4
CONFUSE = 5

-- Gym Leader gen selects from the dropdown.
GEN_1_SELECT = "Gen I"
GEN_2_SELECT = "Gen II"
GEN_3_SELECT = "Gen III"
GEN_4_SELECT = "Gen IV"
GEN_5_SELECT = "Gen V"
GEN_6_SELECT = "Gen VI"
GEN_7_SELECT = "Gen VII"
GEN_8_SELECT = "Gen VIII"
GEN_9_SELECT = "Gen IX"
RANSEI_SELECT = "Ransei"
HISUI_SELECT = "Hisui"
ORANGE_ISLANDS_SELECT = "Orange Islands"
GEN_MATCH_SELECT = "Gen Match"
RANDOM_SELECT = "Random"
CHAOS_SELECT = "Chaos"

-- Custom Gym Leader Options.
NONE_SELECT = 0
ALLOW_SELECT = 1
ALWAYS_SELECT = 2

-- Event Rival and Map region selection.
KANTO_REGION = "Kanto"
JOHTO_REGION = "Johto"
HOENN_REGION = "Hoenn"
SINNOH_REGION = "Sinnoh"
UNOVA_REGION = "Unova"
KALOS_REGION = "Kalos"
ALOLA_REGION = "Alola"
GALAR_REGION = "Galar"
PALDEA_REGION = "Paldea"
RANSEI_REGION = "Ransei"
HISUI_REGION = "Hisui"
ORANGE_ISLANDS_REGION = "Orange Islands"

-- Setup Variables
leadersgen=1 -- NOTE: 0 = Custom
hasEnoughPokemon = true
customAndTooFewLeaders = false
randomStarters = false
filterTMs = true
useGlobalPokedex = false
battleScripting = false
aiDifficulty = 0

-- Save Data
customgen=false
eventRivalRegion = KANTO_REGION
customGymLeaderOption = NONE_SELECT
selected_map = nil

--[[ 
  NOTE: Lua cannot handle sparse arrays and, apparently, false terms can create sparse array
        behavior (see https://stackoverflow.com/a/17974661). An online interpreter suggests
        true/false is immune but something funky is going on here where *sometimes* only 
        gens 1-4 are considered enabled. ]]
selectedGens = {true,true,true,true,true,true,true,true,true}

-- Model tables and variables.
active_chips = {}
active_models = {}
models_enabled = true
global_scale = 2
spawn_delay = 0
spawn_scale = 100
shiny_chance = 6  -- Percent
force_shiny = false
tokens_checked_for_shiny = {}               -- Track tokens and their Shiny status.
shiny_pokemon_that_exist_table = {}         -- Track Pokemon and their shiny status.

-- Backgrounds. Base URL from https://steamcommunity.com/sharedfiles/filedetails/?id=2225275460 by eggdropsoap. Thanks!
BASE_BACKGROUND_URL = "https://steamusercontent-a.akamaihd.net/ugc/1616185612499157727/8ACD61011D09D6CEB62840F8D96DC96FD0000B0C/"
CUSTOM_BACKGROUND_URLS = {
  "https://steamusercontent-a.akamaihd.net/ugc/41201780382888048/33DF4F86351188C08DB0761A08BDBCAE357DD29F/",
  "https://steamusercontent-a.akamaihd.net/ugc/41201780382887428/4A8D6EC1C48FEBE54F2F1EA86A2E489C9995BC79/",
  "https://steamusercontent-a.akamaihd.net/ugc/41201780382886849/1F770CBA2C012C7106921266233897CFC2DDFF2F/",
  "https://steamusercontent-a.akamaihd.net/ugc/41201780382886369/4A962DE1769F5DD1862C2F8FE0CA4D689A3375E5/"
}

-- Determines if we use a random Pokemon themed background.
pokeBackground = false

-- Pokemon effects variables and constants. Looping Effects are instant and Trigger Effects take some time.
EFFECTS_POKEBALL_GUID = "5ce1b1"
SHINY_TRIGGER_INDEX = 11
SHINY_LOOP_INDEX = 3

local effects_type_index = {
  shiny = 1,
}

-- Funky music variables. Most remix tracks were created by GlitchxCity.
original_music_enabled = true
remix_music_enabled = false

-- The current route playlist.
route_playlist = {}

original_route_tracks =
{
  { url = "http://cloud-3.steamusercontent.com/ugc/1023948871898689460/46D48965B1EEDADAB14C15184FCDB41C9998C83D/", title = "Route Music 1" },
  { url = "http://cloud-3.steamusercontent.com/ugc/1023948871898697980/2D46041C40896534AC54D157FC6C3CAC1F00A7E9/", title = "Route Music 2" },
  { url = "http://cloud-3.steamusercontent.com/ugc/1023948871898696675/0CC89B7B48CAF248149CF2DE43DADBC1FDD260E2/", title = "Route Music 3" },
  { url = "http://cloud-3.steamusercontent.com/ugc/1023948871898694456/A95CDF7833368368BFB8EDCDB6E77E19785F3B7F/", title = "Route Music 4" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738072713830665/51AFCA6A1D2F74287F7065D153AE4893CFE65EE4/", title = "Route 10" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738072713833558/A53A7FA0DDCE1D5B076B323E61F603370D958414/", title = "Route 209" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738072713839101/D00A83FF04F6E8E7EC93A284D1264B3A88618721/", title = "Route 201" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738072713842461/880B9A4E1D19545259DC3B3A27EE29D8EADB0047/", title = "Route 101" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738072713845152/8C7AF47689CE1827BF64C68D710A231B4A943F33/", title = "Route 216" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2468621052563305438/9B9E73DCD8DF26F6B187C8F338E4D1286222AC61/", title = "Route 203" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2468621052563478724/47F188A77141A2ECF0A6B93682CC2619ABAA1551/", title = "Eterna Forest" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282318941/A7908CA7C7F1DA20B2C897A69DE0CD5B7845CC62/", title = "Reversal Mountain (White)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282318785/448B30319063B8098099653B720196CEC3C8FE1E/", title = "Bicycle (Black and White)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282318728/7C7EFBAE9368F9E02510C5A15409E425E812A508/", title = "Route 10 (Black and White)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248284219279/BD337E72328BABDBF6E19F95C4C2200994CEAF91/", title = "Laverre City" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248284219225/37488A1B90D15637A1E0D3D91284993738967C99/", title = "Snowbelle City" },
}

remix_route_tracks =
{
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028803851/B22ED35F5A56BEA363EC533F15644DD7E0374638/", title = "Victory Road (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028803230/A4A5840B1A37900C68C985CA1521B4CED2366044/", title = "Route 113 (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2468621052563295753/F290CFB65047AA9D078CA6A20879C7CDB03FB781/", title = "Eterna Forest (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2468621052563298173/F7FEAAE3F5A0F2FCF535CE4CDF4AB12C2F7EBA11/", title = "Blueberry Academy (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028802590/99A2EF8299E6FE2DE426B61942EB407780A33FF6/", title = "Route 111 (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028802137/77BDABC8614017705FAD5AAEF5C96D15E561AA8B/", title = "Route 12 (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028801573/7FE76872DEDF6387994FE1ED00507AE6F1DF9FA5/", title = "Route 47 (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028801082/87616A87332EEA03D724CC620EB9E8248C6B0E62/", title = "Route 209 (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028800688/408BCF30B46E9BF7F98B45095DB123401484A2AD/", title = "Route 201 (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028800156/2F35C1E183D28E7CE2E177B6BFD34B01667403F8/", title = "Route 10 (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028799577/FE8FC0E512097D4E2FC1F99E4D186219D7C08AD2/", title = "Route 19 (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248284221212/074AAB98BFB7E1373B56E8E03DC5F3FA388B60AC/", title = "Laverre City (Remix)" }
}

team_rocket_playlist = {}

original_team_rocket_tracks =
{
  { url = "http://cloud-3.steamusercontent.com/ugc/2465233915448769574/09A09106156072F227DB6D44211395F1545DFB9C/", title = "Team Rocket Battle Music" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738708351494466/E735E7793EFD0FB37790D2B6E394FAB5DBBE9419/", title = "Rocket Powered Disaster 20" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738708351495962/FCA4C8DFB2639C2F56347C3B5968881ACF22066B/", title = "Rocket Powered Disaster" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2468621052563292855/5D79017D7825BF0B9B8F30E581FF42096EDFA1DB/", title = "Victory Road (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2468621052563309229/7B364DC85C8BFD0F9F29AAFCD79D463ED1E7E9CF/", title = "Team Flare" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282343538/794594C7C457579B103ED776DA4FC44E842E3BA2/", title = "Team Aqua/Magma" }
}

remix_team_rocket_tracks =
{

}

battle_playlist = {}

original_battle_tracks =
{
  { url = "http://cloud-3.steamusercontent.com/ugc/1023949407635181294/DF75C7F7429A20B290E9C39CA1A391F5217CB3BB/", title = "Gym Battle Music 1" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738708351469017/83C3A3A8906183F09ED5F3FBED856E3DE94BF847/", title = "A Formidable Opponent Appears"},
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738708351472196/9F8A243CFFDF2783A35AF2B8E34CDDAF90BCE76C/", title = "Gym Battle Music - Track 14"},
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738708351474956/24853183DAFC85171508106801F146DAFF5FD9A7/", title = "Gym Battle Music - Scramble" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738708351479148/191BEBD2158D686534CD2CFC3D75B10E88FB2994/", title = "Gym Battle Music - Absolute Death" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738708351481972/9CFAC33E67467F93004DEAA08084922D5BBEEE7A/", title = "Gym Battle Music - Kanto" },
  { url = "http://cloud-3.steamusercontent.com/ugc/2469738708351490133/C15770511BBAEE88551E1C332FCD8A26A4F543EB/", title = "Gym Battle Music - Johto" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282343922/509FBEE76825E2E3164936C40C173DFD77ED4EB4/", title = "Gym Battle Music (OmegaRuby and AlphaSapphire)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282344056/33D937CB5467B370BEC65BA80F637DC938D42446/", title = "Trainer Battle Music (OmegaRuby and AlphaSapphire)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282344206/DF4C932201A7F23074F5C100DFBF6A8087F57793/", title = "Wild Battle Music (OmegaRuby and AlphaSapphire)" }
}

remix_battle_tracks =
{
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028870838/2ED898438B7BB0C8A5A4D2FE28AEC3AE7C97FAD2/", title = "Marnie Battle (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028870236/21D89ADDAEBBAD59826034DB8DF6E9B591EE9ED4/", title = "Gym Leader Battle (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028869777/4E36D699DE8AC0A123C587F5F335F48B03E351C7/", title = "Chariman Rose Battle (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028869358/A1810B013A118E3D91C22E5C3351D45E57839C69/", title = "Wild Battle (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028868963/B8C4D01C5DDAA157C84D98A5F3F956D8BA629CF7/", title = "Crescent Battle (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028868419/62544351CC026B12CE6502471C4BA741FD16B04A/", title = "Lake Trio Battle (Remix)" }
}

rival_playlist = {}

original_rival_tracks =
{
  { url = "http://cloud-3.steamusercontent.com/ugc/2465233915448687664/638298CFD4041533322CB8E537B98923EAA776EE/", title = "Cynthia Battle Music" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282343318/7759E03CBB042F165BD3ECD988F5F612A6ABFB30/", title = "Rival Battle (Brilliant Diamond, Shining Pearl)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282343362/78CEB36EC13DD8A5B719A35F0A6E4F38BA2E3E43/", title = "Rival Battle (HeartGold and SoulSilver)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282343415/AE2DA558D772899B49BDDC4BA8D0223EA6BE4F45/", title = "Rival Battle (OmegaRuby and AlphaSapphire)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282343637/216795CF0A5040EE1766D252B93ED7C8CFCB0D53/", title = "Champion Battle (OmegaRuby and AlphaSapphire)" }
}

remix_rival_tracks =
{
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028911521/6139DD8F3476B4A76B6B12147527CAE049ECE117/", title = "Hop Battle (Remix)" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802345028911129/145437929E36475541505FDDE1EB0C3A99F6AF16/", title = "Hoenn Rival Battle (Remix)" }
}

elite_4_playlist = {}

original_elite_4_tracks =
{
  { url = "http://cloud-3.steamusercontent.com/ugc/1023948871898724461/766C5BF1EB28C474D2366F8223F98C5F083770D0/", title = "Elite 4 Battle Music" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/2380802651775268813/AA1A5E098A632268F8CAB404F79C913868FF6A72/", title = "XY Elite 4 Battle Music" },
  { url = "https://steamusercontent-a.akamaihd.net/ugc/41199248282343814/881FBC7D6F37F46F90A147921B6EF43C82F6133D/", title = "Elite 4 Battle Music (OmegaRuby and AlphaSapphire)" }
}

remix_elite_4_tracks =
{
  
}

-- Supported camera locations.
ARENA = 0
FIGURE = 1
RACK = 2

-- Scripted House Rules.
HR_dual_type_effectiveness = false
HR_immunities = false
HR_gym_leader_boosters = false
HR_hp_rule_2 = false

-- Helpers.
HELPER_remove_non_player_items = false

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Custom data fields
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--@Thanathoum
--ClonedPokemonData table.
clonedPokemonData = 
{

}

--@Thanathoum
-- Insert cloned pokemon into the clonedPokemonData table.
function insertClonedPokemonData(clonedPoke)
	table.insert(clonedPokemonData,clonedPoke)
end

--@Thanathoum
function add_cloned_chips_to_active_chips_by_GUID(params)
  -- Get the chip by its GUID.
  params.data.chip = getObjectFromGUID(params.data.chip_GUID)
  
  -- Wait until the <whatever> token is resting.
  Wait.condition(
    function()
      params.data.model = get_model_guid_on_top(params.data)  
    end,
    function() -- Condition function
      return params.data.chip ~= nil and params.data.chip.resting and get_model_guid_on_top(params.data) ~= nil
    end,
    3
  )
  -- Insert the data into the table.  
  active_chips[params.guid] = params.data
  -- Return the created before flag. This helps the caller call check_for_spawn_or_despawn() correctly. (It is gross, yes.)
  return params.data.base.created_before
end

-----------------------------------------------------------------------------------------
-- Custom Gym Data
--
-- You no longer need to create a complete suite of Gym Leaders to have your custom Gym Leaders used!
-- Just create what you want and the available Gym Leaders, Rivals, etc. will be used to fill in the
-- rest.
--
-- In order for this data to be utilizied, you must choose the appropriate Custom Gym Leader option 
-- during setup. Here are the options:
--  * None       - Default. Your custom gym leaders will not be considered when choosing Gym Leaders,
--                 even if Random Gym Leaders are chosen.
--  * Allow      - Custom Gym Leaders will be considered when the game is choosing Gym Leaders. This
--                 means that if you chose Gen II Gym Leaders, your Gym Leader has a 1/X chance of 
--                 being chosen when the game selects Gym Leaders.
--  * Always Use - Custom Gym Leaders will be considered first. If there is one custom available for
--                 a aprticular tier (Gym II, Rival, Team Rocket, etc.) it will always be chosen. If
--                 You made multiple for a particular tier, as many will be chosen as needed before
--                 using default Gym Leaders for the chosen Gen of Gym Leaders. For example, if you
--                 made 2 Rivals then both would be chosen at Setup and then the third Rival would
--                 be chosen based on the selcted Gen of Gym Leaders (Gen Whatever or Random).
--
-- RECOMMENDATION: To properly edit this field do the following:
--   1- This only works at setup. So first, save your game.
--   2- In the TTS script editor: Copy the entirety of this script and paste it into a text editor
--       of your choice (Npp or VS Code offer syntax highlighting which helps prevent silly mistakes)
--   3- In the text editor: make your changes as needed
--   OPTIONAL: Save off your customGymData field into a text file on your Desktop so you don't have 
--             to recreate it in the future
--   4- In the text editor: CTRL+A -> CTRL+C to copy the entirety of this script with your changes
--   5- In the TTS script editor: CTRL+A -> CTRL+V to overwrite the entirety of the old script with
--       your new version
--   6- In the TTS script editor: at the top-left of the window, click Save & Play.
--   7- Now, move your Gym Leader to their appropriate Pokeball (Custom Gym Leaders, Custom Elite 4, etc.)
--   8- Save your game *again*.
--   9- Start the game whenever you are ready. Ensure you choose the appropriate Custom Gym Leader option.
--   10-You did it. :)
--
-- MODEL NOTES:
--   1- To use a custom model:
--      * get the Model GUID and add it to the custom Gym data below
--         - right-click the custom model > Scripting > Copy GUID to clipboard
--      * prior to starting the game, put the model in the models Pokeball (tiny, black, top-left of the table)
--   2- To use an existing model: look for the model_GUID field in the existing Pokemon data. I suggest you copy any effects and offsets as well.
--
-- LEADER POKEMON NOTES:
--   1- By default, the first type is the only type that matters for opponent effectiveness. The secondary type is only considered when using Dual Type Effectiveness.
--      Your power values for existing moves should match the moveData values (STAB not included). New moves? Go wild.
--   2- STAB calculations, though not perfect, are calulated using both types (dumb, I know). But it really only affects the inital counter values on the table.

-- gymTier field values:
--    gyms     : 1-8
--    elite4   : 9
--    champion : 10
--    TR       : 11
--    Titan    : 12
--
-- Any questions, ask us in Discord: https://discord.gg/kU9XD7tXAV
customGymData =
{
  -- Champion Example.
  {
    guid = "5aae38",          -- Card GUID. (Host: right-click the card > Scripting > Copy GUID to clipboard)
    trainerName = "Kyruya",   -- Name of the trainer.
    gen="custom",           -- Gen field. Always use "custom".
    gymTier = 10,             -- Gym Tier. See the comment above this table for valid values.
    pokemon = {               -- The leader's Pokemon. NOTE: Unique moves also need to be added to customMoveData. CTRL+F to see if the move is already in the moveData table.
      { name="Noivern",   level=9,  types={ "Dragon" },          moves={ "Flamethrower", "Hurricane", "Draco Meteor" }, model_GUID="212e94", spawn_effect="Status Attack" },
      { name="Cramorant", level=10, types={ "Electric", "Ice" }, moves={ "Gulping Missle", "Ice Beam", "Surf" },        model_GUID="2b1b24"  } }
  }
}

customTitanData = {
  
}

-----------------------------------------------------------------------------------------
-- Custom Move Data
--
-- RECOMMENDATION: To properly edit this field do the following:
--   1- Save your game
--   2- In the TTS script editor: Copy the entirety of this script and paste it into a text editor
--       of your choice (Npp or VS Code offer syntax highlighting which helps prevent silly mistakes)
--   3- In the text editor: make your changes as needed
--   OPTIONAL: Save off your customMoveData field into a text file on your Desktop so you don't have 
--             to recreate it in the future
--   4- In the text editor: CTRL+A -> CTRL+C to copy the entirety of this script with your changes
--   5- In the TTS script editor: CTRL+A -> CTRL+V to overwrite the entirety of the old script with
--       your new version
--   6- In the TTS script editor: at the top-left of the window, click Save & Play. You did it. :)
--
-- NOTES: 
--   1- The dice field is mandatory but does not affect the game in its current state
--   2- The STAB field is mandatory but only affects the initial counter values on the table
--   3- The effects field is optional and does not affect the game in its current state
--   4- The name, power and type fields are actually important. If you want your move to behave 
--       appropriately with the Battle Arena, fill them out in a case-sensitive matter with care.
--   5- If you are entering moves here, they should not share the same name with an existing move.
--       The move logic searches through the base game moves first and if the move names are identical
--       then the custom version will never get seen.
--
-- Any questions, ask us in Discord: https://discord.gg/kU9XD7tXAV
customMoveData = 
{
  -- Example moves.
  {name="Gulping Missle",   power=1,   type="Electric", dice=6, STAB=true,     effects={{name="Paralyze", target="Enemy"}} },
}

-----------------------------------------------------------------------------------------
-- Custom Pokemon Data
--
-- In order for this data to be utilizied, you must choose the appropriate Pokemon Generation option 
-- during setup. When choosing your Gens of Pokemon, ensure Custom is also toggled.
--
-- RECOMMENDATION: To properly edit this field do the following:
--   1- This only works at setup. So first, save your game.
--   2- In the TTS script editor: Copy the entirety of this script and paste it into a text editor
--       of your choice (Npp or VS Code offer syntax highlighting which helps prevent silly mistakes)
--   3- In the text editor: make your changes as needed
--   OPTIONAL: Save off your customPokemonData field into a text file on your Desktop so you don't have 
--             to recreate it in the future
--   4- In the text editor: CTRL+A -> CTRL+C to copy the entirety of this script with your changes
--   5- In the TTS script editor: CTRL+A -> CTRL+V to overwrite the entirety of the old script with
--       your new version
--   6- In the TTS script editor: at the top-left of the window, click Save & Play.
--   7- If new: x Apply the Pokemon Token tag to each of your tokens by right-clicking, click Tags and 
--                illuminate the Pokemon Token tag in the list.
--              x Click the size Gizmo and scale your token to {1.4, 1, 1.4}.
--              x Right-click each of your new pokemon tokens and click Save Object. Now, if you respawn 
--                these tokens from saved objects in the future they will have the same GUID.
--   8- Back in the game, it is RECOMMENDED to apply the tag of "Pokemon Token" to your token to get some
--      of this mod's built-in functionality to work for your token. Not mandatory though.
--   9 -Now, move your Custom Tokens to their appropriate Pokeballs (Custom Pink, Green, Yellow, etc.),
--      NOTE: If they are an evo token, they must go in the evo Pokeball for their color.
--   10-Save your game *again*.
--   11-Start the game whenever you are ready. Ensure Custom Pokemon are enabled in the setup window.
--   12-You did it. :)
--
-- MODEL NOTES:
--   1- To use a custom model:
--      * get the Model GUID and add it to the custom Gym data below
--         - right-click the custom model > Scripting > Copy GUID to clipboard
--      * prior to starting the game, put the model in the models Pokeball (tiny, black, top-left of the table)
--   2- To use an existing model: look for the model_GUID field in the existing Pokemon data. I suggest you copy any effects and offsets as well.
--
-- DATA NOTES:
--   1- Pokemon evolutions require duplicate tokens - one for catching as a wild and one or more for evolution purposes. There are examples all 
--       throughout the codebase that you can reference. Shown below is how Bulbasaur knows it evolves into Ivysaur and how Ivysaur evolves into 
--       to which tokens are available to grab. The duplicate GUIDs are mandatory because there can be multiple Venesaurs at the same time. 
--       Venusaur. Note the duplicate guids fields as they give reference  For example, the first Venasaur could be caught on a red tile. In 
--       addition, an Ivysaur could be caught and evolve into the second Venasaur. Finally, a Trainer could start with Bulbasaur and evolve it 
--       all the way to Venasaur - making the third concurrent Venasaur on the table. This is how it do :).
--       Example evolving code:
--       { name = "Bulbasaur",   level = 1, types = { "Grass", "Poison" },    moves = { "Vine Whip", "Tackle" },          guids = { "d79fc7" },                    evoData = { { cost = 2, ball = BLUE, gen = 1, guids = { "8d43e0" } } } },
--       { name = "Ivysaur",     level = 3, types = { "Grass", "Poison" },    moves = { "Poison Powder", "Razor Leaf" },  guids = { "60bde3", "8d43e0" },          evoData = { { cost = 2, ball = RED, gen = 1, guids = { "85a0be", "6e6869" } } } },
--       { name = "Venusaur",    level = 5, types = { "Grass", "Poison" },    moves = { "Double-Edge", "Solar Beam" },    guids = { "e69464", "85a0be", "6e6869" },evoData = { { cost = "Mega", ball = MEGA, gen = 1, cycle = true, guids = { "c941db", "305e33" } }, 
--                                                                                                                                                                             { cost = "GMax", ball = MEGA, gen = 1, cycle = true, guids = { "0fdf45", "55e05e" } } },
--       As you can see, Bulbasaur has one entry called evoData that describes the Ivysaur that it can evolve to. Only the evo token (8d43e0) for 
--       Ivysaur is specified in the evoData, not the wild token (60bde3). For simplicty, in a guids field, the left GUID will be the wild, and after 
--       that are for evo GUIDs. Continuing on, the Ivysaur lists two GUIDs in its evoData (85a0be & 6e6869) that correspond to the evo GUIDs of Venusaur. 
--       Venasaur is interesting because it can evolve into two different variants (the Mega and GMax variants). These evolutions are special and are 
--       identified by the "cost" field being set to "Mega" or "GMax" as appropriate and also the presence of the cycle=true field. This allows Mega and 
--       Gmax Pokemon to devolve.
--
--       Aside from evolution info, the level field identifies its base level, types and moves are self-explanatory. For models, use the model_GUID field.
--
-- Any questions, ask us in Discord: https://discord.gg/kU9XD7tXAV
customPokemonData =
{
  { name="Ash's Pikachu", level=1, types={ "Electric" }, moves={ "Electroweb", "Iron Tail" }, guids={ "77331c", "d7835d" }, model_GUID="130d76" },
  { name="Joey's Rattata", level=1, types={ "Normal" }, moves={ "Tail Whip", "Tackle" }, guids={ "1701f9" }, model_GUID="dd6f20" },
  { name="Mindy's Haunter", level=4, types={ "Ghost", "Poison" }, moves={ "Mean Look", "Hex" }, guids={ "1a4360" }, model_GUID="13b866" },
  { name="Meme Token", level=math.random(-5,9), types={ "Rock", "Steel" }, moves={ "Mimic", "Dig" }, guids={ "c38ea6" }, model_GUID="a96b7f" }
}

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--  DATA
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Add Pokemon here that are always included regardless of gens configured at the start of the game.
boardPokemonData = 
{
  -- Gen I. Orange Islands also uses one of the Snorlax.
  { name="Snorlax",     level=4, types={ "Normal" },          moves={ "Body Slam", "Yawn" },         guids={ "d1ee94", "d4b8d9" },          evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "318baa", "cc9678" } } }, model_GUID="829f1b", spawn_effect="Physical Attack", custom_scale=0.8 },
  -- Gen II only.
  { name="Red Gyarados",level=5, types={ "Water", "Flying" }, moves={ "Dragon Rage", "Waterfall" },  guids={ "390ee2" }, evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "bc99f5" } } }, model_GUID="628aa3", custom_scale=0.75 },
  { name="Sudowoodo",   level=3, types={ "Rock" },            moves={ "Rock Tomb", "Mimic" },        guids={ "315879" }, model_GUID="b0f59f", spawn_effect="Physical Attack" },
  -- Orange Islands only.
  { name="Crystal Onix",level=2, types={ "Ice" },             moves={ "Rock Throw", "Earthquake" },  guids={ "6e4c5a" }, model_GUID="cc256d", custom_scale=0.7, offset={x=0,y=0,z=0.3} },
}

-- These are pokemon that live in the Fossil Pokeball for use during the fossil event card.
fossilPokeballPokemonData =
{
  -- Gen I.
  { name="Omanyte",     level=4, types={ "Rock", "Water" },      moves={ "Spike Cannon", "Brine" },        guids={ "a7a570" }, evoData={ { cost=2, ball=FOSSIL, gen=1, guids={ "78f088" }, model_GUID="78ec0f" } }, model_GUID="9a4753" },
  { name="Omastar",     level=6, types={ "Rock", "Water" },      moves={ "Rock Blast", "Hydro Pump" },     guids={ "8bb73e", "78f088" }, model_GUID="78ec0f" },
  { name="Kabuto",      level=4, types={ "Rock", "Water" },      moves={ "Leech Life", "Aqua Jet" },       guids={ "60f75b" }, evoData={ { cost=2, ball=FOSSIL, gen=1, guids={ "cd2b61" }, model_GUID="bd4880" } }, model_GUID="f2a8a6" },
  { name="Kabutops",    level=6, types={ "Rock", "Water" },      moves={ "Hydro Pump", "Slash" },          guids={ "03f2a5", "cd2b61" }, model_GUID="bd4880" },
  { name="Aerodactyl",  level=4, types={ "Rock", "Flying" },     moves={ "Rock Slide", "Wing Attack" },    guids={ "90e141" }, evoData={ { cost="Mega", ball=FOSSIL, gen=1, cycle=true, guids={ "01108b" }, model_GUID="411f15", spawn_effect="Mega Evolve" } }, model_GUID="ba21f7" },
  { name="Mega Aerodactyl", level=5, types={ "Rock", "Flying" }, moves={ "Ancient Power", "Iron Head" },   guids={ "01108b" }, evoData={ { cost=0, ball=FOSSIL, gen=1, cycle=true, guids={ "90e141" } } }, model_GUID="411f15", spawn_effect="Mega Evolve" },
  
  -- Gen III.
  { name="Lileep",      level=2, types={ "Rock", "Grass" },      moves={ "Ingrain", "Brine" },             guids={ "d9cc5c" }, evoData={ { cost=3, ball=FOSSIL, gen=3, guids={ "5b2008" }, model_GUID="a8c907" } }, model_GUID="77fdf5" },
  { name="Cradily",     level=5, types={ "Rock", "Grass" },      moves={ "Ancient Power", "Giga Drain" },  guids={ "dcaf7c", "5b2008" }, model_GUID="a8c907" },
  { name="Anorith",     level=2, types={ "Rock", "Bug" },        moves={ "Rock Blast", "Crush Claw" },     guids={ "25cda8" }, evoData={ { cost=3, ball=FOSSIL, gen=3, guids={ "ed394a" }, model_GUID="812ce0" } }, model_GUID="5b5bf7" },
  { name="Armaldo",     level=5, types={ "Rock", "Bug" },        moves={ "Ancient Power", "Fury Cutter" }, guids={ "1e3aa3", "ed394a" }, model_GUID="812ce0" },
  
  -- Gen IV.
  { name="Cranidos",    level=2, types={ "Rock" },               moves={ "Assurance", "Headbutt" },        guids={ "2f9039" }, evoData={ { cost=2, ball=FOSSIL, gen=4, guids={ "8dcea0" }, model_GUID="163e32", spawn_effect="Physical Attack" } }, model_GUID="c3204c", spawn_effect="Physical Attack" },
  { name="Rampardos",   level=4, types={ "Rock" },               moves={ "Zen Headbutt", "Head Smash" },   guids={ "1df34d", "8dcea0" }, model_GUID="163e32", spawn_effect="Physical Attack" },
  { name="Shieldon",    level=2, types={ "Rock", "Steel" },      moves={ "Metal Sound", "Protect" },       guids={ "5ea701" }, evoData={ { cost=2, ball=FOSSIL, gen=4, guids={ "23917a" }, model_GUID="9d8d6d" } }, model_GUID="1d508b" },
  { name="Bastiodon",   level=4, types={ "Rock", "Steel" },      moves={ "Wide Guard", "Iron Head" },      guids={ "6acab9", "23917a" }, model_GUID="9d8d6d", custom_scale=0.7 },
  
  -- Gen V.
  { name="Tirtouga",    level=4, types={ "Water", "Rock" },      moves={ "Water Gun", "Protect" },         guids={ "0c4e88" }, evoData={ { cost=2, ball=FOSSIL, gen=5, guids={ "471602" }, model_GUID="212e44" } }, model_GUID="8bbd45" },
  { name="Carracosta",  level=6, types={ "Water", "Rock" },      moves={ "Wide Guard", "Brine" },          guids={ "b1ab90", "471602" }, model_GUID="212e44" },
  { name="Archen",      level=4, types={ "Rock", "Flying" },     moves={ "Dragon Claw", "Rock Throw" },    guids={ "03a4fe" }, evoData={ { cost=2, ball=FOSSIL, gen=5, guids={ "8eb336" }, model_GUID="e52be5", spawn_effect="Physical Attack" } }, model_GUID="fe5542" },
  { name="Archeops",    level=6, types={ "Rock", "Flying" },     moves={ "Rock Slide", "Pluck" },          guids={ "e5d4b8", "8eb336" }, model_GUID="e52be5", spawn_effect="Physical Attack" },
  
  -- Gen VI.
  { name="Tyrunt",      level=4, types={ "Rock", "Dragon" },     moves={ "Stomp", "Bite" },                guids={ "82c698" }, evoData={ { cost=2, ball=FOSSIL, gen=6, guids={ "3b26e9" }, model_GUID="e8c337", spawn_effect="Status Attack" } }, model_GUID="f6e97c" },
  { name="Tyrantrum",   level=6, types={ "Rock", "Dragon" },     moves={ "Head Smash", "Dragon Claw" },    guids={ "57cab1", "3b26e9" }, model_GUID="e8c337", spawn_effect="Status Attack" },
  { name="Amaura",      level=4, types={ "Rock", "Ice" },        moves={ "Light Screen", "Icy Wind" },     guids={ "2f33d9" }, evoData={ { cost=2, ball=FOSSIL, gen=6, guids={ "8ae857" }, model_GUID="17494e", spawn_effect="Physical Attack" } }, model_GUID="73d866" },
  { name="Aurorus",     level=6, types={ "Rock", "Ice" },        moves={ "Ancient Power", "Aurora Beam" }, guids={ "08a1a8", "8ae857" }, model_GUID="17494e", spawn_effect="Physical Attack" },
  
  -- Gen VIII.
  { name="Dracozolt",   level=4, types={ "Electric", "Dragon" }, moves={ "Ancient Power", "Bolt Beak" },   guids={ "615501" }, model_GUID="37afb9", custom_scale=0.8 },
  { name="Arctozolt",   level=4, types={ "Electric", "Ice" },    moves={ "Ancient Power", "Icicle Crash" }, guids={ "d053c4" }, model_GUID="58dc46" }, 
  { name="Dracovish",   level=4, types={ "Water", "Dragon" },    moves={ "Ancient Power", "Dragon Breath" }, guids={ "b72461" }, model_GUID="8f7c9c" }, 
  { name="Arctovish",   level=4, types={ "Water", "Ice" },       moves={ "Ancient Power", "Fishious Rend" },guids={ "7f0a8a" }, model_GUID="d1ae37" }
}

-- These are the Pokemon that live in the Paradox Pokeball for use on Paldea.
paradoxPokeballPokemonData = 
{
  -- Ancient.
  { name="Great Tusk",   level=5, types={ "Ground", "Fighting" }, moves={ "Brick Break", "Bulldoze" }, guids={ "64874d" }, model_GUID="177723", custom_scale=0.35, offset={x=0, y=0.05, z=-0.08} },
  { name="Scream Tail",  level=3, types={ "Fairy", "Psychic" }, moves={ "Play Rough", "Psychic Fangs" }, guids={ "122fb1" }, model_GUID="bba12d", offset={x=0, y=0.09, z=0} }, 
  { name="Brute Bonnet", level=4, types={ "Grass", "Dark" }, moves={ "Sucker Punch", "Mega Drain" }, guids={ "394425" }, model_GUID="dcbff5", offset={x=0, y=0.12, z=0} }, 
  { name="Flutter Mane", level=4, types={ "Ghost", "Fairy" }, moves={ "Phantom Force", "Moonblast" }, guids={ "53b88e" }, model_GUID="30ce60" },
  { name="Slither Wing", level=6, types={ "Bug", "Fighting" }, moves={ "Superpower", "Leech Life" }, guids={ "ec4de3" }, model_GUID="fabd96", offset={x=0, y=0.5, z=0} }, 
  { name="Sandy Shocks", level=4, types={ "Electric", "Ground" }, moves={ "Earth Power", "Discharge" }, guids={ "4acd48" }, model_GUID="08d57d", offset={x=0, y=0.07, z=0} }, 
  { name="Roaring Moon", level=7, types={ "Dragon", "Dark" }, moves={ "Breaking Swipe", "Jaw Lock" }, guids={ "06d5d6" }, model_GUID="320e8f", offset={x=0, y=1.25, z=0} },
  { name="Koraidon",     level=7, types={ "Fighting", "Dragon" }, moves={ "Collision Course", "Outrage" }, guids={ "a9fad1" }, model_GUID="6a32f0", custom_scale=0.7, offset={x=0, y=0.02, z=-0.03} }, 
  { name="Walking Wake", level=7, types={ "Water", "Dragon" }, moves={ "Dragon Breath", "Hydro Steam" }, guids={ "e3982a" }, model_GUID="0a66e3", offset={x=0, y=0.4, z=0} },
  { name="Gouging Fire", level=7, types={ "Fire", "Dragon" }, moves={ "Burning Bulwark", "Dragon Claw" }, guids={ "11b207" }, model_GUID="f1f02c", custom_scale=0.35, offset={x=0,y=0,z=-0.1} },
  { name="Raging Bolt",  level=7, types={ "Electric", "Dragon" }, moves={ "Dragon Hammer", "Thunderclap" }, guids={ "48105b" }, model_GUID="ce3c6a", custom_scale=0.45, offset={x=0, y=0, z=-0.06} },

  -- Future.
  { name="Iron Treads",  level=5, types={ "Ground", "Steel" }, moves={ "Steel Roller", "Earthquake" }, guids={ "c7d0e9" }, model_GUID="128a66", offset={x=0, y=0.08, z=0} }, 
  { name="Iron Bundle",  level=3, types={ "Ice", "Water" }, moves={ "Freeze-Dry", "Flip Turn" }, guids={ "41d67e" }, model_GUID="8bb12e" },
  { name="Iron Hands",   level=4, types={ "Fighting", "Electric" }, moves={ "Thunder Punch", "Force Palm" }, guids={ "406fbb" }, model_GUID="59126c" }, 
  { name="Iron Jugulis", level=7, types={ "Dark", "Flying" }, moves={ "Dark Pulse", "Air Cutter" }, guids={ "f721a1" }, model_GUID="25aa1c" },
  { name="Iron Moth",    level=6, types={ "Fire", "Poison" }, moves={ "Sludge Wave", "Fiery Dance" }, guids={ "7d96aa" }, model_GUID="70cd78" }, 
  { name="Iron Thorns",  level=7, types={ "Rock", "Electric" }, moves={ "Thunder Fang", "Rock Slide" }, guids={ "887d82" }, model_GUID="52eb2e" }, 
  { name="Iron Valiant", level=5, types={ "Fairy", "Fighting" }, moves={ "Close Combat", "Spirit Break" }, guids={ "487286" }, model_GUID="2a757a" },
  { name="Miraidon",     level=7, types={ "Electric", "Dragon" }, moves={ "Electro Drift", "Outrage" }, guids={ "7031f7" }, model_GUID="01aed0" },
  { name="Iron Leaves",  level=7, types={ "Grass", "Psychic" }, moves={ "Solar Blade", "Psyblade" }, guids={ "0402c2" }, model_GUID="1a6521", offset={x=0, y=0.08, z=0} },
  { name="Iron Boulder", level=7, types={ "Rock", "Psychic" }, moves={ "Mighty Cleave", "Psycho Cut" }, guids={ "400403" }, model_GUID="9536d0", custom_scale=0.8, offset={x=0, y=0.05, z=-0.03} }, 
  { name="Iron Crown",   level=7, types={ "Steel", "Psychic" }, moves={ "Tachyon Cutter", "Future Sight" }, guids={ "1b5e29" }, model_GUID="78a46a", offset={x=0, y=0.05, z=-0.03} },
}

pokestarStudiosData = {
  { name="UFO",          level=0, types={ "Flying", "Electric" }, moves={ "Signal Beam", "Bubble Beam" }, guids={ "2ba8e0" } },
  { name="Monica",       level=0, types={ "Normal" }, moves={ "Double Kick", "Stomp" }, guids={ "f6f091" } },
  { name="MT",           level=0, types={ "Steel" }, moves={ "Iron Head", "Spark" }, guids={ "1c5180" } },
  { name="Majin",        level=0, types={ "Dark", "Ghost" }, moves={ "Dual Chop", "Crunch" }, guids={ "8a8bd5" } },
  { name="Humanoid",     level=0, types={ "Normal" }, moves={ "Self-Destruct" }, guids={ "d724ad" } },
  { name="Brycen-Man",   level=0, types={ "Dark", "Psychic" }, moves={ "Psychic", "Ice Beam" }, guids={ "7213c7" } },
}

gen1PokemonData =
{
  -- Gen 1 1-50
  { name="Bulbasaur",   level=1, types={ "Grass", "Poison" },    moves={ "Vine Whip", "Tackle" },          guids={ "d79fc7" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "8d43e0" } } }, model_GUID="e1b027", spawn_effect="Physical Attack" },
  { name="Ivysaur",     level=3, types={ "Grass", "Poison" },    moves={ "Sleep Powder", "Take Down" },    guids={ "60bde3", "8d43e0" },          evoData={ { cost=2, ball=RED, gen=1, guids={ "85a0be", "6e6869" } } }, model_GUID="19c53c", offset={x=0, y=0.075, z=0} },
  { name="Venusaur",    level=5, types={ "Grass", "Poison" },    moves={ "Double-Edge", "Solar Beam" },    guids={ "e69464", "85a0be", "6e6869" },evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "c941db", "305e33" }, model_GUID="40331c", spawn_effect="Mega Evolve" }, 
                                                                                                                                                                        { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "0fdf45", "55e05e" } } }, 
                                                                                                                                                  model_GUID="452ac8", spawn_effect="Physical Attack", custom_scale=0.6, offset={x=0,y=0,z=-0.1} },
  { name="Charmander",  level=1, types={ "Fire" },               moves={ "Ember", "Scratch" },             guids={ "28e8ab" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "7c5381" } } }, model_GUID="3226f2" },
  { name="Charmeleon",  level=3, types={ "Fire" },               moves={ "Fire Spin", "Slash" },           guids={ "e40822", "7c5381" },          evoData={ { cost=2, ball=RED, gen=1, guids={ "6a3112", "8b9dab" } } }, model_GUID="2bf00e" },
  { name="Charizard",   level=5, types={ "Fire", "Flying" },     moves={ "Flamethrower", "Air Slash" },    guids={ "1c82ed", "6a3112", "8b9dab" },evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "79685a", "f0024f" } },
                                                                                                                                                                        { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "1344e7", "64108c" } },
                                                                                                                                                                        { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "9cb6b5", "c4abad" } } }, 
                                                                                                                                                  model_GUID="27261b", spawn_effect="Status Attack" },
  { name="Squirtle",    level=1, types={ "Water" },              moves={ "Bubble", "Tackle" },             guids={ "88717f" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "e89741" } } }, model_GUID="a96b7f" },
  { name="Wartortle",   level=3, types={ "Water" },              moves={ "Water Gun", "Bite" },            guids={ "cb8d39", "e89741" },          evoData={ { cost=2, ball=RED, gen=1, guids={ "1783ad", "427b16" }, model_GUID="54ea11" } }, model_GUID="99fd39" },
  { name="Blastoise",   level=5, types={ "Water" },              moves={ "Flash Cannon", "Hydro Pump" },   guids={ "80eaa8", "1783ad", "427b16" },evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "b28b0e", "0845e3" }, model_GUID="08b8f9", spawn_effect="Mega Evolve" }, 
                                                                                                                                                            { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "308530", "b981cd" } } }, 
                                                                                                                                                  model_GUID="54ea11" },
  { name="Caterpie",    level=1, types={ "Bug" },                moves={ "String Shot", "Tackle" },        guids={ "1b2082" },                    evoData={ { cost=1, ball=PINK, gen=1, guids={ "358aff" } } }, model_GUID="7c8b8a" },
  { name="Metapod",     level=2, types={ "Bug" },                moves={ "Harden", "Tackle" },             guids={ "7d6dcc", "358aff" },          evoData={ { cost=1, ball=GREEN, gen=1, guids={ "25d791", "d36522" } } }, model_GUID="3f9c36" },
  { name="Butterfree",  level=3, types={ "Bug", "Flying" },      moves={ "Psybeam", "Gust" },              guids={ "3cb9ed", "25d791", "d36522" },evoData={ { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "614df5", "47362b" } } }, model_GUID="77c6f3" },
  { name="Weedle",      level=1, types={ "Bug", "Poison" },      moves={ "Poison Sting", "String Shot" },  guids={ "4dd71c" },                    evoData={ { cost=1, ball=PINK, gen=1, guids={ "91bded" } } }, model_GUID="535929" },
  { name="Kakuna",      level=2, types={ "Bug", "Poison" },      moves={ "Poison Sting", "Harden" },       guids={ "daa46b", "91bded" },          evoData={ { cost=1, ball=GREEN, gen=1, guids={ "73c602", "61f84a" } } }, model_GUID="b46efe" },
  { name="Beedrill",    level=3, types={ "Bug", "Poison" },      moves={ "Twineedle", "Rage" },            guids={ "f8894f", "73c602", "61f84a" },evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "d4066d", "f8819a" } } }, model_GUID="68937e", spawn_effect="Status Attack" },
  { name="Pidgey",      level=1, types={ "Flying", "Normal" },   moves={ "Quick Attack", "Sand Attack" },  guids={ "ffa899" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "35b436" } } }, model_GUID="e042f9" },
  { name="Pidgeotto",   level=3, types={ "Flying", "Normal" },   moves={ "Wing Attack", "Twister" },       guids={ "7d5ef0", "35b436" },          evoData={ { cost=2, ball=RED, gen=1, guids={ "45e30a", "9f1834" } } }, model_GUID="47d87b", spawn_effect="Physical Attack" },
  { name="Pidgeot",     level=5, types={ "Flying", "Normal" },   moves={ "Hurricane", "Facade" },          guids={ "1d36ba", "45e30a", "9f1834" },evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "9844cb", "9be58b" } } }, model_GUID="831415" },
  { name="Rattata",     level=1, types={ "Normal" },             moves={ "Quick Attack", "Tail Whip" },    guids={ "e2226d" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "1533cd" } } }, model_GUID="dd6f20" },
  { name="Raticate",    level=3, types={ "Normal" },             moves={ "Hyper Fang", "Super Fang" },     guids={ "50866f", "1533cd" }, model_GUID="2539f9" },
  { name="Spearow",     level=1, types={ "Flying", "Normal" },   moves={ "Leer", "Peck" },                 guids={ "b2ebc5" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "7598db" } } }, model_GUID="f508f3" },
  { name="Fearow",      level=3, types={ "Flying", "Normal" },   moves={ "Mirror Move", "Drill Peck" },    guids={ "5b5a42", "7598db" }, model_GUID="c4b8b6" },
  { name="Ekans",       level=1, types={ "Poison" },             moves={ "Wrap", "Leer" },                 guids={ "a04efa" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "297aec" } } }, model_GUID="ac74d9" },
  { name="Arbok",       level=3, types={ "Poison" },             moves={ "Acid", "Bite" },                 guids={ "4d4660", "297aec" }, model_GUID="0df3c1" },
  { name="Pikachu",     level=1, types={ "Electric" },           moves={ "Thunder Shock", "Growl" },       guids={ "a17986", "e5c82a" },          evoData={ { cost=2, ball=BLUE, gen=1, guids={ "654bd9", "3541ed" } }, 
                                                                                                                                                                        { cost=2, ball=BLUE, gen=1, guids={ "1e53ce", "ef1a51" }, model_GUID="ac9e94", spawn_effect="Physical Attack" }, 
                                                                                                                                                                        { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "e932e9", "558a12" } } }, 
                                                                                                                                                  model_GUID="813555", spawn_effect="Status Attack" },
  { name="Raichu",      level=3, types={ "Electric" },           moves={ "Volt Tackle", "Iron Tail" },     guids={ "ffd6fb", "654bd9", "3541ed" },evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "b1d05e", "d54908" } },
                                                                                                                                                            { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "d344dd", "983016" } } }, 
                                                                                                                                                  model_GUID="ce46d3" },
  { name="Sandshrew",   level=1, types={ "Ground" },             moves={ "Sand Attack", "Scratch" },       guids={ "6a3193" }, evoData={ { cost=2, ball=BLUE, gen=1, guids={ "f4408c" } } }, model_GUID="6ac711" },
  { name="Sandslash",   level=3, types={ "Ground" },             moves={ "Slash", "Dig" },                 guids={ "53db8f", "f4408c" }, model_GUID="14e1b5" },
  { name="Nidoran (F)", level=1, types={ "Poison" },             moves={ "Poison Sting", "Growl" },        guids={ "a89779" }, evoData={ { cost=2, ball=BLUE, gen=1, guids={ "1809dc" } } }, model_GUID="585515", spawn_effect = "Physical Attack" },
  { name="Nidorina",    level=3, types={ "Poison" },             moves={ "Toxic Spikes", "Bite" },         guids={ "ea4a3c", "1809dc" }, evoData={ { cost=2, ball=RED, gen=1, guids={ "965607", "4e6a63" } } }, model_GUID="22488e" },
  { name="Nidoqueen",   level=5, types={ "Poison", "Ground" },   moves={ "Earth Power", "Superpower" },    guids={ "95b3f2", "965607", "4e6a63" }, model_GUID="c91f41" },
  { name="Nidoran (M)", level=1, types={ "Poison" },             moves={ "Tackle", "Peck" },               guids={ "593d68" }, evoData={ { cost=2, ball=BLUE, gen=1, guids={ "ed4f88" } } }, model_GUID="3bb97e", spawn_effect = "Physical Attack" },
  { name="Nidorino",    level=3, types={ "Poison" },             moves={ "Double Kick", "Horn Attack" },   guids={ "2978c9", "ed4f88" }, evoData={ { cost=2, ball=RED, gen=1, guids={ "faca75", "1ede33" } } }, model_GUID="ebed42", offset = { x = 0, y = 0, z = -0.1 } },
  { name="Nidoking",    level=5, types={ "Poison", "Ground" },   moves={ "Poison Jab", "Megahorn" },       guids={ "7c6422", "faca75", "1ede33" }, model_GUID="b038db", offset = { x = 0, y = 0, z = -0.2 } },
  { name="Clefairy",    level=2, types={ "Fairy" },              moves={ "Moonlight", "Sing" },            guids={ "ed88e4", "04404a" }, evoData={ { cost=1, ball=BLUE, gen=1, guids={ "a4ce76", "b56e5c" } } }, model_GUID="782a2e" },
  { name="Clefable",    level=3, types={ "Fairy" },              moves={ "Disarming Voice", "Metronome" }, guids={ "b31265", "a4ce76", "b56e5c" }, evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "7683e8", "1bf507" } } }, model_GUID="b1a7ba" },
  { name="Vulpix",      level=2, types={ "Fire" },               moves={ "Quick Attack", "Ember" },        guids={ "11e2aa" }, evoData={ { cost=3, ball=YELLOW, gen=1, guids={ "ea4691" } } }, model_GUID="7e6d40" },
  { name="Ninetales",   level=5, types={ "Fire" },               moves={ "Confuse Ray", "Inferno" },       guids={ "7cfe42", "ea4691" }, model_GUID="42c4da" },
  { name="Jigglypuff",  level=1, types={ "Normal", "Fairy" },    moves={ "Charm", "Sing" },                guids={ "8d3afd", "81f395" }, evoData={ { cost=3, ball=YELLOW, gen=1, guids={ "e72190", "247fe0" } } }, model_GUID="92122e" },
  { name="Wigglytuff",  level=4, types={ "Normal", "Fairy" },    moves={ "Play Rough", "Body Slam" },      guids={ "e4e003", "e72190", "247fe0" }, model_GUID="499574", spawn_effect = "Physical Attack" },
  { name="Zubat",       level=1, types={ "Poison", "Flying" },   moves={ "Supersonic", "Bite" },           guids={ "e36eed" }, evoData={ { cost=2, ball=BLUE, gen=1, guids={ "975f18" } } }, model_GUID="6ce120", spawn_effect = "Physical Attack" },
  { name="Golbat",      level=3, types={ "Poison", "Flying" },   moves={ "Leech Life", "Screech" },        guids={ "77b2b2", "975f18" }, evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "79419e", "1d7367" } } }, model_GUID="9b980c" },
  { name="Oddish",      level=2, types={ "Grass", "Poison" },    moves={ "Poison Powder", "Absorb" },      guids={ "f5c9ab" }, evoData={ { cost=1, ball=BLUE, gen=1, guids={ "3e7844" } } }, model_GUID="79e706" },
  { name="Gloom",       level=3, types={ "Grass", "Poison" },    moves={ "Stun Spore", "Acid" },           guids={ "22f1f2", "3e7844" }, evoData={ { cost=1, ball=YELLOW, gen=1, guids={ "529150", "19dbd1" } }, { cost=1, ball=YELLOW, gen=2, guids={ "fd44a1", "14e4ad" } } }, model_GUID="aa2f29", spawn_effect = "Physical Attack" },
  { name="Vileplume",   level=4, types={ "Grass", "Poison" },    moves={ "Sludge Bomb", "Solar Beam" },    guids={ "a65fdf", "529150", "19dbd1" }, model_GUID="588b3f" },
  { name="Paras",       level=2, types={ "Bug", "Grass" },       moves={ "Stun Spore", "Scratch" },        guids={ "f3604e" }, evoData={ { cost=1, ball=BLUE, gen=1, guids={ "7bae4e" } } }, model_GUID="07242c", spawn_effect = "Physical Attack" },
  { name="Parasect",    level=3, types={ "Bug", "Grass" },       moves={ "Spore", "Slash" },               guids={ "021746", "7bae4e" }, model_GUID="5beef7" },
  { name="Venonat",     level=3, types={ "Bug", "Poison" },      moves={ "Poison Fang", "Stun Spore" },    guids={ "c85b55" }, evoData={ { cost=1, ball=YELLOW, gen=1, guids={ "25e898" } } }, model_GUID="dd0526" },
  { name="Venomoth",    level=4, types={ "Bug", "Poison" },      moves={ "Psybeam", "Leech Life" },        guids={ "2c7de6", "25e898" }, model_GUID="530c83" },
  -- Gen 1 50-99
  { name="Diglett",     level=2, types={ "Ground" },             moves={ "Sand Tomb", "Scratch" },         guids={ "b79f00" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "3f6942" } } }, model_GUID="808d36" },
  { name="Dugtrio",     level=4, types={ "Ground" },             moves={ "Fissure", "Dig" },               guids={ "cfcb95", "3f6942" }, model_GUID="b4d340", custom_scale=0.8 },
  { name="Meowth",      level=2, types={ "Normal" },             moves={ "Pay Day", "Bite" },              guids={ "312c52" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "98722a" } }, { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "48e2c5" } } }, model_GUID="9e0a72", spawn_effect="Physical Attack" },
  { name="Persian",     level=4, types={ "Normal" },             moves={ "Power Gem", "Slash" },           guids={ "d56c1a", "98722a" }, model_GUID="ae2934", offset={x=0, y=0, z=-0.1} },
  { name="Psyduck",     level=2, types={ "Water" },              moves={ "Fury Swipes", "Disable" },       guids={ "eeee17" },                    evoData={ { cost=3, ball=RED, gen=1, guids={ "4696b8" } } }, model_GUID="7b6cb0" },
  { name="Golduck",     level=5, types={ "Water" },              moves={ "Zen Headbutt", "Aqua Tail" },    guids={ "5b9964", "4696b8" }, model_GUID="e26653" },
  { name="Mankey",      level=2, types={ "Fighting" },           moves={ "Swagger", "Low Kick" },          guids={ "c8da5c" },                    evoData={ { cost=2, ball=YELLOW, gen=1, guids={ "8b1126" } } }, model_GUID="85b071", spawn_effect="Physical Attack" },
  { name="Primeape",    level=4, types={ "Fighting" },           moves={ "Seismic Toss", "Thrash" },       guids={ "a237dd", "8b1126" },          evoData={ { cost=1, ball=RED, gen=9, guids={ "b68eb7", "6b4dfa" } } }, model_GUID="2b471e", spawn_effect="Physical Attack" },
  { name="Growlithe",   level=2, types={ "Fire" },               moves={ "Ember", "Roar" },                guids={ "7c2b34" },                    evoData={ { cost=3, ball=YELLOW, gen=1, guids={ "43d4c1" } } }, model_GUID="b8f54f" },
  { name="Arcanine",    level=5, types={ "Fire" },               moves={ "Extreme Speed", "Flare Blitz" }, guids={ "e52b25", "43d4c1" }, model_GUID="d89ae7", custom_scale=0.7 },
  { name="Poliwag",     level=2, types={ "Water" },              moves={ "Hypnosis", "Mud Shot" },         guids={ "ecd6a3" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "10f79d" } } }, model_GUID="c271fd", spawn_effect="Physical Attack" },
  { name="Poliwhirl",   level=4, types={ "Water" },              moves={ "Body Slam", "Bubble Beam" },     guids={ "fd5498", "10f79d" },          evoData={ { cost=2, ball=RED, gen=1, guids={ "b75a29", "50bf9d" } }, { cost=2, ball=RED, gen=2, guids={ "9a1b0b", "b21ff9" } } }, model_GUID="865416" },
  { name="Poliwrath",   level=6, types={ "Water", "Fighting" },  moves={ "Dynamic Punch", "Muddy Water" },  guids={ "133f27", "b75a29", "50bf9d" }, model_GUID="24f90c", custom_scale=0.8, offset={x=0, y=0, z=-0.1} },
  { name="Abra",        level=2, types={ "Psychic" },            moves={ "Teleport" },                     guids={ "4986cd" },                    evoData={ { cost=1, ball=BLUE, gen=1, guids={ "345d18" } } }, model_GUID="f338a0" },
  { name="Kadabra",     level=3, types={ "Psychic" },            moves={ "Psybeam", "Recover" },           guids={ "da1937", "345d18" },          evoData={ { cost=2, ball=RED, gen=1, guids={ "fa44b9", "74c0b4" } } }, model_GUID="635cd5" },
  { name="Alakazam",    level=5, types={ "Psychic" },            moves={ "Future Sight", "Tri Attack" },   guids={ "7117a7", "fa44b9", "74c0b4" },evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "9eade5", "8132c3" } } }, model_GUID="c3804e" },
  { name="Machop",      level=2, types={ "Fighting" },           moves={ "Focus Energy", "Low Kick" },     guids={ "646972" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "0821c2" } } }, model_GUID="4a5304", spawn_effect="Physical Attack" },
  { name="Machoke",     level=4, types={ "Fighting" },           moves={ "Dual Chop", "Karate Chop" },     guids={ "797adf", "0821c2" },          evoData={ { cost=2, ball=RED, gen=1, guids={ "ff6a7f", "518720" } } }, model_GUID="e7cc3a" },
  { name="Machamp",     level=6, types={ "Fighting" },           moves={ "Submission", "Wide Guard" },     guids={ "b5109b", "ff6a7f", "518720" },evoData={ { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "8d22d5", "1bc1d8" } } }, model_GUID="94b0de", spawn_effect="Physical Attack" },
  { name="Bellsprout",  level=2, types={ "Grass", "Poison" },    moves={ "Vine Whip", "Wrap" },            guids={ "a3cef8" },                    evoData={ { cost=1, ball=BLUE, gen=1, guids={ "4e1d04" } } }, model_GUID="4ca9db" },
  { name="Weepinbell",  level=3, types={ "Grass", "Poison" },    moves={ "Sleep Powder", "Acid" },         guids={ "77bc48", "4e1d04" },          evoData={ { cost=2, ball=YELLOW, gen=1, guids={ "1b329c", "e31246" } } }, model_GUID="961d7f" },
  { name="Victreebel",  level=5, types={ "Grass", "Poison" },    moves={ "Leaf Tornado", "Venoshock" },    guids={ "a380e7", "1b329c", "e31246" },evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "9f9073", "26616e" } } }, model_GUID="be71b4", spawn_effect="Physical Attack" },
  { name="Tentacool",   level=2, types={ "Water", "Poison" },    moves={ "Wrap", "Acid" },                 guids={ "7701e4" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "71015b" } } }, model_GUID="2aefb2" },
  { name="Tentacruel",  level=4, types={ "Water", "Poison" },    moves={ "Sludge Wave", "Water Pulse" },   guids={ "4afcb3", "71015b" }, model_GUID="9dfad1" },
  { name="Geodude",     level=1, types={ "Rock", "Ground" },     moves={ "Defense Curl", "Rock Throw" },   guids={ "57f1ed" },                    evoData={ { cost=3, ball=BLUE, gen=1, guids={ "f54a1b" } } }, model_GUID="df4771", spawn_effect="Physical Attack" },
  { name="Graveler",    level=4, types={ "Rock", "Ground" },     moves={ "Self-Destruct", "Rollout" },     guids={ "fbe7bb", "f54a1b" },          evoData={ { cost=2, ball=RED, gen=1, guids={ "4cbb8a", "0a8182" } } }, model_GUID="f38eaa", spawn_effect="Physical Attack" },
  { name="Golem",       level=6, types={ "Rock", "Ground" },     moves={ "Earthquake", "Explosion" },      guids={ "904780", "4cbb8a", "0a8182" }, model_GUID="aa0bdd", spawn_effect="Physical Attack" },
  { name="Ponyta",      level=4, types={ "Fire" },               moves={ "Flame Charge", "Stomp" },        guids={ "67fd81" },                    evoData={ { cost=2, ball=RED, gen=1, guids={ "b92f63" } } }, model_GUID="a1a9ce" },
  { name="Rapidash",    level=6, types={ "Fire" },               moves={ "Flame Wheel", "Smart Strike" },  guids={ "f651d6", "b92f63" }, model_GUID="20403e", custom_scale=0.7, offset={x=0, y=0, z=0.1} },
  { name="Slowpoke",    level=2, types={ "Water", "Psychic" },   moves={ "Confusion", "Slack Off" },       guids={ "fb1925" },                    evoData={ { cost=3, ball=RED, gen=1, guids={ "4b8280" } }, { cost=3, ball=RED, gen=2, guids={ "83160e" } } }, model_GUID="f89c9b", custom_scale=0.8 },
  { name="Slowbro",     level=5, types={ "Water", "Psychic" },   moves={ "Psychic", "Surf" },              guids={ "adce28", "4b8280" },          evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "6060e8", "083e93" } } }, model_GUID="6cd8f3", custom_scale=0.85 },
  { name="Magnemite",   level=3, types={ "Electric", "Steel" },  moves={ "Thunder Shock", "Supersonic" },  guids={ "23a41e" },                    evoData={ { cost=1, ball=BLUE, gen=1, guids={ "7a8fae" } } }, model_GUID="947e98" },
  { name="Magneton",    level=4, types={ "Electric", "Steel" },  moves={ "Metal Sound", "Discharge" },     guids={ "0e43ae", "7a8fae" },          evoData={ { cost=2, ball=RED, gen=4, guids={ "dedadf", "618210" } } }, model_GUID="f82ef9" },
  { name="Farfetch'd",  level=3, types={ "Flying", "Normal" },   moves={ "Fury Cutter", "Air Slash" },     guids={ "489e66" }, model_GUID="946c27", spawn_effect="Physical Attack" },
  { name="Doduo",       level=3, types={ "Flying", "Normal" },   moves={ "Double Hit", "Peck" },           guids={ "9e2524" },                    evoData={ { cost=1, ball=YELLOW, gen=1, guids={ "ee2d7d" } } }, model_GUID="1bd0bc" },
  { name="Dodrio",      level=4, types={ "Flying", "Normal" },   moves={ "Tri Attack", "Pluck" },          guids={ "bdd1d3", "ee2d7d" }, model_GUID="299ecd" },
  { name="Seel",        level=4, types={ "Water" },              moves={ "Aurora Beam", "Aqua Ring" },     guids={ "e71d19" },                    evoData={ { cost=1, ball=RED, gen=1, guids={ "8621ed" } } }, model_GUID="954d89" },
  { name="Dewgong",     level=5, types={ "Water", "Ice" },       moves={ "Ice Beam", "Aqua Tail" },        guids={ "46abb5", "8621ed" }, model_GUID="6fa3a7", spawn_effect="Physical Attack" },
  { name="Grimer",      level=4, types={ "Poison" },             moves={ "Sludge", "Toxic" },              guids={ "b0bb78" },                    evoData={ { cost=1, ball=RED, gen=1, guids={ "e86ddd" } } }, model_GUID="3e38eb", custom_scale=0.85 },
  { name="Muk",         level=5, types={ "Poison" },             moves={ "Gunk Shot", "Mud Shot" },        guids={ "78a11c", "e86ddd" }, model_GUID="813b8b", custom_scale=0.5 },
  { name="Shellder",    level=2, types={ "Water" },              moves={ "Clamp", "Protect" },             guids={ "b7a634" },                    evoData={ { cost=2, ball=YELLOW, gen=1, guids={ "24e258" } } }, model_GUID="4be354", spawn_effect="Physical Attack" },
  { name="Cloyster",    level=4, types={ "Water", "Ice" },       moves={ "Icicle Spear", "Razor Shell" },  guids={ "fb7658", "24e258" }, model_GUID="73e384" },
  { name="Gastly",      level=3, types={ "Ghost", "Poison" },    moves={ "Hypnosis", "Lick" },             guids={ "36f853" },                    evoData={ { cost=1, ball=BLUE, gen=1, guids={ "f1eac8" } } }, model_GUID="20085a" },
  { name="Haunter",     level=4, types={ "Ghost", "Poison" },    moves={ "Sucker Punch", "Curse" },        guids={ "0f5b22", "f1eac8" },          evoData={ { cost=1, ball=RED, gen=1, guids={ "7d5d39", "ad0856" } } }, model_GUID="13b866" },
  { name="Gengar",      level=5, types={ "Ghost", "Poison" },    moves={ "Sludge Bomb", "Night Shade" },   guids={ "fe0809", "7d5d39", "ad0856" }, evoData={ { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "774eaa", "1b8bc7" } },
                                                                                                                                                                         { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "5ef98c", "68c539" } } }, 
                                                                                                                                                             model_GUID="4638bc" },
  { name="Onix",        level=2, types={ "Rock", "Ground" },     moves={ "Dragon Breath", "Rock Throw" },  guids={ "575fcf" },                    evoData={ { cost=2, ball=BLUE, gen=2, guids={ "9248b4" } } }, model_GUID="f5b6ad", custom_scale=0.7, offset={x=0,y=0,z=0.3} },
  { name="Drowzee",     level=2, types={ "Psychic" },            moves={ "Confusion", "Disable" },         guids={ "5bda37" },                    evoData={ { cost=2, ball=YELLOW, gen=1, guids={ "56108c" } } }, model_GUID="2ceecd" },
  { name="Hypno",       level=4, types={ "Psychic" },            moves={ "Zen Headbutt", "Nasty Plot" },   guids={ "08ee2c", "56108c" }, model_GUID="beca37", offset={x=0, y=0, z=-0.05} },
  { name="Krabby",      level=2, types={ "Water" },              moves={ "Vise Grip", "Bubble" },          guids={ "54a03e" },                    evoData={ { cost=2, ball=YELLOW, gen=1, guids={ "aa3008" } } }, model_GUID="75755a" },
  { name="Kingler",     level=4, types={ "Water" },              moves={ "Crabhammer", "Guillotine" },     guids={ "f18035", "aa3008" },          evoData={ { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "1fa11f", "9edb28" } } }, model_GUID="894758", custom_scale=0.8 },
  -- Gen 1 100-151
  { name="Voltorb",     level=2, types={ "Electric" },           moves={ "Sonic Boom", "Self-Destruct" },  guids={ "7963a6" },                    evoData={ { cost=2, ball=BLUE, gen=1, guids={ "fd080d" } } }, model_GUID="37bc9d", spawn_effect="Physical Attack" },
  { name="Electrode",   level=4, types={ "Electric" },           moves={ "Explosion", "Rollout" },         guids={ "d292b7", "fd080d" }, model_GUID="2fb88b", spawn_effect="Physical Attack" },
  { name="Exeggcute",   level=3, types={ "Grass", "Psychic" },   moves={ "Barrage", "Mega Drain" },        guids={ "c271ca" },                    evoData={ { cost=2, ball=RED, gen=1, guids={ "a29b99" } }, { cost=2, ball=RED, gen=7, guids={ "56fca1" } } }, model_GUID="618cb8" },
  { name="Exeggutor",   level=5, types={ "Grass", "Psychic" },   moves={ "Extrasensory", "Solar Beam" },   guids={ "61be01", "a29b99" }, model_GUID="cc6a34" },
  { name="Cubone",      level=3, types={ "Ground" },             moves={ "Bone Club", "False Swipe" },     guids={ "9bb943" },                    evoData={ { cost=1, ball=YELLOW, gen=1, guids={ "921715" } }, { cost=1, ball=YELLOW, gen=7, guids={ "deb623" } } }, model_GUID="e899ae", spawn_effect="Physical Attack" },
  { name="Marowak",     level=4, types={ "Ground" },             moves={ "Bonemerang", "Thrash" },         guids={ "f416a8", "921715" }, model_GUID="c9b2ac" },
  { name="Hitmonlee",   level=4, types={ "Fighting" },           moves={ "Rolling Kick", "Blaze Kick" },   guids={ "1e6425", "10087d" }, model_GUID="d821ab", spawn_effect="Physical Attack", offset={x=0, y=0, z=-0.08} },
  { name="Hitmonchan",  level=4, types={ "Fighting" },           moves={ "Bullet Punch", "Drain Punch" },  guids={ "ffe3b0", "d55591" }, model_GUID="4fea7f", spawn_effect="Physical Attack" },
  { name="Lickitung",   level=4, types={ "Normal" },             moves={ "Lick", "Slam" },                 guids={ "6abe93" },                    evoData={ { cost=1, ball=YELLOW, gen=4, guids={ "5d1069" } } }, model_GUID="d27c75" },
  { name="Koffing",     level=3, types={ "Poison" },             moves={ "Poison Gas", "Clear Smog" },     guids={ "902c83" },                    evoData={ { cost=2, ball=RED, gen=1, guids={ "923b8f" } }, { cost=2, ball=RED, gen=8, guids={ "dccfa4" } } }, model_GUID="b853ca" },
  { name="Weezing",     level=5, types={ "Poison" },             moves={ "Explosion", "Sludge" },          guids={ "934454", "923b8f" }, model_GUID="921e94" },
  { name="Rhyhorn",     level=4, types={ "Ground", "Rock" },     moves={ "Rock Blast", "Bulldoze" },       guids={ "b40a42" },                    evoData={ { cost=2, ball=RED, gen=1, guids={ "6922c6" } } }, model_GUID="99c208", custom_scale=0.85 },
  { name="Rhydon",      level=6, types={ "Ground", "Rock" },     moves={ "Horn Drill", "Drill Run" },      guids={ "2cb778", "6922c6" },          evoData={ { cost=1, ball=RED, gen=4, guids={ "1665fe", "f2b985" } } }, model_GUID="2c20b7", custom_scale=0.8 },
  { name="Chansey",     level=4, types={ "Normal" },             moves={ "Heal Pulse", "Egg Bomb" },       guids={ "0f0dcb", "ee10ff" },          evoData={ { cost=1, ball=RED, gen=2, guids={ "5b9024", "774d72" } } }, model_GUID="87d9f4" },
  { name="Tangela",     level=3, types={ "Grass" },              moves={ "Bind", "Ingrain" },              guids={ "1ca74c" },                    evoData={ { cost=1, ball=YELLOW, gen=4, guids={ "5965cd" } } }, model_GUID="9ff5ec" },
  { name="Kangaskhan",  level=4, types={ "Normal" },             moves={ "Sucker Punch", "Dizzy Punch" },  guids={ "cf2b95" },                    evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "0eb8c8" } } }, model_GUID="98bc9e", custom_scale=0.6, offset={x=0, y=0, z=0.05} },
  { name="Horsea",      level=2, types={ "Water" },              moves={ "Smokescreen", "Bubble" },        guids={ "17d28f" },                    evoData={ { cost=3, ball=RED, gen=1, guids={ "a87dc7" } } }, model_GUID="16af3c" },
  { name="Seadra",      level=5, types={ "Water" },              moves={ "Bubble Beam", "Twister" },       guids={ "f5b456", "a87dc7" },          evoData={ { cost=1, ball=RED, gen=2, guids={ "0b677f", "3b17f1" } } }, model_GUID="9c2ba7" },
  { name="Goldeen",     level=2, types={ "Water" },              moves={ "Horn Attack", "Peck" },          guids={ "7ba0cd" },                    evoData={ { cost=3, ball=YELLOW, gen=1, guids={ "4d1c92" } } }, model_GUID="b633e8" },
  { name="Seaking",     level=5, types={ "Water" },              moves={ "Aqua Ring", "Megahorn" },        guids={ "0fbe89", "4d1c92" }, model_GUID="429324" },
  { name="Staryu",      level=2, types={ "Water" },              moves={ "Rapid Spin", "Water Gun" },      guids={ "887830" },                    evoData={ { cost=3, ball=YELLOW, gen=1, guids={ "e03570" } } }, model_GUID="792e94", spawn_effect="Physical Attack" },
  { name="Starmie",     level=5, types={ "Water", "Psychic" },   moves={ "Power Gem", "Brine" },           guids={ "4f6664", "e03570" },          evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "705ce3", "797d1a" } } }, model_GUID="1072a5" },
  { name="Mr. Mime",    level=3, types={ "Psychic", "Fairy" },   moves={ "Barrier", "Mimic" },             guids={ "5c3184", "8315de" }, model_GUID="b25a93" },
  { name="Scyther",     level=4, types={ "Bug", "Flying" },      moves={ "Fury Cutter", "Slash" },         guids={ "36242b" },                    evoData={ { cost=1, ball=RED, gen=2, guids={ "22e6a3" } }, { cost=1, ball=RED, gen=8, guids={ "18d390" } } }, model_GUID="a98dea" },
  { name="Jynx",        level=4, types={ "Ice", "Psychic" },     moves={ "Lovely Kiss", "Ice Punch" },     guids={ "7fad23", "4bc360" }, model_GUID="43c517", custom_scale=0.9 },
  { name="Electabuzz",  level=4, types={ "Electric" },           moves={ "Thunder Punch", "Screech" },     guids={ "00e028", "749909" },          evoData={ { cost=2, ball=RED, gen=4, guids={ "11f593", "896d6e" } } }, model_GUID="ad494f" },
  { name="Magmar",      level=4, types={ "Fire" },               moves={ "Fire Punch", "Clear Smog" },     guids={ "e92ee6", "a0aed6" },          evoData={ { cost=2, ball=RED, gen=4, guids={ "bc96fe", "ebafae" } } }, model_GUID="ff3210" },
  { name="Pinsir",      level=4, types={ "Bug" },                moves={ "X-Scissor", "Vise Grip" },       guids={ "141f37" },                    evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "202a18" } } }, model_GUID="4e7512" },
  { name="Tauros",      level=4, types={ "Normal" },             moves={ "Raging Bull", "Swagger" },       guids={ "904903" }, model_GUID="797eb7", spawn_effect="Physical Attack", custom_scale=0.85 },
  { name="Magikarp",    level=1, types={ "Water" },              moves={ "Splash" },                       guids={ "f877ca" },                    evoData={ { cost=2, ball=GREEN, gen=1, guids={ "985830" } } }, model_GUID="48944e", spawn_effect="Physical Attack" },
  { name="Gyarados",    level=3, types={ "Water", "Flying" },    moves={ "Dragon Rage", "Bite" },          guids={ "d14d19", "985830" },          evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "f45bf6", "4d5c16" } } }, model_GUID="bb17bd", custom_scale=0.75 },
  { name="Lapras",      level=3, types={ "Water", "Ice" },       moves={ "Perish Song", "Ice Beam" },      guids={ "a465e9" },                    evoData={ { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "f23aef" } } }, model_GUID="ae0d8f", custom_scale=0.8, offset={x=0, y=0.2, z=-0.1} },
  { name="Ditto",       level=4, types={ "Normal" },             moves={ "Transform" },                    guids={ "c2023e" }, model_GUID="babb44" },
  { name="Eevee",       level=3, types={ "Normal" },             moves={ "Veevee Volley", "Bite" },        guids={ "690870" },                    evoData={ { cost=2, ball=YELLOW, gen=1, guids={ "98756d" }, model_GUID="b8e8a6" }, 
                                                                                                                                                                        { cost=2, ball=YELLOW, gen=1, guids={ "090cce" }, model_GUID="c86032" }, 
                                                                                                                                                                        { cost=2, ball=YELLOW, gen=1, guids={ "901417" }, model_GUID="323c42" }, 
                                                                                                                                                                        { cost=2, ball=YELLOW, gen=2, guids={ "63caca" }, model_GUID="33d105" }, 
                                                                                                                                                                        { cost=2, ball=YELLOW, gen=2, guids={ "5daac2" }, model_GUID="c8a52c" }, 
                                                                                                                                                                        { cost=2, ball=YELLOW, gen=4, guids={ "25ef7b" }, model_GUID="9f14e6" }, 
                                                                                                                                                                        { cost=2, ball=YELLOW, gen=4, guids={ "549166" }, model_GUID="8884ba" },
                                                                                                                                                                        { cost=2, ball=YELLOW, gen=6, guids={ "8dc6ce" }, model_GUID="381a03" },
                                                                                                                                                                        { cost="GMax", ball=MEGA, gen=1, cycle=true, guids={ "6041c6" }, model_GUID="b49fe8" } }, 
                                                                                                                                                            model_GUID="b37bcd" },
  { name="Vaporeon",    level=5, types={ "Water" },              moves={ "Bouncy Bubble", "Acid Armor" },  guids={ "dc74f4", "98756d" }, model_GUID="b8e8a6" },
  { name="Jolteon",     level=5, types={ "Electric" },           moves={ "Double Kick", "Buzzy Buzz" },    guids={ "7309b7", "090cce" }, model_GUID="c86032" },
  { name="Flareon",     level=5, types={ "Fire" },               moves={ "Sizzly Slide", "Covet" },        guids={ "2eadbb", "901417" }, model_GUID="323c42" },
  { name="Porygon",     level=2, types={ "Normal" },             moves={ "Conversion", "Psybeam" },        guids={ "f4d087" }, evoData={ { cost=2, ball=BLUE, gen=2, guids={ "145660" } } }, model_GUID="7e5d3b" },
  { name="Omanyte",     level=4, types={ "Rock", "Water" },      moves={ "Spike Cannon", "Brine" },        guids={ "7c9350" }, evoData={ { cost=2, ball=RED, gen=1, guids={ "4bad46" } } }, model_GUID="9a4753" },
  { name="Omastar",     level=6, types={ "Rock", "Water" },      moves={ "Rock Blast", "Hydro Pump" },     guids={ "fcdf06", "4bad46" }, model_GUID="78ec0f" },
  { name="Kabuto",      level=4, types={ "Rock", "Water" },      moves={ "Leech Life", "Aqua Jet" },       guids={ "adad5d" }, evoData={ { cost=2, ball=RED, gen=1, guids={ "b99ba9" } } }, model_GUID="f2a8a6" },
  { name="Kabutops",    level=6, types={ "Rock", "Water" },      moves={ "Hydro Pump", "Slash" },          guids={ "2fbb99", "b99ba9" }, model_GUID="bd4880" },
  { name="Aerodactyl",  level=4, types={ "Rock", "Flying" },     moves={ "Rock Slide", "Wing Attack" },     guids={ "b69470" }, evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "5ffdbe", "c8a98d" } } }, model_GUID="ba21f7" },
  { name="Snorlax",     level=4, types={ "Normal" },             moves={ "Body Slam", "Yawn" },            guids={ "81f09a", "a017f9" }, evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "318baa", "cc9678" } } }, model_GUID="829f1b", spawn_effect="Physical Attack", custom_scale=0.8 },
  { name="Articuno",    level=7, types={ "Ice", "Flying" },      moves={ "Mirror Coat", "Blizzard" },      guids={ "0e47e0" }, model_GUID="fd860a" },
  { name="Zapdos",      level=7, types={ "Electric", "Flying" }, moves={ "Thunder", "Drill Peck" },        guids={ "810844" }, model_GUID="0e0c94" },
  { name="Moltres",     level=7, types={ "Fire", "Flying" },     moves={ "Sky Attack", "Heat Wave" },      guids={ "cf5cee" }, model_GUID="edf3cc", spawn_effect="Physical Attack" },
  { name="Dratini",     level=2, types={ "Dragon" },             moves={ "Twister", "Slam" },              guids={ "7a8c75" }, evoData={ { cost=2, ball=YELLOW, gen=1, guids={ "3add33" } } }, model_GUID="1e6e11" },
  { name="Dragonair",   level=4, types={ "Dragon" },             moves={ "Dragon Dance", "Aqua Tail" },    guids={ "7189e9", "3add33" }, evoData={ { cost=3, ball=RED, gen=1, guids={ "bd4406", "1b136e" } } }, model_GUID="a88377" },
  { name="Dragonite",   level=7, types={ "Dragon", "Flying" },   moves={ "Dragon Rush", "Hurricane" },     guids={ "907860", "bd4406", "1b136e" }, evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "534f9b", "533c1c" } } }, model_GUID="fa47e5" },
  { name="Mewtwo",      level=7, types={ "Psychic" },            moves={ "Shadow Ball", "Future Sight" },  guids={ "d78d06" }, evoData={ { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "bf8dc5" } }, 
                                                                                                                                         { cost="Mega", ball=MEGA, gen=1, cycle=true, guids={ "a4bdc6" } } }, 
                                                                                                                               model_GUID="8dad23" },
  { name="Mew",         level=7, types={ "Psychic" },            moves={ "Psywave", "Metronome" },     guids={ "d68dfc" }, model_GUID="5dbae0", spawn_effect="Physical Attack" },
  
  -- Specials.
  { name="Crystal Onix",level=2, types={ "Ice" },                moves={ "Earthquake (CO)", "Rock Throw (CO)" }, guids={ "74f489" }, model_GUID="cc256d", custom_scale=0.7, offset={x=0,y=0,z=0.3} },
  { name="MissingNo",   level=1, types={ "Normal" },             moves={ "Water Gun", "Pay Day" },         guids={ "83463e" }, evoData={ { cost=2, ball=BLUE, gen=1, guids={ "7f8e4d" } } } },
  { name="MissingNo2",  level=3, types={ "Normal" },             moves={ "Sky Attack", "Pay Day" },        guids={ "9d0018", "7f8e4d" } },
  { name="Armored Mewtwo", level=7, types={ "Psychic" },         moves={ "Night Shade", "Psychic" },       guids={ "c78a97" }, model_GUID="db1511" },
  { name="Shadow Mewtwo", level=7, types={ "Psychic" },          moves={ "Psywave", "Dark Nova" },         guids={ "a696a3" }, model_GUID="7eb40d" },

  -- Mega evolutions.
  { name="Mega Blastoise",    level=6,    types={ "Water" },     moves={ "Skull Bash", "Scald" },           guids={ "b28b0e", "0845e3" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "80eaa8", "1783ad", "427b16" }, model_GUID="54ea11" } }, model_GUID="08b8f9", spawn_effect="Mega Evolve" },
  { name="GMax Blastoise",    level=5,    types={ "Water" },     moves={ "Cannonade", "Steelspike" },       guids={ "308530", "b981cd" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "80eaa8", "1783ad", "427b16" }, model_GUID="54ea11" } }, model_GUID="d1dd67", custom_scale=0.45, offset={x=0, y=0, z=-0.03} },
  { name="Mega Venusaur",     level=6,    types={ "Grass", "Poison" }, moves={ "Sludge Bomb", "Petal Blizzard" }, guids={ "c941db", "305e33" },   evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "e69464", "85a0be", "6e6869" }, model_GUID="452ac8", spawn_effect="Physical Attack" } }, model_GUID="40331c", spawn_effect="Mega Evolve", custom_scale=0.65 },
  { name="GMax Venusaur",     level=5,    types={ "Grass", "Poison" }, moves={ "Vine Lash", "Strike" },     guids={ "0fdf45", "55e05e" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "e69464", "85a0be", "6e6869" }, model_GUID="452ac8", spawn_effect="Physical Attack" } }, model_GUID="8f8e22", custom_scale=0.35, offset={x=0, y=0, z=-0.03} },
  { name="Mega Charizard X",  level=6,    types={ "Fire", "Dragon" }, moves={ "Dragon Claw", "Inferno" },   guids={ "79685a", "f0024f" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "1c82ed", "6a3112", "8b9dab" }, model_GUID="27261b", spawn_effect="Status Attack" } }, model_GUID="29611d", spawn_effect="Mega Evolve" },
  { name="Mega Charizard Y",  level=6,    types={ "Fire", "Flying" }, moves={ "Air Cutter", "Inferno" },    guids={ "1344e7", "64108c" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "1c82ed", "6a3112", "8b9dab" }, model_GUID="27261b", spawn_effect="Status Attack" } }, model_GUID="3da16c", spawn_effect="Mega Evolve" },
  { name="GMax Charizard",    level=5,    types={ "Fire", "Flying" }, moves={ "Wildfire", "Airstream" },    guids={ "9cb6b5", "c4abad" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "1c82ed", "6a3112", "8b9dab" }, model_GUID="27261b", spawn_effect="Status Attack" } }, model_GUID="156d05", custom_scale=0.5, offset={x=0, y=0, z=-0.03} },
  { name="Mega Alakazam",     level=6,    types={ "Psychic" },   moves={ "Dazzling Gleam", "Psychic" },     guids={ "9eade5", "8132c3" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "7117a7", "fa44b9", "74c0b4" } } }, model_GUID="ef33f5", spawn_effect="Mega Evolve" },
  { name="GMax Pikachu",      level=1,    types={ "Electric" },  moves={ "Volt Crash", "Guard" },           guids={ "e932e9", "558a12" },         evoData={ { cost=0, ball=PINK, gen=1, cycle=true, guids={ "a17986", "e5c82a" } } }, model_GUID="18bec8", custom_scale=1.1 },
  { name="GMax Butterfree",   level=3,    types={ "Bug", "Flying" }, moves={ "Befuddle", "Airstream" },     guids={ "614df5", "47362b" },         evoData={ { cost=0, ball=GREEN, gen=1, cycle=true, guids={ "3cb9ed", "25d791", "d36522" } } }, model_GUID="f8fc86" },
  { name="GMax Machamp",      level=6,    types={ "Fighting" },  moves={ "Chi Strike", "Guard" },           guids={ "8d22d5", "1bc1d8" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "b5109b", "ff6a7f", "518720" } } }, model_GUID="9636c9", custom_scale=0.65, offset={x=0, y=0, z=-0.03} },
  { name="GMax Meowth",       level=2,    types={ "Normal" },    moves={ "Gold Rush", "Darkness"},          guids={ "48e2c5" },                   evoData={ { cost=0, ball=PINK, gen=1, cycle=true, guids={ "312c52" } } }, model_GUID="bc9ef1" },
  { name="Mega Pidgeot",      level=6,    types={ "Flying", "Normal" }, moves={ "Steel Wing", "Aerial Ace"},guids={ "9844cb", "9be58b" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "1d36ba", "45e30a", "9f1834" } } }, model_GUID="a6d82a", spawn_effect="Mega Evolve" },
  { name="Mega Beedrill",     level=4,    types={ "Bug", "Poison" }, moves={ "Poison Jab", "X-Scissor"},    guids={ "d4066d", "f8819a" },         evoData={ { cost=0, ball=GREEN, gen=1, cycle=true, guids={ "f8894f", "73c602", "61f84a" } } }, model_GUID="ef20d1", spawn_effect="Mega Evolve" },
  { name="GMax Gengar",       level=5,    types={ "Ghost", "Poison" }, moves={ "Terror", "Ooze" },          guids={ "774eaa", "1b8bc7" },         evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "fe0809", "7d5d39", "ad0856" } } }, model_GUID="501df0", custom_scale=0.3 },
  { name="Mega Slowbro",      level=6,    types={ "Water", "Psychic" }, moves={ "Zen Headbutt", "Blizzard" }, guids={ "6060e8", "083e93" },       evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "adce28", "4b8280" } } }, model_GUID="53ee2c", spawn_effect="Mega Evolve" },
  { name="GMax Kingler",      level=4,    types={ "Water" },     moves={ "Foam Burst", "Guard" },           guids={ "1fa11f", "9edb28" },         evoData={ { cost=0, ball=YELLOW, gen=1, cycle=true, guids={ "f18035", "aa3008" } } }, model_GUID="dc1beb", custom_scale=0.6 },
  { name="Mega Pinsir",       level=5,    types={ "Bug", "Flying" }, moves={ "Struggle Bug", "Seismic Toss" }, guids={ "202a18" },                evoData={ { cost=0, ball=YELLOW, gen=1, cycle=true, guids={ "141f37" } } }, model_GUID="9a4265", spawn_effect="Mega Evolve" },
  { name="Mega Kangaskhan",   level=5,    types={ "Normal" },    moves={ "Outrage", "Chip Away" },          guids={ "0eb8c8" },                   evoData={ { cost=0, ball=YELLOW, gen=1, cycle=true, guids={ "cf2b95" } } }, model_GUID="62422f", spawn_effect="Mega Evolve", custom_scale=0.9 },
  { name="GMax Lapras",       level=3,    types={ "Water", "Ice" }, moves={ "Resonance", "Guard" },         guids={ "f23aef" },                   evoData={ { cost=0, ball=BLUE, gen=1, cycle=true, guids={ "a465e9" } } }, model_GUID="404c5e", offset={x=0, y=2, z=0}, custom_scale=0.35 },
  { name="GMax Eevee",        level=3,    types={ "Normal" },    moves={ "Darkness", "Cuddle" },            guids={ "6041c6" },                   evoData={ { cost=0, ball=GREEN, gen=1, cycle=true, guids={ "690870" } } }, model_GUID="b49fe8", custom_scale=0.8 },
  { name="Mega Aerodactyl",   level=5,    types={ "Rock", "Flying" }, moves={ "Ancient Power", "Iron Head" }, guids={ "5ffdbe", "c8a98d" },       evoData={ { cost=0, ball=YELLOW, gen=1, cycle=true, guids={ "b69470" } } }, model_GUID="411f15", spawn_effect="Mega Evolve" },
  { name="GMax Snorlax",      level=4,    types={ "Normal" },    moves={ "Replenish", "Strike" },           guids={ "318baa", "cc9678" },         evoData={ { cost=0, ball=BLUE, gen=1, cycle=true, guids={ "81f09a", "a017f9" } } }, model_GUID="7bff14", offset={x=0, y=1.25, z=0}, custom_scale=0.6 },
  { name="Mega Gyarados",     level=4,    types={ "Water", "Dark" }, moves={ "Water Pulse", "Crunch" },     guids={ "f45bf6", "4d5c16" },         evoData={ { cost=0, ball=GREEN, gen=1, cycle=true, guids={ "d14d19", "985830" } } }, model_GUID="601ecc", spawn_effect="Mega Evolve", custom_scale=0.75 },
  { name="Mega Mewtwo X",     level=8,    types={ "Psychic", "Fighting" }, moves={ "Aura Sphere", "Psystrike" }, guids={ "bf8dc5" },              evoData={ { cost=0, ball=LEGENDARY, gen=1, cycle=true, guids={ "d78d06" } } }, model_GUID="fb5dae", spawn_effect="Mega Evolve" },
  { name="Mega Mewtwo Y",     level=8,    types={ "Psychic" },   moves={ "Psycho Cut", "Me First" },        guids={ "a4bdc6" },                   evoData={ { cost=0, ball=LEGENDARY, gen=1, cycle=true, guids={ "d78d06" } } }, model_GUID="18fa55", spawn_effect="Mega Evolve" },
  { name="Mega Gengar",       level=6,    types={ "Ghost", "Poison" }, moves={ "Shadow Ball", "Dream Eater" }, guids={ "5ef98c", "68c539" },      evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "fe0809", "7d5d39", "ad0856" } } }, model_GUID="72228f", offset={x=0, y=1.0, z=0} },
  { name="Mega Raichu X",     level=4,    types={ "Electric" },  moves={ "Thunder Punch", "Brick Break" },  guids={ "b1d05e", "d54908" },         evoData={ { cost=0, ball=BLUE, gen=1, cycle=true, guids={ "ffd6fb", "654bd9", "3541ed" } } } }, -- TODO: Needs model.
  { name="Mega Raichu Y",     level=4,    types={ "Electric" },  moves={ "Thunderbolt", "Play Rough" },     guids={ "d344dd", "983016" },         evoData={ { cost=0, ball=BLUE, gen=1, cycle=true, guids={ "ffd6fb", "654bd9", "3541ed" } } } }, -- TODO: Needs model.
  { name="Mega Victreebel",   level=6,    types={ "Grass", "Poison" }, moves={ "Sludge Bomb", "Razor Leaf" }, guids={ "9f9073", "26616e" },       evoData={ { cost=0, ball=YELLOW, gen=1, cycle=true, guids={ "a380e7", "1b329c", "e31246" } } }, model_GUID="32bfbc", spawn_effect="Mega Evolve", offset={x=0, y=0.24, z=-0.15} },
  { name="Mega Starmie",      level=6,    types={ "Water", "Psychic" }, moves={ "Water Pulse", "Psybeam" }, guids={ "705ce3", "797d1a" },         evoData={ { cost=0, ball=YELLOW, gen=1, cycle=true, guids={ "4f6664", "e03570" } } }, model_GUID="9da7f8", spawn_effect="Mega Evolve" },
  { name="Mega Dragonite",    level=8,    types={ "Dragon", "Flying" }, moves={ "Shadow Ball", "Dream Eater" }, guids={ "534f9b", "533c1c" },     evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "907860", "bd4406", "1b136e" } } }, model_GUID="706d00", spawn_effect="Mega Evolve" },
  { name="Mega Clefable",     level=4,    types={ "Fairy", "Flying" }, moves={ "Breaking Swipe", "Thunder" },  guids={ "7683e8", "1bf507" },      evoData={ { cost=0, ball=RED, gen=1, cycle=true, guids={ "b31265", "a4ce76", "b56e5c" } } }, model_GUID="075fcf", spawn_effect="Mega Evolve" },
} 

gen2PokemonData =
{
  -- Gen 2 152-200
  { name="Chikorita",  level=1, types={ "Grass" },             moves={ "Bullet Seed", "Growl" },          guids={ "cbe3c6" },                     evoData={ { cost=2, ball=BLUE, gen=2, guids={ "7ca3d7" } } }, model_GUID="3d382c" },
  { name="Bayleef",    level=3, types={ "Grass" },             moves={ "Body Slam", "Leech Seed" },       guids={ "e64a46", "7ca3d7" },           evoData={ { cost=2, ball=RED, gen=2, guids={ "595e82", "1d0c75" }, model_GUID="574537" } }, model_GUID="d25fd0" },
  { name="Meganium",   level=5, types={ "Grass" },             moves={ "Petal Dance", "Reflect" },        guids={ "97ddd4", "595e82", "1d0c75" }, evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "ded6e3", "e92461" } } }, model_GUID="574537", custom_scale=0.85 },
  { name="Cyndaquil",  level=1, types={ "Fire" },              moves={ "Smokescreen", "Ember" },          guids={ "8b91c9" },                     evoData={ { cost=2, ball=BLUE, gen=2, guids={ "4fe850" } } }, model_GUID="75e0a9" },
  { name="Quilava",    level=3, types={ "Fire" },              moves={ "Flame Wheel", "Quick Attack" },   guids={ "ec0bac", "4fe850" },           evoData={ { cost=2, ball=RED, gen=2, guids={ "444d49", "aef275" } }, { cost=2, ball=RED, gen=8, guids={ "e8349c", "c86580" } } }, model_GUID="103870" },
  { name="Typhlosion", level=5, types={ "Fire" },              moves={ "Inferno", "Gyro Ball" },          guids={ "7ce124", "444d49", "aef275" }, evolvegen=2, model_GUID="ac8e3f" },
  { name="Totodile",   level=1, types={ "Water" },             moves={ "Water Gun", "Leer" },             guids={ "9f245a" },                     evoData={ { cost=2, ball=BLUE, gen=2, guids={ "1915a6" } } }, model_GUID="252f4b" },
  { name="Croconaw",   level=3, types={ "Water" },             moves={ "Ice Fang", "Crunch" },            guids={ "0f1ac8", "1915a6" },           evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "d723a2", "4c2d4e" } } }, model_GUID="4015b5" },
  { name="Feraligatr", level=5, types={ "Water" },             moves={ "Superpower", "Aqua Tail" },       guids={ "b382a4", "d723a2", "4c2d4e" }, evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "6072c9", "c33903" } } }, model_GUID="e93ead", spawn_effect="Status Attack", custom_scale=0.8, offset={x=0,y=0,z=-0.1} },
  { name="Sentret",    level=1, types={ "Normal" },            moves={ "Fury Swipes", "Defense Curl" },   guids={ "dc2eea" },                     evoData={ { cost=1, ball=GREEN, gen=2, guids={ "db025b" } } }, model_GUID="9fb1dd" },
  { name="Furret",     level=2, types={ "Normal" },            moves={ "Sucker Punch", "Slam" },          guids={ "bddff6", "db025b" }, model_GUID="ce5492", spawn_effect="Physical Attack" },
  { name="Hoothoot",   level=1, types={ "Flying", "Normal" },  moves={ "Echoed Voice", "Confusion" },     guids={ "2cd22d" },                     evoData={ { cost=2, ball=BLUE, gen=2, guids={ "57ec65" } } }, model_GUID="05738c" },
  { name="Noctowl",    level=3, types={ "Flying", "Normal" },  moves={ "Moonblast", "Air Slash" },        guids={ "89f5ff", "57ec65" }, model_GUID="b09535" },
  { name="Ledyba",     level=1, types={ "Bug", "Flying" },     moves={ "Supersonic", "Reflect" },         guids={ "83168b" },                     evoData={ { cost=2, ball=GREEN, gen=2, guids={ "0b2791" } } }, model_GUID="3f5d68" },
  { name="Ledian",     level=3, types={ "Bug", "Flying" },     moves={ "Bug Buzz", "Mach Punch" },        guids={ "3d93ed", "0b2791" }, model_GUID="fa91c6" },
  { name="Spinarak",   level=1, types={ "Bug", "Poison" },     moves={ "Spider Web", "Poison Sting" },    guids={ "4a74ab" },                     evoData={ { cost=2, ball=BLUE, gen=2, guids={ "f8e383" } } }, model_GUID="726bd6" },
  { name="Ariados",    level=3, types={ "Bug", "Poison" },     moves={ "Toxic Thread", "Fell Stinger" },  guids={ "6027c1", "f8e383" }, model_GUID="3dd86d" },
  { name="Crobat",     level=5, types={ "Poison", "Flying" },  moves={ "Cross Poison", "Bite" },          guids={ "c8cb11", "79419e", "1d7367" }, model_GUID="40d4cd" },
  { name="Chinchou",   level=3, types={ "Water", "Electric" }, moves={ "Thunder Wave", "Bubble" },        guids={ "5cd23a" },                     evoData={ { cost=1, ball=YELLOW, gen=2, guids={ "3bb655" } } }, model_GUID="bb0ea1", spawn_effect="Physical Attack" },
  { name="Lanturn",    level=4, types={ "Water", "Electric" }, moves={ "Bubble Beam", "Spark" },          guids={ "ca2f7d", "3bb655" }, model_GUID="0a7fe3" },
  { name="Pichu",      level=0, types={ "Electric" },          moves={ "Play Nice", "Nuzzle" },           guids={ "7a0478" },                     evoData={ { cost=1, ball=PINK, gen=2, guids={ "e5c82a" } } }, model_GUID="a3f444", spawn_effect="Physical Attack" },
  { name="Cleffa",     level=0, types={ "Fairy" },             moves={ "Sweet Kiss", "Pound" },           guids={ "5f28fe" },                     evoData={ { cost=2, ball=PINK, gen=2, guids={ "04404a" } } }, model_GUID="2b3bf8" },
  { name="Igglybuff",  level=0, types={ "Normal", "Fairy" },   moves={ "Defense Curl", "Disable" },       guids={ "c288dc" },                     evoData={ { cost=1, ball=PINK, gen=2, guids={ "81f395" } } }, model_GUID="366974" },
  { name="Togepi",     level=0, types={ "Fairy" },             moves={ "Life Dew", "Charm" },             guids={ "b85f3c" },                     evoData={ { cost=2, ball=PINK, gen=2, guids={ "abaff2" } } }, model_GUID="6ba65d", spawn_effect="Physical Attack" },
  { name="Togetic",    level=2, types={ "Fairy", "Flying" },   moves={ "Safeguard", "Fairy Wind" },       guids={ "f8ed52", "abaff2" },           evoData={ { cost=2, ball=YELLOW, gen=4, guids={ "020ecc", "3786d0" } } }, model_GUID="06393b" },
  { name="Natu",       level=3, types={ "Psychic", "Flying" }, moves={ "Psycho Shift", "Peck" },          guids={ "d743cd" },                     evoData={ { cost=1, ball=YELLOW, gen=2, guids={ "a31065" } } }, model_GUID="a511f7" },
  { name="Xatu",       level=4, types={ "Psychic", "Flying" }, moves={ "Future Sight", "Air Slash" },     guids={ "c056ff", "a31065" }, model_GUID="a72b40" },
  { name="Mareep",     level=1, types={ "Electric" },          moves={ "Cotton Spore", "Take Down" },     guids={ "64aa14" },                     evoData={ { cost=1, ball=GREEN, gen=2, guids={ "6e25fb" } } }, model_GUID="2d0cf1" },
  { name="Flaaffy",    level=2, types={ "Electric" },          moves={ "Thunder Shock", "Power Gem" },    guids={ "65023c", "6e25fb" },           evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "433542", "089edd" } } }, model_GUID="332cde" },
  { name="Ampharos",   level=4, types={ "Electric" },          moves={ "Thunder Punch", "Dazzling Gleam" },guids={ "57b26e", "433542", "089edd" }, evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "f282f0", "16d003" } } }, model_GUID="2fede5" },
  { name="Bellossom",  level=4, types={ "Grass" },             moves={ "Quiver Dance", "Petal Dance" },   guids={ "eda382", "14e4ad", "fd44a1" }, model_GUID="29999f", spawn_effect="Physical Attack" },
  { name="Marill",     level=2, types={ "Water", "Fairy" },    moves={ "Water Gun", "Rollout" },          guids={ "d42c6f", "e76d9a" },           evoData={ { cost=1, ball=BLUE, gen=2, guids={ "47a0c6", "1ad3a2" } } }, model_GUID="c97a48" },
  { name="Azumarill",  level=3, types={ "Water", "Fairy" },    moves={ "Play Rough", "Aqua Tail" },       guids={ "972ac4", "47a0c6", "1ad3a2" }, model_GUID="f7eb12" },
  { name="Sudowoodo",  level=3, types={ "Rock" },              moves={ "Rock Tomb", "Mimic" },            guids={ "539dea", "eeca81" }, model_GUID="b0f59f", spawn_effect="Physical Attack" },
  { name="Politoed",   level=6, types={ "Water" },             moves={ "Bounce", "Hydro Pump" },          guids={ "67f2a8", "9a1b0b", "b21ff9" }, model_GUID="6bf45b" },
  { name="Hoppip",     level=1, types={ "Grass", "Flying" },   moves={ "Leech Seed", "Fairy Wind" },      guids={ "485f54" },                     evoData={ { cost=2, ball=BLUE, gen=2, guids={ "996e19" } } }, model_GUID="76212b" },
  { name="Skiploom",   level=3, types={ "Grass", "Flying" },   moves={ "Poison Powder", "Mega Drain" },   guids={ "e1c8ca", "996e19" },           evoData={ { cost=1, ball=YELLOW, gen=2, guids={ "18d441", "66e564" } } }, model_GUID="4e9313", spawn_effect="Physical Attack" },
  { name="Jumpluff",   level=4, types={ "Grass", "Flying" },   moves={ "Giga Drain", "Bounce" },          guids={ "766518", "18d441", "66e564" }, model_GUID="08d23f", spawn_effect="Physical Attack" },
  { name="Aipom",      level=2, types={ "Normal" },            moves={ "Fury Swipes", "Sand Attack" },    guids={ "7da245" },                     evoData={ { cost=2, ball=BLUE, gen=4, guids={ "06f1a9" } } }, model_GUID="89ec0d" },
  { name="Sunkern",    level=2, types={ "Grass" },             moves={ "Absorb", "Growth" },              guids={ "2a0f37" },                     evoData={ { cost=2, ball=BLUE, gen=2, guids={ "da3544" } } }, model_GUID="21d5b5" },
  { name="Sunflora",   level=4, types={ "Grass" },             moves={ "Sunny Day", "Razor Leaf" },       guids={ "f43c37", "da3544" }, model_GUID="912dc4" },
  { name="Yanma",      level=2, types={ "Bug", "Flying" },     moves={ "Quick Attack", "Hypnosis" },      guids={ "df3c90" },                     evoData={ { cost=2, ball=YELLOW, gen=4, guids={ "e093cb" } } }, model_GUID="4b8bdf", spawn_effect="Physical Attack" },
  { name="Wooper",     level=1, types={ "Water", "Ground" },   moves={ "Water Gun", "Slam" },             guids={ "3403ab" },                     evoData={ { cost=2, ball=BLUE, gen=2, guids={ "5281dd" } } }, model_GUID="5a0e02" },
  { name="Quagsire",   level=3, types={ "Water", "Ground" },   moves={ "Muddy Water", "Mud Shot" },       guids={ "1813f8", "5281dd" }, model_GUID="59c07d", custom_scale=0.9 },
  { name="Espeon",     level=5, types={ "Psychic" },           moves={ "Glitzy Glow", "Fake Tears" },     guids={ "6fdb1c", "5daac2" }, model_GUID="c8a52c" },
  { name="Umbreon",    level=5, types={ "Dark" },              moves={ "Baddy Bad", "Moonlight" },        guids={ "a074fb", "63caca" }, model_GUID="33d105" },
  { name="Murkrow",    level=3, types={ "Dark", "Flying" },    moves={ "Peck", "Torment" },               guids={ "d39237" },                     evoData={ { cost=1, ball=YELLOW, gen=4, guids={ "4f1558" } } }, model_GUID="77f5c2" },
  { name="Slowking",   level=5, types={ "Psychic", "Water" },  moves={ "Future Sight", "Power Gem" },     guids={ "f0d007", "83160e" }, model_GUID="bcb9f2", custom_scale=0.85 },
  { name="Misdreavus", level=4, types={ "Ghost" },             moves={ "Shadow Ball", "Perish Song" },    guids={ "86b019" },                     evoData={ { cost=1, ball=YELLOW, gen=4, guids={ "496256" } } }, model_GUID="01ca5e", spawn_effect="Physical Attack" },
  -- Gen 2 201-251
  { name="Unown",      level=1, types={ "Psychic" },           moves={ "Hidden Power" },                  guids={ "0dc6f9" }, model_GUID="c85a56", spawn_effect="Hidden Power" },
  { name="Wobbuffet",  level=2, types={ "Psychic" },           moves={ "Safeguard", "Counter" },          guids={ "5dd7a5", "0bbbae" }, model_GUID="8b6825" },
  { name="Girafarig",  level=2, types={ "Normal", "Psychic" }, moves={ "Confusion", "Stomp" },            guids={ "1fc55d" },                     evoData={ { cost=1, ball=BLUE, gen=9, guids={ "f18198" } } }, model_GUID="3310c2" },
  { name="Pineco",     level=2, types={ "Bug" },               moves={ "Rapid Spin", "Protect" },         guids={ "0d263c" },                     evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "7b0bfe" } } }, model_GUID="75f82e", spawn_effect="Physical Attack" },
  { name="Forretress", level=4, types={ "Bug", "Steel" },      moves={ "Gyro Ball", "Spikes" },           guids={ "669297", "7b0bfe" }, model_GUID="6fe49a" },
  { name="Dunsparce",  level=1, types={ "Normal" },            moves={ "Rage", "Glare" },                 guids={ "e86d8a" },                     evoData={ { cost=2, ball=BLUE, gen=9, guids={ "9c40ab" } } }, model_GUID="13a6d1", custom_scale=0.85, offset={x=0, y=0, z=-0.05} },
  { name="Gligar",     level=4, types={ "Ground", "Flying" },  moves={ "Feint Attack", "Slash" },         guids={ "f15436" },                     evoData={ { cost=1, ball=YELLOW, gen=4, guids={ "96a4fa" } } }, model_GUID="9c099b" },
  { name="Steelix",    level=4, types={ "Steel", "Ground" },   moves={ "Iron Tail", "Crunch" },           guids={ "93482a", "9248b4" },           evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "8b5001", "86038a" } } }, model_GUID="a4d334", custom_scale=0.7 },
  { name="Snubbull",   level=2, types={ "Fairy" },             moves={ "Charm", "Bite" },                 guids={ "d85741" },                     evoData={ { cost=1, ball=BLUE, gen=2, guids={ "5351ec" } } }, model_GUID="9de6f6" },
  { name="Granbull",   level=3, types={ "Fairy" },             moves={ "Play Rough", "Outrage" },         guids={ "13fcb1", "5351ec" }, model_GUID="bf082d" },
  { name="Qwilfish",   level=4, types={ "Water", "Poison" },   moves={ "Toxic Spikes", "Aqua Tail" },     guids={ "d28384" }, model_GUID="4dc2b1" },
  { name="Scizor",     level=5, types={ "Bug", "Steel" },      moves={ "Bullet Punch", "Lunge" },         guids={ "7e05b1", "22e6a3" },           evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "ae958f", "1bb3d8" } } }, model_GUID="334cc6", spawn_effect="Status Attack" },
  { name="Shuckle",    level=2, types={ "Bug", "Rock" },       moves={ "Safeguard", "Rollout" },          guids={ "3d91d1" }, model_GUID="53a551", spawn_effect="Physical Attack" },
  { name="Heracross",  level=4, types={ "Bug", "Fighting" },   moves={ "Aerial Ace", "Counter" },         guids={ "6f8ffe" },                     evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "926476" } } }, model_GUID="11f35c" },
  { name="Sneasel",    level=3, types={ "Dark", "Ice" },       moves={ "Hone Claws", "Slash" },           guids={ "c13dc3" },                     evoData={ { cost=1, ball=YELLOW, gen=4, guids={ "9b517e" } } }, model_GUID="b0f068" },
  { name="Teddiursa",  level=3, types={ "Normal" },            moves={ "Baby-Doll Eyes", "Covet" },       guids={ "e9f2b7" },                     evoData={ { cost=1, ball=YELLOW, gen=2, guids={ "415c99" } } }, model_GUID="729770" },
  { name="Ursaring",   level=4, types={ "Normal" },            moves={ "Hammer Arm", "Thrash" },          guids={ "e48590", "415c99" },           evoData={ { cost=2, ball=RED, gen=8, guids={ "7684c6", "2c6eaa" } }, { cost=2, ball=RED, gen=8, guids={ "0af179", "d9574b" } } }, model_GUID="aa222b", custom_scale=0.9, offset={x=0, y=0, z=-0.06} },
  { name="Slugma",     level=4, types={ "Fire" },              moves={ "Clear Smog", "Ember" },           guids={ "9c822d" },                     evoData={ { cost=1, ball=RED, gen=2, guids={ "b1cc91" } } }, model_GUID="964d48" },
  { name="Magcargo",   level=5, types={ "Fire", "Rock" },      moves={ "Lave Plume", "Rock Slide" },      guids={ "3cadf7", "b1cc91" }, model_GUID="bc7776" },
  { name="Swinub",     level=3, types={ "Ice", "Ground" },     moves={ "Powder Snow", "Mud-Slap" },       guids={ "cbd281" },                     evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "e3f6d9" } } }, model_GUID="a9fba7", spawn_effect="Physical Attack" },
  { name="Piloswine",  level=5, types={ "Ice", "Ground" },     moves={ "Ancient Power", "Ice Fang" },     guids={ "79cc3d", "e3f6d9" },           evoData={ { cost=1, ball=RED, gen=4, guids={ "bac5e2", "3e9a5e" } } }, model_GUID="3aabb9" },
  { name="Corsola",    level=3, types={ "Water", "Rock" },     moves={ "Ancient Power", "Aqua Ring" },    guids={ "180047" }, model_GUID="cf84d4", spawn_effect="Physical Attack" },
  { name="Remoraid",   level=3, types={ "Water" },             moves={ "Psybeam", "Water Gun" },          guids={ "c6633d" },                     evoData={ { cost=1, ball=YELLOW, gen=2, guids={ "93e4e2" } } }, model_GUID="b820cf" },
  { name="Octillery",  level=4, types={ "Water" },             moves={ "Octazooka", "Gunk Shot" },        guids={ "ae520a", "93e4e2" }, model_GUID="4c27f5" },
  { name="Delibird",   level=3, types={ "Ice", "Flying" },     moves={ "Present", "Drill Peck" },         guids={ "6588c5" }, model_GUID="a62b3b", spawn_effect="Physical Attack" },
  { name="Mantine",    level=3, types={ "Water", "Flying" },   moves={ "Bubble Beam", "Bounce" },         guids={ "1142f0", "6fd093" }, model_GUID="5f4b59", spawn_effect="Physical Attack" },
  { name="Skarmory",   level=4, types={ "Steel", "Flying" },   moves={ "Steel Wing", "Drill Peck" },      guids={ "cfa0f1" },                     evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "286ba9" } } }, model_GUID="790101", spawn_effect="Mega Evolve" },
  { name="Houndour",   level=2, types={ "Dark", "Fire" },      moves={ "Ember", "Howl" },                 guids={ "0e8e22" },                     evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "cf82ee" } } }, model_GUID="b635fd" },
  { name="Houndoom",   level=4, types={ "Dark", "Fire" },      moves={ "Fire Fang", "Crunch" },           guids={ "5ef848", "cf82ee" },           evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "b27904", "41f460" } } }, model_GUID="875a93" },
  { name="Kingdra",    level=6, types={ "Water", "Dragon" },   moves={ "Wave Crash", "Dragon Pulse" },    guids={ "bc99c5", "0b677f", "3b17f1" }, model_GUID="fd04bb" },
  { name="Phanpy",     level=3, types={ "Ground" },            moves={ "Bulldoze", "Slam" },              guids={ "7c1ad0" },                     evoData={ { cost=1, ball=YELLOW, gen=2, guids={ "980292" } } }, model_GUID="1f0941" },
  { name="Donphan",    level=4, types={ "Ground" },            moves={ "Earthquake", "Rollout" },         guids={ "dcdc1d", "980292" }, model_GUID="7fa132", spawn_effect="Physical Attack", custom_scale=0.8, offset={x=0, y=0, z=-0.03} },
  { name="Porygon2",   level=4, types={ "Normal" },            moves={ "Conversion2", "Tri Attack" },     guids={ "b7c99b", "145660" },           evoData={ { cost=1, ball=YELLOW, gen=4, guids={ "89624f", "ccdbee" } } }, model_GUID="26714f" },
  { name="Stantler",   level=2, types={ "Normal" },            moves={ "Hypnosis", "Tackle" },            guids={ "3ba296" },                     evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "163267" } } }, model_GUID="fc0116" },
  { name="Smeargle",   level=3, types={ "Normal" },            moves={ "Sketch", "Sketch" },              guids={ "5496a6" }, model_GUID="5efe03" },
  { name="Tyrogue",    level=1, types={ "Fighting" },          moves={ "Focus Energy", "Tackle" },        guids={ "b896b9" },                     evoData={ { cost=3, ball=BLUE, gen=1, guids={ "d55591" } }, 
                                                                                                                                                            { cost=3, ball=BLUE, gen=1, guids={ "10087d" } }, { cost=3, ball=BLUE, gen=2, guids={ "b53d14" } } }, 
                                                                                                                                                  model_GUID="9f3f98" },
  { name="Hitmontop",  level=4, types={ "Fighting" },          moves={ "Triple Kick", "Triple Axel" },    guids={ "1aeec6", "b53d14" }, model_GUID="f2168b", spawn_effect="Physical Attack" },
  { name="Smoochum",   level=1, types={ "Ice", "Psychic" },    moves={ "Powder Snow", "Lick" },           guids={ "961d64" },                     evoData={ { cost=3, ball=YELLOW, gen=2, guids={ "4bc360" } } }, model_GUID="bb561b" },
  { name="Elekid",     level=1, types={ "Electric" },          moves={ "Thunder Shock", "Low Kick" },     guids={ "b6056a" },                     evoData={ { cost=3, ball=YELLOW, gen=2, guids={ "749909" } } }, model_GUID="9b06da" },
  { name="Magby",      level=1, types={ "Fire" },              moves={ "Confuse Ray", "Ember" },          guids={ "a47ff8" },                     evoData={ { cost=3, ball=YELLOW, gen=2, guids={ "a0aed6" } } }, model_GUID="1649bb" },
  { name="Miltank",    level=2, types={ "Normal" },            moves={ "Milk Drink", "Rollout" },         guids={ "8d2189" }, model_GUID="cd7e0e", spawn_effect="Physical Attack" },
  { name="Blissey",    level=5, types={ "Normal" },            moves={ "Double-Edge", "Light Screen" },   guids={ "27e857", "5b9024", "774d72" }, model_GUID="7c05e0", spawn_effect="Status Attack" },
  { name="Raikou",     level=7, types={ "Electric" },          moves={ "Zap Cannon", "Crunch" },          guids={ "07ea8b" }, model_GUID="e1797a", custom_scale=0.75 },
  { name="Entei",      level=7, types={ "Fire" },              moves={ "Sacred Fire", "Sunny Day" },      guids={ "dbfb71" }, model_GUID="690ea9", custom_scale=0.65 },
  { name="Suicune",    level=7, types={ "Water" },             moves={ "Aurora Beam", "Hydro Pump" },     guids={ "ab44f1" }, model_GUID="7829ea", custom_scale=0.75 },
  { name="Larvitar",   level=2, types={ "Rock", "Ground" },    moves={ "Rock Throw", "Bite" },            guids={ "625880" },                     evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "aa8662" } } }, model_GUID="4f2d64" },
  { name="Pupitar",    level=4, types={ "Rock", "Ground" },    moves={ "Iron Defense", "Earthquake" },    guids={ "159d4d", "aa8662" },           evoData={ { cost=3, ball=RED, gen=2, guids={ "7195d5", "5764be" } } }, model_GUID="772458" },
  { name="Tyranitar",  level=7, types={ "Rock", "Dark" },      moves={ "Rock Slide", "Crunch" },          guids={ "d2d545", "7195d5", "5764be" }, evoData={ { cost="Mega", ball=MEGA, gen=2, cycle=true, guids={ "bb5cd0", "0cd52e" } } }, model_GUID="46679d" },
  { name="Lugia",      level=7, types={ "Psychic", "Flying" }, moves={ "Psycho Boost", "Aeroblast" },     guids={ "5e4745" }, model_GUID="a1d05e", custom_scale=0.7 },
  { name="Ho-oh",      level=7, types={ "Fire", "Flying" },    moves={ "Sacred Fire", "Brave Bird" },     guids={ "22569b" }, model_GUID="7be9e1" },
  { name="Celebi",     level=7, types={ "Psychic", "Grass" },  moves={ "Magical Leaf", "Psychic" },       guids={ "4d10a7" }, model_GUID="981fe7" },

  -- Specials.
  { name="Shadow Lugia", level=7, types={ "Psychic", "Flying" }, moves={ "Shadow Blast", "Hydro Pump" },  guids={ "89bede" }, model_GUID="4dcc9d" },

  -- Mega evolutions.
  { name="Mega Feraligatr",   level=6, types={ "Water", "Dragon" }, moves={ "Breaking Swipe", "Liquidation" }, guids={ "6072c9", "c33903" },   evoData={ { cost=0, ball=YELLOW, gen=2, cycle=true, guids={ "b382a4", "d723a2", "4c2d4e" } } }, model_GUID="b1dd3d", spawn_effect="Mega Evolve", offset={x=0,y=0.15,z=0} },
  { name="Mega Meganium",     level=6, types={ "Grass", "Fairy" },  moves={ "Disarming Voice", "Leaf Blade" },  guids={ "ded6e3", "e92461" },  evoData={ { cost=0, ball=RED, gen=2, cycle=true, guids={ "97ddd4", "595e82", "1d0c75" } } }, model_GUID="6747bb", spawn_effect="Mega Evolve" },
  { name="Mega Ampharos",     level=5, types={ "Electric", "Dragon" }, moves={ "Discharge", "Dragon Pulse" }, guids={ "f282f0", "16d003" },    evoData={ { cost=0, ball=YELLOW, gen=2, cycle=true, guids={ "57b26e", "433542", "089edd" } } }, model_GUID="333b22", spawn_effect="Mega Evolve" },
  { name="Mega Red Gyarados", level=6, types={ "Water", "Flying" }, moves={ "Water Pulse", "Crunch" },      guids={ "bc99f5" },                evoData={ { cost=0, ball=YELLOW, gen=2, cycle=true, guids={ "390ee2" } } }, model_GUID="55036d" },     -- Technically gen II only.
  { name="Mega Steelix",      level=5, types={ "Steel", "Ground" }, moves={ "Earthquake", "Stone Edge" },   guids={ "8b5001", "86038a" },      evoData={ { cost=0, ball=BLUE, gen=2, cycle=true, guids={ "93482a", "9248b4" } } }, model_GUID="f5a482", spawn_effect="Physical Attack", custom_scale=0.7, offset={x=0, y=0, z=0.5} },
  { name="Mega Scizor",       level=6, types={ "Bug", "Steel" },    moves={ "Hard Press", "Night Slash" },  guids={ "ae958f", "1bb3d8" },      evoData={ { cost=0, ball=RED, gen=2, cycle=true, guids={ "7e05b1", "22e6a3" } } }, model_GUID="4175df", spawn_effect="Mega Evolve" },
  { name="Mega Heracross",    level=5, types={ "Bug", "Fighting" }, moves={ "Close Combat", "Megahorn" },   guids={ "926476" },                evoData={ { cost=0, ball=BLUE, gen=2, cycle=true, guids={ "6f8ffe" } } }, model_GUID="cbdd77", spawn_effect="Mega Evolve" },
  { name="Mega Houndoom",     level=5, types={ "Dark", "Fire" },    moves={ "Inferno", "Foul Play" },       guids={ "b27904", "41f460" },      evoData={ { cost=0, ball=YELLOW, gen=2, cycle=true, guids={ "5ef848", "cf82ee" } } }, model_GUID="acbb9d", spawn_effect="Mega Evolve", custom_scale=0.9 },
  { name="Mega Tyranitar",    level=8, types={ "Rock", "Dark" },    moves={ "Thunder Fang", "Stone Edge" }, guids={ "bb5cd0", "0cd52e" },      evoData={ { cost=0, ball=RED, gen=2, cycle=true, guids={ "d2d545", "7195d5", "5764be" } } }, model_GUID="0bd382", spawn_effect="Mega Evolve" },
  { name="Mega Skarmory",     level=5, types={ "Steel", "Flying" }, moves={ "Air Slash", "Drill Run" },     guids={ "286ba9" },                evoData={ { cost=0, ball=YELLOW, gen=2, cycle=true, guids={ "cfa0f1" } } }, model_GUID="76acb8", spawn_effect="Mega Evolve" },
}

gen3PokemonData =
{
  -- Gen 3 252-300
  { name="Treecko",    level=1, types={ "Grass" },    moves={ "Absorb", "Pound" },                    guids={ "cd2a1e" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "71f6d0" } } }, model_GUID="0fb049" },
  { name="Grovyle",    level=3, types={ "Grass" },    moves={ "Mega Drain", "Fury Cutter" },          guids={ "fc07df", "71f6d0" },           evoData={ { cost=2, ball=RED, gen=3, guids={ "6acdb2", "8d967c" } } }, model_GUID="7c33a8" },
  { name="Sceptile",   level=5, types={ "Grass" },    moves={ "Leaf Blade", "Assurance" },            guids={ "01d5b8", "6acdb2", "8d967c" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "3921c1", "3563ba" } } }, model_GUID="cb8b63", spawn_effect="Status Attack", custom_scale=0.9 },
  { name="Torchic",    level=1, types={ "Fire" },     moves={ "Ember", "Growl" },                     guids={ "dfac41" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "0d3fc1" } } }, model_GUID="215780", spawn_effect="Physical Attack" },
  { name="Combusken",  level=3, types={ "Fire", "Fighting" }, moves={ "Flame Charge", "Double Kick" },guids={ "af5888", "0d3fc1" },           evoData={ { cost=2, ball=RED, gen=3, guids={ "6b6eaa", "e4fcc7" } } }, model_GUID="87fbb3", spawn_effect="Physical Attack" },
  { name="Blaziken",   level=5, types={ "Fire", "Fighting" }, moves={ "Blaze Kick", "Aerial Ace" },   guids={ "b3e3d0", "6b6eaa", "e4fcc7" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "7b81ef", "641ef5" } } }, model_GUID="868292", spawn_effect="Status Attack" },
  { name="Mudkip",     level=1, types={ "Water" },    moves={ "Rock Smash", "Water Gun" },            guids={ "18d937" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "80e724" } } }, model_GUID="7bb712" },
  { name="Marshtomp",  level=3, types={ "Water", "Ground" }, moves={ "Water Pulse", "Mud-Slap" },     guids={ "98a80c", "80e724" },           evoData={ { cost=2, ball=RED, gen=3, guids={ "0f2fe4", "93c652" } } }, model_GUID="e7b84a" },
  { name="Swampert",   level=5, types={ "Water", "Ground" }, moves={ "Mud Bomb", "Hydro Pump" },      guids={ "46c207", "0f2fe4", "93c652" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "f5dc2f", "045bc8" } } }, model_GUID="215a22", spawn_effect="Status Attack", custom_scale=0.7, offset={x=0, y=0.03, z=-0.05} },
  { name="Poochyena",  level=1, types={ "Dark" },     moves={ "Payback", "Howl" },                    guids={ "484c8e" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "ad5677" } } }, model_GUID="0266ca" },
  { name="Mightyena",  level=3, types={ "Dark" },     moves={ "Take Down", "Snarl" },                 guids={ "d14a45", "ad5677" }, model_GUID="4e25db" },
  { name="Zigzagoon",  level=1, types={ "Normal" },   moves={ "Pin Missile", "Tackle" },              guids={ "8effad" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "fea2c0" } } }, model_GUID="fa2eb0" },
  { name="Linoone",    level=3, types={ "Normal" },   moves={ "Switcheroo", "Slash" },                guids={ "49547c", "fea2c0" }, model_GUID="1fbab6" },
  { name="Wurmple",    level=1, types={ "Bug" },      moves={ "String Shot", "Tackle" },              guids={ "3b1e3a" },                     evoData={ { cost=1, ball=PINK, gen=3, guids={ "3756cf" } }, { cost=1, ball=PINK, gen=3, guids={ "b2567d" } } }, model_GUID="564350" },
  { name="Silcoon",    level=2, types={ "Bug" },      moves={ "Harden", "Tackle" },                   guids={ "814073", "3756cf" },           evoData={ { cost=1, ball=GREEN, gen=3, guids={ "64e59c", "4a79ea" } } }, model_GUID="7b3acf", spawn_effect="Physical Attack" },
  { name="Beautifly",  level=3, types={ "Bug", "Flying" }, moves={ "Silver Wind", "Mega Drain" },     guids={ "f16171", "64e59c", "4a79ea" }, model_GUID="96fd4b" },
  { name="Cascoon",    level=2, types={ "Bug" },      moves={ "Poison Sting", "Tackle" },             guids={ "2e69ca", "b2567d" },           evoData={ { cost=1, ball=GREEN, gen=3, guids={ "bf6b7d", "2ee4fc" } } }, model_GUID="8e5dc9", spawn_effect="Physical Attack" },
  { name="Dustox",     level=3, types={ "Bug", "Poison" }, moves={ "Silver Wind", "Light Screen" },   guids={ "f63e23", "bf6b7d", "2ee4fc" }, model_GUID="5e829e" },
  { name="Lotad",      level=1, types={ "Water", "Grass" }, moves={ "Astonish", "Absorb" },           guids={ "497b82" },                     evoData={ { cost=2, ball=GREEN, gen=3, guids={ "92c70d" } } }, model_GUID="9bf1cf" },
  { name="Lombre",     level=3, types={ "Water", "Grass" }, moves={ "Bullet Seed", "Bubble Beam" },   guids={ "3081f1", "92c70d" },           evoData={ { cost=1, ball=BLUE, gen=3, guids={ "043d72", "6c7ae8" } } }, model_GUID="f664d4" },
  { name="Ludicolo",   level=4, types={ "Water", "Grass" }, moves={ "Nature Power", "Razor Leaf" },   guids={ "8f090f", "043d72", "6c7ae8" }, model_GUID="bb247f" },
  { name="Seedot",     level=1, types={ "Grass" },    moves={ "Headbutt", "Synthesis" },              guids={ "b3dcac" },                     evoData={ { cost=2, ball=GREEN, gen=3, guids={ "9e2cc8" } } }, model_GUID="a55367" },
  { name="Nuzleaf",    level=3, types={ "Grass", "Dark" }, moves={ "Payback", "Fake Out" },           guids={ "489f1b", "9e2cc8" },           evoData={ { cost=1, ball=YELLOW, gen=3, guids={ "f02406", "288090" } } }, model_GUID="807cc5", spawn_effect="Physical Attack" },
  { name="Shiftry",    level=4, types={ "Grass", "Dark" }, moves={ "Nature Power", "Feint Attack" },  guids={ "eb4137", "f02406", "288090" }, model_GUID="a97e03" },
  -- Gen 3 276-300
  { name="Taillow",    level=1, types={ "Flying", "Normal" }, moves={ "Focus Energy", "Peck" },       guids={ "93cbde" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "3e7919" } } }, model_GUID="f9efda" },
  { name="Swellow",    level=3, types={ "Flying", "Normal" }, moves={ "Quick Attack", "Aerial Ace" }, guids={ "fd1fd2", "3e7919" }, model_GUID="430ab8", spawn_effect="Physical Attack" },
  { name="Wingull",    level=1, types={ "Water", "Flying" },  moves={ "Water Gun", "Mist" },          guids={ "018621" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "b53aec" } } }, model_GUID="2ba1b1" },
  { name="Pelipper",   level=3, types={ "Water", "Flying" },  moves={ "Water Pulse", "Wing Attack" }, guids={ "3fd851", "b53aec" }, model_GUID="dff0ed" },
  { name="Ralts",      level=1, types={ "Psychic", "Fairy" }, moves={ "Double Team", "Confusion" },   guids={ "92ca7a" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "61a3fe" } } }, model_GUID="3240f8" },
  { name="Kirlia",     level=3, types={ "Psychic", "Fairy" }, moves={ "Psybeam", "Life Dew" },        guids={ "260dd4", "61a3fe" },           evoData={ { cost=2, ball=RED, gen=4, guids={ "491632", "2956c7" } }, { cost=2, ball=RED, gen=3, guids={ "a58279", "9ef381" } } }, model_GUID="9624b5", spawn_effect="Physical Attack" },
  { name="Gardevoir",  level=5, types={ "Psychic", "Fairy" }, moves={ "Dazzling Gleam", "Mystical Fire" }, guids={ "fe8f9a", "a58279", "9ef381" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "13d6a2", "7f7d21" } } }, model_GUID="8c5fec" },
  { name="Surskit",    level=1, types={ "Bug", "Water" },     moves={ "Water Gun", "Haze" },          guids={ "f47f95" },                     evoData={ { cost=2, ball=GREEN, gen=3, guids={ "899d71" } } }, model_GUID="15b02f" },
  { name="Masquerain", level=3, types={ "Bug", "Flying" },    moves={ "Quiver Dance", "Air Slash" },  guids={ "6f6a4b", "899d71" }, model_GUID="f71175" },
  { name="Shroomish",  level=1, types={ "Grass" },    moves={ "Stun Spore", "Headbutt" },             guids={ "afce65" },                     evoData={ { cost=2, ball=GREEN, gen=3, guids={ "b2b675" } } }, model_GUID="f9ef26" },
  { name="Breloom",    level=3, types={ "Grass", "Fighting" },    moves={ "Dynamic Punch", "Mega Drain" }, guids={ "54f6b2", "b2b675" }, model_GUID="d12809" },
  { name="Slakoth",    level=2, types={ "Normal" },   moves={ "Slack Off", "Yawn" },                  guids={ "0e7e5b" },                     evoData={ { cost=1, ball=BLUE, gen=3, guids={ "bb497c" } } }, model_GUID="33417e" },
  { name="Vigoroth",   level=3, types={ "Normal" },   moves={ "Throat Chop", "Slash" },               guids={ "167d17", "bb497c" },           evoData={ { cost=3, ball=RED, gen=3, guids={ "9e0b51", "eed73b" } } }, model_GUID="4d9117" },
  { name="Slaking",    level=6, types={ "Normal" },   moves={ "Counter", "Flail" },                   guids={ "beea0e", "9e0b51", "eed73b" }, model_GUID="66bcca" },
  { name="Nincada",    level=2, types={ "Bug", "Ground" }, moves={ "Fury Swipes", "Mud-Slap" },       guids={ "6a52b9" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "2f18cb" } }, { cost=2, ball=BLUE, gen=3, guids={ "b9a6c3" } } }, model_GUID="17a5c0" },
  { name="Ninjask",    level=4, types={ "Bug", "Flying" }, moves={ "Swords Dance", "Leech Life" },    guids={ "5fca25", "2f18cb" }, model_GUID="ae5abc" },
  { name="Shedinja",   level=4, types={ "Bug", "Ghost" },  moves={ "Shadow Ball", "Protect" },        guids={ "1a8813", "b9a6c3" }, model_GUID="ceaedf" },
  { name="Whismur",    level=2, types={ "Normal" },   moves={ "Supersonic", "Astonish" },             guids={ "86e898" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "9b89d3" } } }, model_GUID="c4ec15" },
  { name="Loudred",    level=4, types={ "Normal" },   moves={ "Hyper Voice", "Bite" },                guids={ "c874a8", "9b89d3" },           evoData={ { cost=2, ball=RED, gen=3, guids={ "f2324f", "5b1de6" } } }, model_GUID="d404f1" },
  { name="Exploud",    level=6, types={ "Normal" },   moves={ "Thunder Fang", "Uproar" },             guids={ "bebdb9", "f2324f", "5b1de6" }, model_GUID="1567e6" },
  { name="Makuhita",   level=2, types={ "Fighting" }, moves={ "Arm Thrust", "Fake Out" },             guids={ "52f60d" },                     evoData={ { cost=2, ball=BLUE, gen=3, guids={ "9266af" } } }, model_GUID="b12e69" },
  { name="Hariyama",   level=4, types={ "Fighting" }, moves={ "Smelling Salts", "Vital Throw" },      guids={ "840d39", "9266af" }, model_GUID="25ea1f", custom_scale=0.4 },
  { name="Azurill",    level=0, types={ "Normal", "Fairy" }, moves={ "Bubble Beam", "Splash" },       guids={ "4132b8" },                     evoData={ { cost=2, ball=GREEN, gen=2, guids={ "e76d9a" } } }, model_GUID="3c11df" },
  { name="Nosepass",   level=3, types={ "Rock" },     moves={ "Rock Blast", "Spark" },                guids={ "d3a1d5" },                     evoData={ { cost=2, ball=YELLOW, gen=4, guids={ "261bac" } } }, model_GUID="ef03a1" },
  { name="Skitty",     level=2, types={ "Normal" },   moves={ "Fury Swipes", "Attract" },             guids={ "2ded89" },                     evoData={ { cost=1, ball=BLUE, gen=3, guids={ "9cca58" } } }, model_GUID="701147" },
  -- Gen 3 301-325
  { name="Delcatty",   level=3, types={ "Normal" },   moves={ "Play Rough", "Copycat" },              guids={ "5498b5", "9cca58" }, model_GUID="aa3ec0" },
  { name="Sableye",    level=4, types={ "Dark", "Ghost" }, moves={ "Power Gem", "Knock Off" },        guids={ "d0ddb7" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "ad6245" } } }, model_GUID="184d06", spawn_effect="Physical Attack" },
  { name="Mawile",     level=4, types={ "Steel", "Fairy" }, moves={ "Iron Defense", "Crunch" },       guids={ "825f3c" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "901321" } } }, model_GUID="71f869", offset={x=0, y=0, z=-0.05} },
  { name="Aron",       level=2, types={ "Steel", "Rock" }, moves={ "Headbutt", "Mud-Slap" },          guids={ "2bdf79" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "1ad335" } } }, model_GUID="156c85", spawn_effect="Physical Attack" },
  { name="Lairon",     level=4, types={ "Steel", "Rock" }, moves={ "Metal Claw", "Rock Tomb" },       guids={ "fc819f", "1ad335" }, evoData={ { cost=2, ball=RED, gen=3, guids={ "19c95d", "037e57" } } }, model_GUID="d48d21", custom_scale=0.75 },
  { name="Aggron",     level=6, types={ "Steel", "Rock" }, moves={ "Earthquake", "Iron Tail" },       guids={ "a5daad", "19c95d", "037e57" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "8f5016", "b94e60" } } }, model_GUID="ce1109", custom_scale=0.9 },
  { name="Meditite",   level=2, types={ "Fighting", "Psychic" }, moves={ "Acupressure", "Confusion" },guids={ "8cae23" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "925a8f" } } }, model_GUID="da149f" },
  { name="Medicham",   level=4, types={ "Fighting", "Psychic" }, moves={ "Calm Mind", "Force Palm" },            guids={ "1b2da9", "925a8f" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "19680e", "97834f" } } }, model_GUID="1e9b7e" },
  { name="Electrike",  level=2, types={ "Electric" }, moves={ "Thunder Wave", "Quick Attack" },       guids={ "e37270" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "24b582" } } }, model_GUID="b0e819" },
  { name="Manectric",  level=4, types={ "Electric" }, moves={ "Wild Charge", "Fire Fang" },           guids={ "66eddf", "24b582" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "a96290", "70bf71" } } }, model_GUID="27ca2d", custom_scale=0.9, offset={x=0, y=0, z=-0.03} },
  { name="Plusle",     level=2, types={ "Electric" }, moves={ "Electro Ball", "Swift" },              guids={ "78d266" }, model_GUID="1ff9eb" },
  { name="Minun",      level=2, types={ "Electric" }, moves={ "Copycat", "Nuzzle" },                  guids={ "37efd6" }, model_GUID="401c47" },
  { name="Volbeat",    level=2, types={ "Bug" },      moves={ "Signal Beam", "Moonlight" },           guids={ "b1d72d" }, model_GUID="65b9bd" },
  { name="Illumise",   level=2, types={ "Bug" },      moves={ "Bug Buzz", "Covet" },                  guids={ "d3520a" }, model_GUID="0f073f" },
  { name="Roselia",    level=3, types={ "Grass", "Poison" }, moves={ "Aromatherapy", "Giga Drain" },  guids={ "6c4ab2", "7e165f" }, evoData={ { cost=2, ball=YELLOW, gen=4, guids={ "4aa1de", "46f8dc" } } }, model_GUID="6b1bd7" },
  { name="Gulpin",     level=2, types={ "Poison" },   moves={ "Poison Gas", "Pound" },                guids={ "c08fc1" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "aac35d" } } }, model_GUID="933c2f" },
  { name="Swalot",     level=4, types={ "Poison" },   moves={ "Acid Spray", "Spit Up" },              guids={ "2a3068", "aac35d" }, model_GUID="f5cf00", custom_scale=0.6, offset={x=0, y=0, z=-0.1} },
  { name="Carvanha",   level=2, types={ "Water", "Dark" }, moves={ "Rage", "Bite" },                  guids={ "1f850b" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "7d206a" } } }, model_GUID="1dd6cf", spawn_effect="Physical Attack" },
  { name="Sharpedo",   level=4, types={ "Water", "Dark" }, moves={ "Aqua Jet", "Crunch" },            guids={ "852350", "7d206a" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "3127db", "b7e979" } } }, model_GUID="129bd7", spawn_effect="Physical Attack" },
  { name="Wailmer",    level=3, types={ "Water" },    moves={ "Body Slam", "Brine" },                 guids={ "bf7581" }, evoData={ { cost=2, ball=RED, gen=3, guids={ "58fe14" } } }, model_GUID="b372d4", custom_scale=0.7 },
  { name="Wailord",    level=5, types={ "Water" },    moves={ "Water Spout", "Heavy Slam" },          guids={ "b1528a", "58fe14" }, model_GUID="8bc97a", custom_scale=0.3, offset={x=0, y=1.25, z=0} },
  { name="Numel",      level=2, types={ "Fire", "Ground" }, moves={ "Magnitude", "Ember" },           guids={ "dda685" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "4bfb16" } } }, model_GUID="d8750f", spawn_effect="Physical Attack" },
  { name="Camerupt",   level=4, types={ "Fire", "Ground" }, moves={ "Eruption", "Fissure" },          guids={ "2bbebf", "4bfb16" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "bc021e", "01cfea" } } }, model_GUID="f266b1", spawn_effect="Physical Attack", custom_scale=0.6, offset={x=0, y=0, z=-0.1} },
  { name="Torkoal",    level=3, types={ "Fire" },     moves={ "Iron Defense", "Heat Wave" },       guids={ "61c078" }, model_GUID="ad6f78", spawn_effect="Physical Attack" },
  { name="Spoink",     level=2, types={ "Psychic" },  moves={ "Confuse Ray", "Confusion" },           guids={ "93357d" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "b51484" } } }, model_GUID="a84666" },
  -- Gen 3 326-350
  { name="Grumpig",    level=4, types={ "Psychic" },  moves={ "Psyshock", "Bounce" },                 guids={ "23135a", "b51484" }, model_GUID="fb1029" },
  { name="Spinda",     level=3, types={ "Normal" },   moves={ "Teeter Dance", "Hypnosis" },           guids={ "35a124" }, model_GUID="e3708f" },
  { name="Trapinch",   level=2, types={ "Ground" },   moves={ "Sandstorm", "Bite" },                  guids={ "4c47d2" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "17e4c4" } } }, model_GUID="835c79" },
  { name="Vibrava",    level=4, types={ "Ground", "Dragon" }, moves={ "Dragon Breath", "Bug Buzz" },  guids={ "df1c5c", "17e4c4" }, evoData={ { cost=2, ball=RED, gen=3, guids={ "7bb147", "5974bb" } } }, model_GUID="944da2" },
  { name="Flygon",     level=6, types={ "Ground", "Dragon" }, moves={ "Earth Power", "Dragon Rush" }, guids={ "7574b6", "7bb147", "5974bb" }, model_GUID="c8d0b6" },
  { name="Cacnea",     level=2, types={ "Grass" },    moves={ "Pin Missile", "Absorb" },              guids={ "62770e" }, evoData={ { cost=2, ball=BLUE, gen=3, guids={ "16b950" } } }, model_GUID="c6b9de", spawn_effect="Physical Attack" },
  { name="Cacturne",   level=4, types={ "Grass", "Dark" }, moves={ "Needle Arm", "Spikes" },          guids={ "f8b287", "16b950" }, model_GUID="3a509b" },
  { name="Swablu",     level=2, types={ "Flying", "Normal" }, moves={ "Sing", "Peck" },               guids={ "6b6c4b" }, evoData={ { cost=3, ball=RED, gen=3, guids={ "d2b5c5" } } }, model_GUID="7b086f" },
  { name="Altaria",    level=5, types={ "Dragon", "Flying" }, moves={ "Dragon Pulse", "Pluck" },      guids={ "10ef80", "d2b5c5" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "de28d4", "bfe185" } } }, model_GUID="9a2210" },
  { name="Zangoose",   level=3, types={ "Normal" },   moves={ "Crush Claw", "False Swipe" },          guids={ "5b9f59" }, model_GUID="2a763c" },
  { name="Seviper",    level=3, types={ "Poison" },   moves={ "Poison Tail", "Glare" },               guids={ "b7456d" }, model_GUID="684d0d", spawn_effect="Physical Attack" },
  { name="Lunatone",   level=4, types={ "Rock", "Psychic" }, moves={ "Moonlight", "Psyshock" },       guids={ "79e4f0" }, model_GUID="de6094" },
  { name="Solrock",    level=4, types={ "Rock", "Psychic" }, moves={ "Morning Sun", "Psychic" },      guids={ "563547" }, model_GUID="12e752" },
  { name="Barboach",   level=3, types={ "Water", "Ground" }, moves={ "Mud-Slap", "Aqua Tail" },       guids={ "3bd71b" }, evoData={ { cost=1, ball=YELLOW, gen=3, guids={ "acc732" } } }, model_GUID="5db694" },
  { name="Whiscash",   level=4, types={ "Water", "Ground" }, moves={ "Future Sight", "Earthquake" },  guids={ "f40ebb", "acc732" }, model_GUID="08dca8" },
  { name="Corphish",   level=2, types={ "Water" },    moves={ "Double Hit", "Water Gun" },            guids={ "b159a5" }, evoData={ { cost=2, ball=BLUE, gen=3, guids={ "193126" } } }, model_GUID="7fe1a7" },
  { name="Crawdaunt",  level=4, types={ "Water", "Dark" }, moves={ "Razor Shell", "Knock Off" },      guids={ "cb83d3", "193126" }, model_GUID="e834ac" },
  { name="Baltoy",     level=2, types={ "Ground", "Psychic" }, moves={ "Ancient Power", "Rapid Spin" },guids={ "9d4ab4" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "cadeb5" } } }, model_GUID="9df0cf", spawn_effect="Physical Attack" },
  { name="Claydol",    level=4, types={ "Ground", "Psychic" }, moves={ "Hyper Beam", "Psybeam" },     guids={ "406223", "cadeb5" }, model_GUID="af6fb3", spawn_effect="Physical Attack" },
  { name="Lileep",     level=2, types={ "Rock", "Grass" }, moves={ "Ingrain", "Brine" },              guids={ "c92a11" }, evoData={ { cost=3, ball=RED, gen=3, guids={ "87d1f8" } } }, model_GUID="77fdf5" },
  { name="Cradily",    level=5, types={ "Rock", "Grass" }, moves={ "Ancient Power", "Giga Drain" },   guids={ "6d9326", "87d1f8" }, model_GUID="a8c907" },
  { name="Anorith",    level=2, types={ "Rock", "Bug" }, moves={ "Rock Blast", "Crush Claw" },        guids={ "8ac1a7" }, evoData={ { cost=3, ball=RED, gen=3, guids={ "388697" } } }, model_GUID="5b5bf7" },
  { name="Armaldo",    level=5, types={ "Rock", "Bug" }, moves={ "Ancient Power", "Fury Cutter" },    guids={ "7438a0", "388697" }, model_GUID="812ce0" },
  { name="Feebas",     level=3, types={ "Water" },    moves={ "Flail", "Splash" },                    guids={ "4e5c37" }, evoData={ { cost=2, ball=RED, gen=3, guids={ "51191e" } } }, model_GUID="e88279" },
  { name="Milotic",    level=5, types={ "Water" },    moves={ "Water Pulse", "Dragon Tail" },         guids={ "8933c3", "51191e" }, model_GUID="ab980b", spawn_effect="Physical Attack", offset={x=0, y=1.0, z=0} },
  -- Gen 3 351-375
  { name="Castform",   level=3, types={ "Normal" },   moves={ "Hurricane", "Tackle" },                guids={ "95eabc" }, model_GUID="80fd3b", ball=BLUE },
  { name="Rainy Castform", level=3, types={ "Water" },moves={ "Weather Ball Water", "Rain Dance" },   guids={ "4d93ae" }, model_GUID="f710a9", ball=BLUE },
  { name="Snowy Castform", level=3, types={ "Ice" },  moves={ "Weather Ball Ice", "Hail" },           guids={ "0a700e" }, model_GUID="bd28db", ball=BLUE },
  { name="Sunny Castform", level=3, types={ "Fire" }, moves={ "Weather Ball Fire", "Sunny Day" },     guids={ "1c9e4b" }, model_GUID="e9d2d3", ball=BLUE },
  { name="Kecleon",    level=3, types={ "Normal" },   moves={ "Shadow Claw", "Camouflage" },          guids={ "964da3" }, model_GUID="223e93", spawn_effect="Physical Attack" },
  { name="Shuppet",    level=3, types={ "Ghost" },    moves={ "Shadow Sneak", "Will-O-Wisp" },        guids={ "7db1af" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "8da560" } } }, model_GUID="44e392", spawn_effect="Physical Attack" },
  { name="Banette",    level=5, types={ "Ghost" },    moves={ "Phantom Force", "Knock Off" },         guids={ "8845d6", "8da560" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "ff844c", "e69f55" } } }, model_GUID="36b0e4" },
  { name="Duskull",    level=3, types={ "Ghost" },    moves={ "Astonish", "Disable" },                guids={ "937014" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "6ad885" } } }, model_GUID="34ab19" },
  { name="Dusclops",   level=5, types={ "Ghost" },    moves={ "Shadow Ball", "Payback" },             guids={ "d12d2a", "6ad885" }, evoData={ { cost=1, ball=RED, gen=4, guids={ "59c3d9", "0a1b22" } } }, model_GUID="24a945" },
  { name="Tropius",    level=4, types={ "Grass", "Flying" }, moves={ "Magical Leaf", "Air Slash" },   guids={ "bc8bd9" }, model_GUID="bdb162" },
  { name="Chimecho",   level=4, types={ "Psychic" },  moves={ "Extrasensory", "Heal Bell" },          guids={ "a3b83f", "a78de8" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "c083d7", "0612e3" } } }, model_GUID="85d340" },
  { name="Absol",      level=4, types={ "Dark" },     moves={ "Slash", "Bite" },                      guids={ "ae6097" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "bec9aa" } } }, model_GUID="4f2184" },
  { name="Wynaut",     level=1, types={ "Psychic" },  moves={ "Mirror Coat", "Encore" },              guids={ "00fb6f" }, evoData={ { cost=1, ball=GREEN, gen=2, guids={ "0bbbae" } } }, model_GUID="c16e96" },
  { name="Snorunt",    level=3, types={ "Ice" },      moves={ "Powder Snow", "Bite" },                guids={ "ea6e1a" }, evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "c7849b" } }, { cost=2, ball=YELLOW, gen=4, guids={ "f5d09d" } } }, model_GUID="f8ae98" },
  { name="Glalie",     level=5, types={ "Ice" },      moves={ "Freeze-Dry", "Headbutt" },             guids={ "dda975", "c7849b" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "863de0", "e7322f" } } }, model_GUID="95fc87" },
  { name="Spheal",     level=3, types={ "Ice", "Water" }, moves={ "Powder Snow", "Rollout" },         guids={ "2bdc76" }, evoData={ { cost=1, ball=YELLOW, gen=2, guids={ "c38813" } } }, model_GUID="d81c2a", spawn_effect="Physical Attack" },
  { name="Sealeo",     level=4, types={ "Ice", "Water" }, moves={ "Sheer Cold", "Brine" },            guids={ "3bb7d0", "c38813" }, evoData={ { cost=2, ball=RED, gen=2, guids={ "3e2333", "cd24a1" } } }, model_GUID="9a0533", custom_scale=0.7 },
  { name="Walrein",    level=6, types={ "Ice", "Water" }, moves={ "Blizzard", "Surf" },               guids={ "426535", "3e2333", "cd24a1" }, model_GUID="74dec1", custom_scale=0.65 },
  { name="Clamperl",   level=3, types={ "Water" },    moves={ "Whirlpool", "Iron Defense" },          guids={ "e5e8a2" }, evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "abf53c" } }, { cost=2, ball=YELLOW, gen=2, guids={ "f9ff3b" } } }, model_GUID="b7775d" },
  { name="Huntail",    level=5, types={ "Water" },    moves={ "Water Pulse", "Crunch" },              guids={ "c1decf", "abf53c" }, model_GUID="3a571e" },
  { name="Gorebyss",   level=5, types={ "Water" },    moves={ "Water Pulse", "Psychic" },             guids={ "3f3ac3", "f9ff3b" }, model_GUID="377c59", spawn_effect="Physical Attack" },
  { name="Relicanth",  level=4, types={ "Water", "Rock" }, moves={ "Ancient Power", "Dive" },         guids={ "4f27e5" }, model_GUID="18af25" },
  { name="Luvdisc",    level=3, types={ "Water" },    moves={ "Draining Kiss", "Aqua Ring" },         guids={ "ccfa1c" }, model_GUID="4b04ed", spawn_effect="Physical Attack" },
  { name="Bagon",      level=3, types={ "Dragon" },   moves={ "Dragon Claw", "Ember" },               guids={ "b2c277" }, evoData={ { cost=2, ball=YELLOW, gen=2, guids={ "69d8be" } } }, model_GUID="36437d" },
  { name="Shelgon",    level=5, types={ "Dragon" },   moves={ "Zen Headbutt", "Protect" },            guids={ "bc895a", "69d8be" }, evoData={ { cost=2, ball=RED, gen=2, guids={ "5bca28", "c6ee70" } } }, model_GUID="261dc5", spawn_effect="Physical Attack" },
  { name="Salamence",  level=7, types={ "Dragon", "Flying" }, moves={ "Dragon Tail", "Fly" },         guids={ "17dd50", "5bca28", "c6ee70" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "896101", "d2f176" } } }, model_GUID="32c729" },
  { name="Beldum",     level=2, types={ "Steel", "Psychic" }, moves={ "Iron Defense", "Take Down" },  guids={ "ddca67" }, evoData={ { cost=2, ball=BLUE, gen=2, guids={ "3292b4" } } }, model_GUID="49faaa" },
  { name="Metang",     level=4, types={ "Steel", "Psychic" }, moves={ "Bullet Punch", "Confusion" },  guids={ "61c017", "3292b4" }, evoData={ { cost=3, ball=RED, gen=2, guids={ "566a44", "a7b544" } } }, model_GUID="11e387" },
  -- Gen 3 376-386
  { name="Metagross",  level=7, types={ "Steel", "Psychic" }, moves={ "Meteor Mash", "Psychic" },     guids={ "b13068", "566a44", "a7b544" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "e7382b", "90b29c" } } }, model_GUID="69d7a3", spawn_effect="Status Attack", custom_scale=0.5 },
  { name="Regirock",   level=7, types={ "Rock" },     moves={ "Stone Edge", "Hammer Arm" },           guids={ "f0f700" }, model_GUID="a0b835" },
  { name="Regice",     level=7, types={ "Ice" },      moves={ "Zap Cannon", "Ice Beam" },             guids={ "3cc4aa" }, model_GUID="8864ef" },
  { name="Registeel",  level=7, types={ "Steel" },    moves={ "Iron Head", "Superpower" },            guids={ "c73d22" }, model_GUID="7a9464", spawn_effect="Status Attack" },
  { name="Latias",     level=7, types={ "Dragon", "Psychic" }, moves={ "Dragon Pulse", "Mist Ball" }, guids={ "605532" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "5c8c7e" } } }, model_GUID="ad2b2b" },
  { name="Latios",     level=7, types={ "Dragon", "Psychic" }, moves={ "Dragon Pulse", "Mist Ball" }, guids={ "2ef165" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "75de4c" } } }, model_GUID="bbe9d2" },
  { name="Kyogre",     level=7, types={ "Water" },    moves={ "Muddy Water", "Heavy Slam" },          guids={ "2fd702" }, evoData={ { cost="Blue Orb", ball=LEGENDARY, gen=3, cycle=true, guids={ "b31acd" } } }, model_GUID="a7e721", offset={x=0, y=1.25, z=-0.3}, custom_scale=0.8 },
  { name="Primal Kyogre", level=7, types={ "Water" }, moves={ "Blizzard", "Origin Pulse" },           guids={ "b31acd" }, evoData={ { cost=0, ball=LEGENDARY, gen=3, cycle=true, guids={ "2fd702" } } }, model_GUID="ec46fa", spawn_effect="Primal Evolution", custom_scale=0.5, offset={x=0, y=1.0, z=0} },
  { name="Groudon",    level=7, types={ "Ground" },   moves={ "Earth Power", "Solar Beam" },          guids={ "ef5ee2" }, evoData={ { cost="Red Orb", ball=LEGENDARY, gen=3, cycle=true, guids={ "0d318f" } } }, model_GUID="2bba90", custom_scale=0.3 },
  { name="Primal Groudon", level=7, types={ "Ground", "Fire" }, moves={ "Precipise Blades", "Lava Plume" }, guids={ "0d318f" }, evoData={ { cost=0, ball=LEGENDARY, gen=3, cycle=true, guids={ "ef5ee2" } } }, model_GUID="0e9a71", spawn_effect="Primal Evolution", custom_scale=0.3 },
  { name="Rayquaza",   level=7, types={ "Dragon", "Flying" }, moves={ "Meteor Beam", "Outrage" },     guids={ "3ae691" }, evoData={ { cost="Mega", ball=MEGA, gen=3, cycle=true, guids={ "45f389" } } }, model_GUID="265715" },
  { name="Jirachi",    level=7, types={ "Steel", "Psychic" }, moves={ "Doom Desire", "Psychic" },     guids={ "48d5bf" }, model_GUID="3df5b6" },
  { name="Normal Deoxys", level=7, types={ "Psychic" }, moves={ "Psycho Boost", "Night Shade" },      guids={ "f4e2fe" }, model_GUID="87e928", spawn_effect="Status Attack", ball=LEGENDARY },
  { name="Attack Deoxys", level=7, types={ "Psychic" }, moves={ "Psycho Boost", "Zap Cannon" },       guids={ "14dbf9" }, model_GUID="f020bf", spawn_effect="Status Attack", ball=LEGENDARY },
  { name="Defense Deoxys", level=7, types={ "Psychic" }, moves={ "Psycho Boost", "Counter" },         guids={ "e619f1" }, model_GUID="f257b1", spawn_effect="Status Attack", ball=LEGENDARY },
  { name="Speed Deoxys", level=7, types={ "Psychic" }, moves={ "Psycho Boost", "Stealth Rock" },      guids={ "70bbfa" }, model_GUID="a1a235", spawn_effect="Status Attack", ball=LEGENDARY },

  -- Mega evolutions.
  { name="Mega Sceptile",     level=6, types={ "Grass", "Dragon" }, moves={ "Dual Chop", "Leaf Storm" }, guids={ "3921c1", "3563ba" }, evoData={ { cost=0, ball=RED, gen=3, cycle=true, guids={ "01d5b8", "6acdb2", "8d967c" } } }, model_GUID="d3060f", spawn_effect="Mega Evolve" },
  { name="Mega Blaziken",     level=6, types={ "Fire", "Fighting" }, moves={ "Flare Blitz", "Reversal" }, guids={ "7b81ef", "641ef5" }, evoData={ { cost=0, ball=RED, gen=3, cycle=true, guids={ "b3e3d0", "6b6eaa", "e4fcc7" } } }, model_GUID="54893e", spawn_effect="Mega Evolve" },
  { name="Mega Swampert",     level=6, types={ "Water", "Ground" }, moves={ "Muddy Water", "Focus Blast" }, guids={ "f5dc2f", "045bc8" }, evoData={ { cost=0, ball=RED, gen=3, cycle=true, guids={ "46c207", "0f2fe4", "93c652" } } }, model_GUID="436a81", spawn_effect="Mega Evolve", custom_scale=0.75 },
  { name="Mega Gardevoir",    level=6, types={ "Psychic", "Fairy" }, moves={ "Disarming Voice", "Dream Eater" }, guids={ "13d6a2", "7f7d21" }, evoData={ { cost=0, ball=RED, gen=3, cycle=true, guids={ "fe8f9a", "a58279", "9ef381" } } }, model_GUID="17dce9", spawn_effect="Mega Evolve" },
  { name="Mega Sableye",      level=5, types={ "Dark", "Ghost" }, moves={ "Dream Eater", "Shadow Claw" }, guids={ "ad6245" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "d0ddb7" } } }, model_GUID="6f99c4", spawn_effect="Physical Attack" },
  { name="Mega Mawile",       level=5, types={ "Steel", "Fairy" }, moves={ "Play Rough", "Iron Head" }, guids={ "901321" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "825f3c" } } }, model_GUID="de3150", spawn_effect="Mega Evolve" },
  { name="Mega Aggron",       level=7, types={ "Steel" }, moves={ "Iron Head", "Stone Edge" }, guids={ "8f5016", "b94e60" }, evoData={ { cost=0, ball=RED, gen=3, cycle=true, guids={ "a5daad", "19c95d", "037e57" } } }, model_GUID="103b64", spawn_effect="Mega Evolve", custom_scale=0.4 },
  { name="Mega Medicham",     level=5, types={ "Fighting", "Psychic" }, moves={ "Axe Kick", "Ice Punch" }, guids={ "19680e", "97834f" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "1b2da9", "925a8f" } } }, model_GUID="2c439f", spawn_effect="Mega Evolve" },
  { name="Mega Manectric",    level=5, types={ "Electric" }, moves={ "Thunder Fang", "Psychic Fangs" }, guids={ "a96290", "70bf71" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "66eddf", "24b582" } } }, model_GUID="f4b774", spawn_effect="Mega Evolve", custom_scale=0.7, offset={x=0, y=0, z=-0.1} },
  { name="Mega Sharpedo",     level=5, types={ "Water", "Dark" }, moves={ "Liquidation", "Night Slash" }, guids={ "3127db", "b7e979" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "852350", "7d206a" } } }, model_GUID="16ed43", spawn_effect="Mega Evolve" },
  { name="Mega Camerupt",     level=5, types={ "Fire", "Ground" }, moves={ "Lava Plume", "Stone Edge" }, guids={ "bc021e", "01cfea" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "2bbebf", "4bfb16" } } }, model_GUID="05b840", spawn_effect="Mega Evolve", custom_scale=0.35 },
  { name="Mega Altaria",      level=6, types={ "Dragon", "Fairy" }, moves={ "Sky Attack", "Moonblast" }, guids={ "de28d4", "bfe185" }, evoData={ { cost=0, ball=RED, gen=3, cycle=true, guids={ "10ef80", "d2b5c5" } } }, model_GUID="f74c1f", spawn_effect="Mega Evolve" },
  { name="Mega Banette",      level=6, types={ "Ghost" }, moves={ "Shadow Claw", "Sucker Punch" }, guids={ "ff844c", "e69f55" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "8845d6", "8da560" } } }, model_GUID="cd84f5", spawn_effect="Mega Evolve" },
  { name="Mega Absol",        level=5, types={ "Dark" }, moves={ "Night Slash", "Future Sight" }, guids={ "bec9aa" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "ae6097" } } }, model_GUID="ac5e55", spawn_effect="Mega Evolve" },
  { name="Mega Glalie",       level=6, types={ "Ice" }, moves={ "Ice Fang", "Crunch" }, guids={ "863de0", "e7322f" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "dda975", "c7849b" } } }, model_GUID="f84e20", spawn_effect="Mega Evolve" },
  { name="Mega Metagross",    level=8, types={ "Steel", "Psychic" }, moves={ "Flash Cannon", "Meteor Beam" }, guids={ "e7382b", "90b29c" }, evoData={ { cost=0, ball=RED, gen=3, cycle=true, guids={ "b13068", "566a44", "a7b544" } } }, model_GUID="501574", spawn_effect="Mega Evolve", custom_scale=0.95 },
  { name="Mega Latios",       level=8, types={ "Dragon", "Psychic" }, moves={ "Dragon Breath", "Aura Sphere" }, guids={ "75de4c" }, evoData={ { cost=0, ball=LEGENDARY, gen=3, cycle=true, guids={ "2ef165" } } }, model_GUID="77ff84", spawn_effect="Mega Evolve" },
  { name="Mega Latias",       level=8, types={ "Dragon", "Psychic" }, moves={ "Dragon Breath", "Aerial Ace" }, guids={ "5c8c7e" }, evoData={ { cost=0, ball=LEGENDARY, gen=3, cycle=true, guids={ "605532" } } }, model_GUID="f182f8", spawn_effect="Mega Evolve" },
  { name="Mega Rayquaza",     level=8, types={ "Dragon", "Flying" }, moves={ "Dragon Ascent", "Dragon Pulse" }, guids={ "45f389" }, evoData={ { cost=0, ball=LEGENDARY, gen=3, cycle=true, guids={ "3ae691" } } }, model_GUID="147c09", spawn_effect="Mega Evolve", custom_scale=0.7 },
  { name="Mega Salamence",    level=8, types={ "Dragon", "Flying" }, moves={ "Dragon Breath", "Fire Blast" }, guids={ "896101", "d2f176" }, evoData={ { cost=0, ball=LEGENDARY, gen=3, cycle=true, guids={ "17dd50", "5bca28", "c6ee70" } } }, model_GUID="ed6dfd", spawn_effect="Mega Evolve" },
  { name="Mega Chimecho",     level=5, types={ "Psychic", "Steel" }, moves={ "Dazzling Gleam", "Psychic" }, guids={ "c083d7", "0612e3" }, evoData={ { cost=0, ball=YELLOW, gen=3, cycle=true, guids={ "a3b83f", "a78de8" } } } }, -- TODO: Needs model.
}

gen4PokemonData =
{
  -- Gen 4 387-400
  { name="Turtwig",    level=1, types={ "Grass" },    moves={ "Withdraw", "Absorb" },            guids={ "cacd94" },                              evoData={ { cost=2, ball=BLUE, gen=4, guids={ "ff1b43" } } }, model_GUID="02eeef" },
  { name="Grotle",     level=3, types={ "Grass" },    moves={ "Mega Drain", "Bite" },            guids={ "20d958", "ff1b43" },                    evoData={ { cost=2, ball=RED, gen=4, guids={ "cfebcb", "3f2eaa" } } }, model_GUID="89af8c", custom_scale=0.9 },
  { name="Torterra",   level=5, types={ "Grass", "Ground" }, moves={ "Razor Leaf", "Earthquake" }, guids={ "902030", "cfebcb", "3f2eaa" }, model_GUID="542b09", custom_scale=0.65 },
  { name="Chimchar",   level=1, types={ "Fire" },     moves={ "Ember", "Taunt" },                guids={ "cd904d" },                              evoData={ { cost=2, ball=BLUE, gen=4, guids={ "8cd8f7" } } }, model_GUID="cc51f2", spawn_effect="Physical Attack" },
  { name="Monferno",   level=3, types={ "Fire", "Fighting" },moves={ "Flame Wheel", "Mach Punch" }, guids={ "2ba1c0", "8cd8f7" },                 evoData={ { cost=2, ball=RED, gen=4, guids={ "aa0bb2", "38ad9f" } } }, model_GUID="c2e9c2", spawn_effect="Physical Attack" },
  { name="Infernape",  level=5, types={ "Fire", "Fighting" },moves={ "Close Combat", "Raging Fury" }, guids={ "6c7166", "aa0bb2", "38ad9f" }, model_GUID="b04364", custom_scale=0.85 },
  { name="Piplup",     level=1, types={ "Water" },    moves={ "Water Gun", "Peck" },             guids={ "ad1a53" },                              evoData={ { cost=2, ball=BLUE, gen=4, guids={ "707fe1" } } }, model_GUID="c9b643" },
  { name="Prinplup",   level=3, types={ "Water" },    moves={ "Metal Claw", "Bubble Beam" },     guids={ "7a3199", "707fe1" },                    evoData={ { cost=2, ball=RED, gen=4, guids={ "0e9d7b", "fe588c" } } }, model_GUID="7931f6" },
  { name="Empoleon",   level=5, types={ "Water", "Steel" }, moves={ "Hydro Pump", "Drill Peck" },guids={ "3cdce6", "0e9d7b", "fe588c" }, model_GUID="85b6c8", spawn_effect="Status Attack" },
  { name="Starly",     level=1, types={ "Flying", "Normal" }, moves={ "Quick Attack", "Roost" }, guids={ "d5a011" },                         evoData={ { cost=2, ball=BLUE, gen=4, guids={ "4bb90a" } } }, model_GUID="befb97" },
  { name="Staravia",   level=3, types={ "Flying", "Normal" }, moves={ "Wing Attack", "Whirlwind" }, guids={ "54063f", "4bb90a" },               evoData={ { cost=2, ball=RED, gen=4, guids={ "799437", "7ab20e" } } }, model_GUID="2ea0b8", spawn_effect="Physical Attack" },
  { name="Staraptor",  level=5, types={ "Flying", "Normal" }, moves={ "Close Combat", "Aerial Ace" }, guids={ "efc2ec", "799437", "7ab20e" }, model_GUID="88b32f" },
  { name="Bidoof",     level=1, types={ "Normal" },   moves={ "Defense Curl", "Rollout" },       guids={ "8d27fd" },                              evoData={ { cost=2, ball=GREEN, gen=4, guids={ "29158c" } } }, model_GUID="9cf4d2", spawn_effect="Physical Attack" },
  { name="Bibarel",    level=3, types={ "Normal", "Water" }, moves={ "Hyper Fang", "Water Gun" },guids={ "56a0e9", "29158c" }, model_GUID="8d4c2c" },
  -- Gen 4 401-425
  { name="Kricketot",  level=1, types={ "Bug" },      moves={ "Tackle", "Growl" },               guids={ "f48a32" }, evoData={ { cost=2, ball=GREEN, gen=4, guids={ "9adb49" } } }, model_GUID="196500" },
  { name="Kricketune", level=3, types={ "Bug" },      moves={ "Fury Cutter", "Night Slash" },    guids={ "8351a3", "9adb49" }, model_GUID="7d4ba3" },
  { name="Shinx",      level=1, types={ "Electric" }, moves={ "Thunder Shock", "Roar" },         guids={ "1215b7" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "fee2be" } } }, model_GUID="19c7df" },
  { name="Luxio",      level=3, types={ "Electric" }, moves={ "Volt Switch", "Bite" },           guids={ "bfac8d", "fee2be" }, evoData={ { cost=1, ball=YELLOW, gen=4, guids={ "d7fc60", "782359" } } }, model_GUID="6a78f1" },
  { name="Luxray",     level=4, types={ "Electric" }, moves={ "Thunder Fang", "Crunch" },        guids={ "dbd6ac", "d7fc60", "782359" }, model_GUID="2fe437" },
  { name="Budew",      level=1, types={ "Grass", "Poison" }, moves={ "Stun Spore", "Absorb" },   guids={ "235bf8" }, evoData={ { cost=2, ball=BLUE, gen=3, guids={ "7e165f" } } }, model_GUID="b6d264" },
  { name="Roserade",   level=5, types={ "Grass", "Poison" }, moves={ "Magical Leaf", "Toxic Spikes" }, guids={ "dbf33b", "4aa1de", "46f8dc" }, model_GUID="62a471", spawn_effect="Physical Attack" },
  { name="Cranidos",   level=2, types={ "Rock" },     moves={ "Assurance", "Headbutt" },         guids={ "e230a3" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "9bc735" } } }, model_GUID="c3204c", spawn_effect="Physical Attack" },
  { name="Rampardos",  level=4, types={ "Rock" },     moves={ "Zen Headbutt", "Head Smash" },    guids={ "fa103e", "9bc735" }, model_GUID="163e32", spawn_effect="Physical Attack" },
  { name="Shieldon",   level=2, types={ "Rock", "Steel" }, moves={ "Metal Sound", "Protect" },   guids={ "f7d63e" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "c13d61" } } }, model_GUID="1d508b" },
  { name="Bastiodon",  level=4, types={ "Rock", "Steel" }, moves={ "Wide Guard", "Iron Head" },  guids={ "904ec7", "c13d61" }, model_GUID="9d8d6d", custom_scale=0.7 },
  { name="Sandy Burmy", level=1, types={ "Bug" },     moves={ "Hidden Power", "String Shot" }, guids={ "5d3c35" }, evoData={ { cost=2, ball=GREEN, gen=4, guids={ "679480", "0cf537", "bdc120" } }, { cost=2, ball=GREEN, gen=4, guids={ "50757b" } } }, model_GUID="2d9ce9", ball=PINK }, -- Sandy
  { name="Plant Burmy", level=1, types={ "Bug" },     moves={ "Hidden Power", "String Shot" }, guids={ "398f3a" }, evoData={ { cost=2, ball=GREEN, gen=4, guids={ "679480", "0cf537", "bdc120" } }, { cost=2, ball=GREEN, gen=4, guids={ "b53138" } } }, model_GUID="507709", ball=PINK }, -- Plant
  { name="Trash Burmy", level=1, types={ "Bug" },     moves={ "Hidden Power", "String Shot" }, guids={ "ebd97a" }, evoData={ { cost=2, ball=GREEN, gen=4, guids={ "679480", "0cf537", "bdc120" } }, { cost=2, ball=GREEN, gen=4, guids={ "2ed231" } } }, model_GUID="fda7da", ball=PINK }, -- Trash
  { name="Mothim",     level=3, types={ "Bug", "Flying" }, moves={ "Quiver Dance", "Air Slash" }, guids={ "f97f24", "679480", "0cf537", "bdc120" }, model_GUID="687bf9" },
  { name="Sandy Wormadam", level=3, types={ "Bug", "Ground" }, moves={ "Fissure", "Bug Bite" },  guids={ "1f8c4d", "50757b" }, model_GUID="a52d8f", ball=GREEN }, -- Sandy
  { name="Plant Wormadam", level=3, types={ "Bug", "Grass" }, moves={ "Quiver Dance", "Energy Ball" }, guids={ "ae14d4", "b53138" }, model_GUID="b143f6", ball=GREEN }, -- Plant
  { name="Trash Wormadam", level=3, types={ "Bug", "Steel" }, moves={ "Quiver Dance", "Metal Burst" }, guids={ "9bfe68", "2ed231" }, model_GUID="56eb94", ball=GREEN }, -- Trash
  { name="Combee",     level=2, types={ "Bug", "Flying" }, moves={ "Sweet Scent", "Gust" }, guids={ "1e577e" }, evoData={ { cost=1, ball=BLUE, gen=4, guids={ "caab8e" } } }, model_GUID="2b2090" },
  { name="Vespiquen",  level=3, types={ "Bug", "Flying" }, moves={ "Aromatic Mist", "Attack Order" }, guids={ "13494d", "caab8e" }, model_GUID="5ab244" },
  { name="Pachirisu",  level=2, types={ "Electric" }, moves={ "Super Fang", "Spark" }, guids={ "bc8f33" }, model_GUID="9045db" },
  { name="Buizel",     level=2, types={ "Water" }, moves={ "Sonic Boom", "Aqua Jet" }, guids={ "445666" }, evoData={ { cost=1, ball=GREEN, gen=4, guids={ "4e2c8a" } } }, model_GUID="a6a1a5" },
  { name="Floatzel",   level=3, types={ "Water" }, moves={ "Whirlpool", "Razor Wind" }, guids={ "d3a821", "4e2c8a" }, model_GUID="136547", offset={x=0, y=0, z=0.05} },
  { name="Cherubi",    level=2, types={ "Grass" }, moves={ "Leech Seed", "Tackle" }, guids={ "d8ddcb" }, evoData={ { cost=1, ball=GREEN, gen=4, guids={ "c2a7bd" } } }, model_GUID="a6957e" },
  { name="Cherrim",    level=3, types={ "Grass" }, moves={ "Sunny Day", "Solar Beam" }, guids={ "72c4b8", "c2a7bd" }, model_GUID="d4aaec", spawn_effect="Physical Attack" },
  { name="East Shellos", level=2, types={ "Water" }, moves={ "Mud-Slap", "Recover" }, guids={ "aa6021" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "9cf8af" } } }, model_GUID="a02a0e" },
  { name="West Shellos", level=2, types={ "Water" }, moves={ "Water Gun", "Recover" }, guids={ "45b543" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "ad747a" } } }, model_GUID="18c1c1" },
  { name="East Gastrodon", level=4, types={ "Water", "Ground" }, moves={ "Muddy Water", "Hidden Power" }, guids={ "8d67bb", "9cf8af" }, model_GUID="a2bd5c" },
  { name="West Gastrodon", level=4, types={ "Water", "Ground" }, moves={ "Hidden Power", "Mud Bomb" }, guids={ "dc4e3a", "ad747a" }, model_GUID="c75552" },
  { name="Ambipom",    level=4, types={ "Normal" }, moves={ "Double Hit", "Nasty Plot" }, guids={ "892365", "06f1a9" }, model_GUID="c47da4" },
  { name="Drifloon",   level=2, types={ "Ghost", "Flying" }, moves={ "Astonish", "Gust" }, guids={ "04345a" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "f87c2e" } } }, model_GUID="d98126", spawn_effect="Physical Attack" },
  -- Gen 4 426-450
  { name="Drifblim",   level=4, types={ "Ghost", "Flying" }, moves={ "Ominous Wind", "Explosion" }, guids={ "36bed9", "f87c2e" }, model_GUID="6fb952", spawn_effect="Physical Attack" },
  { name="Buneary",    level=2, types={ "Normal" },   moves={ "Quick Attack", "Jump Kick" },     guids={ "73996a" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "1d4012" } } }, model_GUID="e6b1f1", spawn_effect="Physical Attack" },
  { name="Lopunny",    level=4, types={ "Normal" },   moves={ "Dizzy Punch", "Bounce" },         guids={ "ca0de0", "1d4012" }, evoData={ { cost="Mega", ball=MEGA, gen=4, cycle=true, guids={ "782df2", "c8a630" } } }, model_GUID="48d04f", spawn_effect="Physical Attack" },
  { name="Mismagius",  level=5, types={ "Ghost" },    moves={ "Phantom Force", "Psywave" },     guids={ "f0ec65", "496256" }, model_GUID="a81efd", spawn_effect="Physical Attack" },
  { name="Honchkrow",  level=4, types={ "Dark", "Flying" }, moves={ "Comeuppance", "Wing Attack" }, guids={ "a76d5e", "4f1558" }, model_GUID="67c739" },
  { name="Glameow",    level=2, types={ "Normal" },   moves={ "Fury Swipes", "Charm" },          guids={ "c31fe7" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "468535" } } }, model_GUID="bf33c1" },
  { name="Purugly",    level=4, types={ "Normal" },   moves={ "Sucker Punch", "Slash" },         guids={ "739efa", "468535" }, model_GUID="40381a" },
  { name="Chingling",  level=2, types={ "Psychic" },  moves={ "Confusion", "Yawn" },             guids={ "3c321b" }, evoData={ { cost=2, ball=YELLOW, gen=3, guids={ "a78de8" } } }, model_GUID="077587" },
  { name="Stunky",     level=2, types={ "Poison", "Dark" },   moves={ "Poison Gas", "Scratch" }, guids={ "350900" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "ce1be6" } } }, model_GUID="4f2c9f" },
  { name="Skuntank",   level=4, types={ "Poison", "Dark" }, moves={ "Flamethrower", "Night Slash" }, guids={ "b80e55", "ce1be6" }, model_GUID="142926" },
  { name="Bronzor",    level=2, types={ "Steel", "Psychic" }, moves={ "Confuse Ray", "Confusion" }, guids={ "76ab01" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "793185" } } }, model_GUID="f3570a", spawn_effect="Physical Attack" },
  { name="Bronzong",   level=4, types={ "Steel", "Psychic" }, moves={ "Extrasensory", "Gyro Ball" }, guids={ "c70883", "793185" }, model_GUID="422285" },
  { name="Bonsly",     level=1, types={ "Rock" },     moves={ "Copycat", "Low Kick" },           guids={ "992ede" }, evoData={ { cost=2, ball=GREEN, gen=2, guids={ "eeca81" } } }, model_GUID="e95207", spawn_effect="Physical Attack" },
  { name="Mime Jr.",   level=1, types={ "Psychic", "Fairy" }, moves={ "Meditate", "Tickle" },    guids={ "6a4ef5" }, evoData={ { cost=2, ball=GREEN, gen=1, guids={ "8315de" } }, { cost=2, ball=GREEN, gen=8, guids={ "8cfe98" }, model_GUID="8e52ef" } }, model_GUID="c86aff", spawn_effect="Physical Attack" },
  { name="Happiny",    level=1, types={ "Normal" },   moves={ "Sweet Kiss", "Pound" },           guids={ "f6fbf5" }, evoData={ { cost=3, ball=YELLOW, gen=1, guids={ "ee10ff" } } }, model_GUID="8f2981" },
  { name="Chatot",     level=3, types={ "Flying", "Normal" }, moves={ "Hyper Voice", "Chatter" }, guids={ "85be31" }, model_GUID="8a2ee8" },
  { name="Spiritomb",  level=3, types={ "Ghost", "Dark" }, moves={ "Shadow Sneak", "Dark Pulse" }, guids={ "3ade63" }, model_GUID="0a6f0d" },
  { name="Gible",      level=2, types={ "Dragon", "Ground" },   moves={ "Sand Tomb", "Bite" }, guids={ "190d89" }, evoData={ { cost=2, ball=BLUE, gen=4, guids={ "9b47dd" } } }, model_GUID="a7c469", spawn_effect="Physical Attack" },
  { name="Gabite",     level=4, types={ "Dragon", "Ground" },   moves={ "Dragon Rage", "Dig" }, guids={ "75db3d", "9b47dd" }, evoData={ { cost=3, ball=RED, gen=4, guids={ "998146", "935739" } } }, model_GUID="284eb4" },
  { name="Garchomp",   level=7, types={ "Dragon", "Ground" },   moves={ "Dragon Rush", "Bulldoze" }, guids={ "16aa2c", "998146", "935739" }, evoData={ { cost="Mega", ball=MEGA, gen=4, cycle=true, guids={ "c45879", "e044da" } } }, model_GUID="232447", spawn_effect="Status Attack", custom_scale=0.8, offset={x=0, y=0, z=-0.05} },
  { name="Munchlax",   level=2, types={ "Normal" },   moves={ "Rest", "Lick" },                  guids={ "ca2ab3" }, evoData={ { cost=2, ball=BLUE, gen=1, guids={ "a017f9" } } }, model_GUID="7315d0", spawn_effect="Physical Attack" },
  { name="Riolu",      level=2, types={ "Fighting" }, moves={ "Quick Attack", "Counter" },       guids={ "7bef81" }, evoData={ { cost=2, ball=YELLOW, gen=4, guids={ "153e4f" } } }, model_GUID="b900ca" },
  { name="Lucario",    level=4, types={ "Fighting", "Steel" }, moves={ "Force Palm", "Dragon Pulse" }, guids={ "cd3901", "153e4f" }, evoData={ { cost="Mega", ball=MEGA, gen=4, cycle=true, guids={ "c203c6", "95d4d4" } } }, model_GUID="6f7542" },
  { name="Hippopotas", level=2, types={ "Ground" },   moves={ "Sand Tomb", "Sandstorm" },        guids={ "48588f" }, evoData={ { cost=2, ball=YELLOW, gen=4, guids={ "5f7329" } } }, model_GUID="0a645f", spawn_effect="Physical Attack", offset={x=0, y=0, z=-0.1} },
  { name="Hippowdon",  level=4, types={ "Ground" },   moves={ "Earthquake", "Crunch" },          guids={ "073c65", "5f7329" }, model_GUID="b43ee9", spawn_effect="Physical Attack", custom_scale=0.3, offset={x=0, y=0, z=-0.04} },  
  -- Gen 4 451-475
  { name="Skorupi",    level=2, types={ "Poison", "Bug" }, moves={ "Pin Missile", "Poison Fang" }, guids={ "12a4d7" }, evoData={ { cost=2, ball=YELLOW, gen=4, guids={ "2cdfe7" } } }, model_GUID="f7b7d8" },
  { name="Drapion",    level=4, types={ "Poison", "Dark" }, moves={ "Cross Poison", "Crunch" }, guids={ "7faa88", "2cdfe7" }, model_GUID="5178e7", custom_scale=0.8 },
  { name="Croagunk",   level=2, types={ "Poison", "Fighting" }, moves={ "Mud-Slap", "Low Kick" }, guids={ "8a87c5" }, evoData={ { cost=2, ball=YELLOW, gen=4, guids={ "edeba6" } } }, model_GUID="924639" },
  { name="Toxicroak",  level=4, types={ "Poison", "Fighting" }, moves={ "Poison Jab", "Revenge" }, guids={ "2f6517", "edeba6" }, model_GUID="8604f0" },
  { name="Carnivine",  level=3, types={ "Grass" }, moves={ "Crunch", "Ingrain" }, guids={ "6ae25c" }, model_GUID="f29340" },
  { name="Finneon",    level=2, types={ "Water" }, moves={ "Aqua Ring", "U-Turn" }, guids={ "4e7881" }, evoData={ { cost=2, ball=YELLOW, gen=4, guids={ "eff442" } } }, model_GUID="ee9976" },
  { name="Lumineon",   level=4, types={ "Water" }, moves={ "Water Pulse", "Rain Dance" }, guids={ "5e8443", "eff442" }, model_GUID="5d8ca7", spawn_effect="Physical Attack" },
  { name="Mantyke",    level=1, types={ "Water", "Flying" }, moves={ "Bubble", "Agility" }, guids={ "ea3133" }, evoData={ { cost=2, ball=BLUE, gen=2, guids={ "6fd093" } } }, model_GUID="ac4168", spawn_effect="Physical Attack" },
  { name="Snover",     level=4, types={ "Grass", "Ice" }, moves={ "Ice Shard", "Leafage" }, guids={ "770f5b" }, evoData={ { cost=2, ball=RED, gen=4, guids={ "985066" } } }, model_GUID="b548ea" },
  { name="Abomasnow",  level=6, types={ "Grass", "Ice" }, moves={ "Wood Hammer", "Sheer Cold" }, guids={ "fc423f", "985066" }, evoData={ { cost="Mega", ball=MEGA, gen=4, cycle=true, guids={ "c0f0bc", "72076f" } } }, model_GUID="c003e7", custom_scale=0.8 },
  { name="Weavile",    level=4, types={ "Dark", "Ice" }, moves={ "Night Slash", "Ice Shard" }, guids={ "57a02c", "9b517e" }, model_GUID="ded7dd", spawn_effect="Physical Attack" },
  { name="Magnezone",  level=6, types={ "Electric", "Steel" }, moves={ "Magnet Bomb", "Electro Ball" }, guids={ "c53a51", "dedadf", "618210" }, model_GUID="e901bd" },
  { name="Lickilicky", level=5, types={ "Normal" }, moves={ "Power Whip", "Me First" }, guids={ "dc8977", "5d1069" }, model_GUID="8a81dd", spawn_effect="Physical Attack" },
  { name="Rhyperior",  level=7, types={ "Ground", "Rock" }, moves={ "Rock Wrecker", "Megahorn" }, guids={ "ee964b", "1665fe", "f2b985" }, model_GUID="860bbc", spawn_effect="Physical Attack", custom_scale=0.65 },
  { name="Tangrowth",  level=4, types={ "Grass" }, moves={ "Wring Out", "Power Whip" }, guids={ "c5ddd7", "5965cd" }, model_GUID="49f976", custom_scale=0.7, offset={x=0, y=0, z=0} },
  { name="Electivire", level=6, types={ "Electric" }, moves={ "Giga Impact", "Thunder" }, guids={ "6787dc", "11f593", "896d6e" }, model_GUID="15ad3d", custom_scale=0.8 },
  { name="Magmortar",  level=6, types={ "Fire" }, moves={ "Hyper Beam", "Fire Blast" }, guids={ "f7000a", "bc96fe", "ebafae" }, model_GUID="1ba6f9" },
  { name="Togekiss",   level=4, types={ "Fairy", "Flying" }, moves={ "Aura Sphere", "Air Slash" }, guids={ "d9bab2", "020ecc", "3786d0" }, model_GUID="94ed87" },
  { name="Yanmega",    level=4, types={ "Bug", "Flying" }, moves={ "Bug Buzz", "Air Slash" }, guids={ "040022", "e093cb" }, model_GUID="5efa44" },
  { name="Leafeon",    level=5, types={ "Grass" }, moves={ "Grass Whistle", "Sappy Seed" }, guids={ "e6b356", "25ef7b" }, model_GUID="9f14e6" },
  { name="Glaceon",    level=5, types={ "Ice" }, moves={ "Freezy Frost", "Barrier" }, guids={ "d990cc", "549166" }, model_GUID="8884ba" },
  { name="Gliscor",    level=5, types={ "Ground", "Flying" }, moves={ "Crabhammer", "Night Slash" }, guids={ "9344ba", "96a4fa" }, model_GUID="0389d0" },
  { name="Mamoswine",  level=6, types={ "Ice", "Ground" }, moves={ "Earthquake", "Blizzard" }, guids={ "ae18c1", "bac5e2", "3e9a5e" }, model_GUID="3f4e29", custom_scale=0.6 },
  { name="Porygon-Z",  level=5, types={ "Normal" }, moves={ "Zap Cannon", "Hyper Beam" }, guids={ "8b5275", "89624f", "ccdbee" }, model_GUID="42158e" },
  { name="Gallade",    level=5, types={ "Psychic", "Fighting" }, moves={ "Close Combat", "Psycho Cut" }, guids={ "e00be3", "491632", "2956c7" }, evoData={ { cost="Mega", ball=MEGA, gen=4, cycle=true, guids={ "762e3d", "f77da3" } } }, model_GUID="04f582" },  
  -- Gen 4 476-493
  { name="Probopass",  level=5, types={ "Rock", "Steel" }, moves={ "Magnet Bomb", "Rock Slide" },guids={ "c36f28", "261bac" }, model_GUID="3a1a8d" },
  { name="Dusknoir",   level=6, types={ "Ghost" },    moves={ "Shadow Punch", "Future Sight" },  guids={ "40e69b", "59c3d9", "0a1b22" }, model_GUID="14f5fa" },
  { name="Froslass",   level=5, types={ "Ice", "Ghost" }, moves={ "Ice Shard", "Hex" },  guids={ "44d36b", "f5d09d" }, evoData={ { cost="Mega", ball=MEGA, gen=4, cycle=true, guids={ "d4b2b7", "930441" } } }, model_GUID="21d87a" },
  { name="Rotom",      level=3, types={ "Electric", "Ghost" }, moves={ "Ominous Wind", "Thunder Shock" }, guids={ "631643" }, model_GUID="480b20", spawn_effect="Physical Attack", ball=BLUE },
  { name="Mow Rotom",  level=3, types={ "Electric", "Grass" }, moves={ "Thunder Shock", "Leaf Storm" }, guids={ "9c2b53" }, model_GUID="cd771b", ball=BLUE },
  { name="Heat Rotom", level=3, types={ "Electric", "Fire" }, moves={ "Thunder Shock", "Overheat" }, guids={ "119ba7" }, model_GUID="154dd8", ball=BLUE },
  { name="Wash Rotom", level=3, types={ "Electric", "Water" }, moves={ "Thunder Shock", "Hydro Pump" }, guids={ "e60f49" }, model_GUID="c5364f", ball=BLUE },
  { name="Fan Rotom",  level=3, types={ "Electric", "Flying" }, moves={ "Discharge", "Air Slash" }, guids={ "2fc387" }, model_GUID="274d14", spawn_effect="Physical Attack", ball=BLUE },
  { name="Frost Rotom",level=3, types={ "Electric", "Ice" }, moves={ "Thunder Shock", "Blizzard" }, guids={ "313204" }, model_GUID="671b5d", ball=BLUE },
  { name="Uxie",       level=7, types={ "Psychic" },  moves={ "Mystical Power", "Thunder Punch" }, guids={ "7161bc" }, model_GUID="0d927b", spawn_effect="Physical Attack" },
  { name="Mesprit",    level=7, types={ "Psychic" },  moves={ "Mystical Power", "Fire Punch" },    guids={ "206d05" }, model_GUID="ac091c" },
  { name="Azelf",      level=7, types={ "Psychic" },  moves={ "Mystical Power", "Ice Punch" },     guids={ "51e346" }, model_GUID="5e98bd", spawn_effect="Physical Attack" },
  { name="Dialga",     level=7, types={ "Steel", "Dragon" }, moves={ "Roar of Time", "Iron Tail" }, guids={ "99da0e" }, model_GUID="9e4620", spawn_effect="Physical Attack", custom_scale=0.65, offset={x=0, y=0, z=-0.03}, ball=LEGENDARY },
  { name="Origin Dialga", level=7, types={ "Steel", "Dragon" }, moves={ "Dragon Breath", "Flash Cannon" },  guids={ "d8b8d3" }, model_GUID="0ab0bc", spawn_effect="Physical Attack", custom_scale=0.65, offset={x=0, y=0, z=-0.06}, ball=LEGENDARY },
  { name="Palkia",     level=7, types={ "Water", "Dragon" },    moves={ "Spacial Rend", "Aqua Tail" },  guids={ "99bbae" }, model_GUID="2b4616", custom_scale=0.5, offset={x=0, y=0, z=-0.03}, ball=LEGENDARY },
  { name="Origin Palkia", level=7, types={ "Water", "Dragon" }, moves={ "Dragon Pulse", "Hydro Pump" }, guids={ "6a9a3d" }, model_GUID="7bdc11", custom_scale=1.5, offset={x=0, y=0, z=-0.08}, ball=LEGENDARY },
  { name="Heatran",    level=7, types={ "Fire", "Steel" }, moves={ "Magma Storm", "Iron Head" },    guids={ "d6bd2b" }, model_GUID="7343d2", spawn_effect="Status Attack", custom_scale=0.4, offset={x=0, y=0, z=-0.06} },
  { name="Regigigas",  level=7, types={ "Normal" }, moves={ "Heavy Slam", "Crush Grip" },        guids={ "04ae8e" }, model_GUID="0ddf47", spawn_effect="Status Attack", custom_scale=0.45, offset={x=0, y=0, z=-0.03} },
  { name="Giratina",   level=7, types={ "Dragon", "Ghost" }, moves={ "Shadow Claw", "Dragon Claw" }, guids={ "e1ea2d" }, model_GUID="086e6b", custom_scale=0.3, ball=LEGENDARY },
  { name="Origin Giratina", level=7, types={ "Ghost", "Dragon" }, moves={ "Dragon Breath", "Shadow Force" }, guids={ "aece39" }, model_GUID="4dd635", custom_scale=0.3, ball=LEGENDARY },
  { name="Cresselia",  level=7, types={ "Psychic" },  moves={ "Lunar Blessing", "Psycho Cut" },     guids={ "d22af4" }, model_GUID="a4dcf2" },
  { name="Phione",     level=5, types={ "Water" },    moves={ "Take Heart", "Dive" },            guids={ "3379b4" }, model_GUID="b0bae4", spawn_effect="Physical Attack" },
  { name="Manaphy",    level=7, types={ "Water" },    moves={ "Take Heart", "Water Pulse" },      guids={ "4eb57f" }, model_GUID="5cc85d" },
  { name="Darkrai",    level=7, types={ "Dark" },     moves={ "Dream Eater", "Dark Pulse" },     guids={ "dd87aa" }, model_GUID="aa2219", spawn_effect="Status Attack" },
  { name="Land Shaymin",level=7, types={ "Grass" },   moves={ "Play Rough", "Seed Flare" }, guids={ "821809" }, model_GUID="dca507", spawn_effect="Status Attack", ball=LEGENDARY },
  { name="Sky Shaymin",level=7, types={ "Flying", "Grass" }, moves={ "Magical Leaf", "Air Slash" }, guids={ "215c3b" }, model_GUID="1e692f", spawn_effect="Status Attack", ball=LEGENDARY },
  { name="Arceus",     level=7, types={ "Normal" },   moves={ "Future Sight", "Judgement" },      guids={ "fbb914" }, model_GUID="bf4818", custom_scale=0.65 },

  -- Mega evolutions.
  { name="Mega Lopunny",     level=5, types={ "Normal", "Fighting" }, moves={ "High Jump Kick", "Mega Kick" }, guids={ "782df2", "c8a630" }, evoData={ { cost=0, ball=BLUE, gen=4, cycle=true, guids={ "ca0de0", "1d4012" } } }, model_GUID="0308a7", spawn_effect="Mega Evolve" },
  { name="Mega Garchomp",    level=8, types={ "Dragon", "Ground" }, moves={ "Dragon Breath", "Stone Edge" }, guids={ "c45879", "e044da" }, evoData={ { cost=0, ball=RED, gen=4, cycle=true, guids={ "16aa2c", "998146", "935739" } } }, model_GUID="233df5", spawn_effect="Mega Evolve" },
  { name="Mega Lucario",     level=5, types={ "Fighting", "Steel" }, moves={ "Meteor Mash", "Aura Sphere" }, guids={ "c203c6", "95d4d4" }, evoData={ { cost=0, ball=YELLOW, gen=4, cycle=true, guids={ "cd3901", "153e4f" } } }, model_GUID="a2c359", spawn_effect="Mega Evolve" },
  { name="Mega Abomasnow",   level=7, types={ "Grass", "Ice" }, moves={ "Ice Punch", "Razor Leaf" }, guids={ "c0f0bc", "72076f" }, evoData={ { cost=0, ball=YELLOW, gen=4, cycle=true, guids={ "fc423f", "985066" } } }, model_GUID="b1ae77", spawn_effect="Mega Evolve", custom_scale=0.8, offset={x=0, y=0, z=-0.05} },
  { name="Mega Gallade",     level=6, types={ "Psychic", "Fighting" }, moves={ "Sacred Sword", "Leaf Blade" }, guids={ "762e3d", "f77da3" }, evoData={ { cost=0, ball=YELLOW, gen=4, cycle=true, guids={ "e00be3", "491632", "2956c7" } } }, model_GUID="8ad8e0", spawn_effect="Mega Evolve", offset={x=0, y=0, z=-0.05} },
  { name="Mega Froslass",    level=6, types={ "Ice", "Ghost" }, moves={ "Frost Breath", "Psychic" }, guids={ "d4b2b7", "930441" }, evoData={ { cost=0, ball=YELLOW, gen=4, cycle=true, guids={ "44d36b", "f5d09d" } } }, model_GUID="c150e8", offset={x=0, y=0.15, z=0}, spawn_effect="Mega Evolve" },
}

gen5PokemonData =
{
  -- Gen 5 494-525
  { name="Victini",         level=7, types={ "Psychic", "Fire" }, moves={ "Zen Headbutt", "Searing Shot" }, guids={ "49fa0d" }, model_GUID="a96393", spawn_effect="Physical Attack" },
  { name="Snivy",           level=1, types={ "Grass" },    moves={ "Wrap", "Vine Whip" },              guids={ "bd4952" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "98096d" }, model_GUID="cb1ef6" } }, model_GUID="dd3268" },
  { name="Servine",         level=3, types={ "Grass" },    moves={ "Mega Drain", "Coil" },             guids={ "e2e93d", "98096d" }, evoData={ { cost=2, ball=RED, gen=5, guids={ "0f604e", "66a00d" }, model_GUID="df3e9d", spawn_effect="Physical Attack" } }, model_GUID="cb1ef6", offset={x=0, y=0, z=0.1} },
  { name="Serperior",       level=5, types={ "Grass" },    moves={ "Magical Leaf", "Wring Out" },      guids={ "2dc582", "0f604e", "66a00d" }, model_GUID="df3e9d", spawn_effect="Physical Attack" },
  { name="Tepig",           level=1, types={ "Fire" },     moves={ "Ember", "Tackle" },                guids={ "b8c770" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "14b2e7" }, model_GUID="1142b7" } }, model_GUID="f8a647" },
  { name="Pignite",         level=3, types={ "Fire", "Fighting" }, moves={ "Arm Thrust", "Flame Charge" }, guids={ "14b2e7", "d214c9" }, evoData={ { cost=2, ball=RED, gen=5, guids={ "de874b", "5d555c" }, model_GUID="83bed3" } }, model_GUID="1142b7" },
  { name="Emboar",          level=5, types={ "Fire", "Fighting" }, moves={ "Hammer Arm", "Flare Blitz" }, guids={ "e51210", "de874b", "5d555c" }, evoData={ { cost="Mega", ball=MEGA, gen=5, cycle=true, guids={ "6a1eb3", "ec42ce" } } }, model_GUID="83bed3" },
  { name="Oshawott",        level=1, types={ "Water" },    moves={ "Focus Energy", "Water Gun" },      guids={ "4c80d6" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "1eef77" }, model_GUID="4544f3", spawn_effect="Physical Attack" } }, model_GUID="ed7cad" },
  { name="Dewott",          level=3, types={ "Water" },    moves={ "Aqua Jet", "Revenge" },            guids={ "89e6b6", "1eef77" }, evoData={ { cost=2, ball=RED, gen=8, guids={ "769c18", "c7dc10" } },
                                                                                                                                               { cost=2, ball=RED, gen=5, guids={ "b351eb", "d8975e" }, model_GUID="027855", spawn_effect="Physical Attack" } }, 
                                                                                                                                     model_GUID="4544f3", spawn_effect="Physical Attack" },
  { name="Samurott",        level=5, types={ "Water" },    moves={ "Razor Shell", "Megahorn" },        guids={ "49d4d0", "b351eb", "d8975e" }, model_GUID="027855", spawn_effect="Physical Attack", custom_scale=0.85 },
  { name="Patrat",          level=1, types={ "Normal" },   moves={ "Bite", "Leer" },                   guids={ "8c09ef" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "fd2a3f" }, model_GUID="446cbb" } }, model_GUID="95e22a" },
  { name="Watchog",         level=3, types={ "Normal" },   moves={ "Hyper Fang", "Detect" },           guids={ "509c3b", "fd2a3f" }, model_GUID="446cbb" },
  { name="Lillipup",        level=1, types={ "Normal" },   moves={ "Odor Sleuth", "Tackle" },          guids={ "d5ebdb" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "408da5" }, model_GUID="fe0927" } }, model_GUID="a3d331" },
  { name="Herdier",         level=3, types={ "Normal" },   moves={ "Take Down", "Bite" },              guids={ "a02c78", "408da5" }, evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "4e8f54", "52057b" }, model_GUID="eff43c" } }, model_GUID="fe0927" },
  { name="Stoutland",       level=5, types={ "Normal" },   moves={ "Play Rough", "Retaliate" },        guids={ "cb77e7", "4e8f54", "52057b" }, model_GUID="eff43c", custom_scale=0.8 },
  { name="Purrloin",        level=1, types={ "Dark" },     moves={ "Fury Swipes", "Hone Claws" },      guids={ "c28158" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "5a5d10" }, model_GUID="0d58f0" } }, model_GUID="ad8e41" },
  { name="Liepard",         level=3, types={ "Dark" },     moves={ "Assurance", "Slash" },             guids={ "3f7259", "5a5d10" }, model_GUID="0d58f0", custom_scale=0.8 },
  { name="Pansage",         level=2, types={ "Grass" },    moves={ "Fury Swipes", "Vine Whip" },       guids={ "eec2b1" }, evoData={ { cost=1, ball=GREEN, gen=5, guids={ "23924b" }, model_GUID="962b36" } }, model_GUID="0febb6" },
  { name="Simisage",        level=3, types={ "Grass" },    moves={ "Seed Bomb", "Bite" },              guids={ "a6b59b", "23924b" }, model_GUID="962b36" },
  { name="Pansear",         level=2, types={ "Fire" },     moves={ "Fury Swipes", "Flame Charge" },    guids={ "2597b5" }, evoData={ { cost=1, ball=GREEN, gen=5, guids={ "404ff7" }, model_GUID="d7786a" } }, model_GUID="790b25" },
  { name="Simisear",        level=3, types={ "Fire" },     moves={ "Flame Burst", "Bite" },            guids={ "265b2a", "404ff7" }, model_GUID="d7786a" },
  { name="Panpour",         level=2, types={ "Water" },    moves={ "Fury Swipes", "Water Gun" },       guids={ "3da3a1" }, evoData={ { cost=1, ball=GREEN, gen=5, guids={ "a0d19e" }, model_GUID="7ca32a" } }, model_GUID="446aff" },
  { name="Simipour",        level=3, types={ "Water" },    moves={ "Scald", "Bite" },                  guids={ "c8641e", "a0d19e" }, model_GUID="7ca32a" },
  { name="Munna",           level=2, types={ "Psychic" },  moves={ "Hypnosis", "Moonlight" },          guids={ "3c0505" }, evoData={ { cost=1, ball=GREEN, gen=5, guids={ "198c08" }, model_GUID="f742b2" } }, model_GUID="d7cfc6" },
  { name="Musharna",        level=3, types={ "Psychic" },  moves={ "Psybeam", "Moonblast" },           guids={ "91179d", "198c08" }, model_GUID="f742b2" },
  { name="Pidove",          level=1, types={ "Normal", "Flying" }, moves={ "Taunt", "Gust" },          guids={ "723bbc" }, evoData={ { cost=2, ball=GREEN, gen=5, guids={ "fa3490" }, model_GUID="0f8928" } }, model_GUID="4f6c26" },
  { name="Tranquil",        level=3, types={ "Normal", "Flying" }, moves={ "Feather Dance", "Razor Wind" }, guids={ "3d420b", "fa3490" }, evoData={ { cost=1, ball=YELLOW, gen=5, guids={ "25764f", "c37df9" }, model_GUID="e4c215" } }, model_GUID="0f8928" },
  { name="Unfezant",        level=4, types={ "Normal", "Flying" }, moves={ "Air Cutter", "Facade" },   guids={ "3bbd1b", "25764f", "c37df9" }, model_GUID="e4c215" },
  { name="Blitzle",         level=2, types={ "Electric" }, moves={ "Thunder Wave", "Flame Charge" },   guids={ "c3f811" }, evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "a00b30" }, model_GUID="1f6bb5", spawn_effect="Physical Attack" } }, model_GUID="14eed5" },
  { name="Zebstrika",       level=4, types={ "Electric" }, moves={ "Wild Charge", "Stomp" },           guids={ "718d9a", "a00b30" }, model_GUID="1f6bb5", spawn_effect="Physical Attack" },
  { name="Roggenrola",      level=2, types={ "Rock" },     moves={ "Stealth Rock", "Headbutt" },       guids={ "f96286" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "b65495" }, model_GUID="a80816", spawn_effect="Physical Attack" } }, model_GUID="5e5531" },
  { name="Boldore",         level=4, types={ "Rock" },     moves={ "Rock Blast", "Iron Defense" },     guids={ "28e251", "b65495" }, evoData={ { cost=2, ball=RED, gen=5, guids={ "826c9d", "f3f8a9" }, model_GUID="0162ba" } }, model_GUID="a80816", spawn_effect="Physical Attack" },
  -- Gen 5 526-550
  { name="Gigalith",        level=6, types={ "Rock" },     moves={ "Sandstorm", "Stone Edge" },        guids={ "6c7072", "826c9d", "f3f8a9" }, model_GUID="0162ba", custom_scale=0.6, offset={x=0, y=0, z=-0.05} },
  { name="Woobat",          level=1, types={ "Psychic", "Flying" },  moves={ "Confusion", "Attract" }, guids={ "6264c2" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "8f6353" }, model_GUID="97b4e6" } }, model_GUID="5d9f84" },
  { name="Swoobat",         level=3, types={ "Psychic", "Flying" },  moves={ "Heart Stamp", "Gust" },  guids={ "a3b9cf", "8f6353" }, model_GUID="97b4e6" },
  { name="Drilbur",         level=2, types={ "Ground" },   moves={ "Fury Swipes", "Mud-Slap" },        guids={ "b7fbbf" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "777dd0" }, model_GUID="dccc9b", spawn_effect="Status Attack" } }, model_GUID="a49ea4" },
  { name="Excadrill",       level=4, types={ "Ground", "Steel" }, moves={ "Metal Claw", "Dig" },       guids={ "8ce447", "777dd0" }, evoData={ { cost="Mega", ball=MEGA, gen=5, cycle=true, guids={ "714ed6", "8e7267" } } }, model_GUID="dccc9b", spawn_effect="Status Attack" },
  { name="Audino",          level=4, types={ "Normal" },   moves={ "Hyper Voice", "Life Dew" },        guids={ "b81637" }, evoData={ { cost="Mega", ball=MEGA, gen=5, cycle=true, guids={ "0c7909" }, model_GUID="793f23", spawn_effect="Mega Evolve" } }, model_GUID="134409" },
  { name="Timburr",         level=2, types={ "Fighting" }, moves={ "Rock Throw", "Low Kick" },         guids={ "89aae4" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "e8de1c" }, model_GUID="0dfde4", spawn_effect="Physical Attack" } }, model_GUID="334885", spawn_effect="Physical Attack" },
  { name="Gurdurr",         level=4, types={ "Fighting" }, moves={ "Hammer Arm", "Chip Away" },        guids={ "84d209", "e8de1c" }, evoData={ { cost=2, ball=RED, gen=5, guids={ "2c58d6", "36840e" }, model_GUID="04bed2" } }, model_GUID="0dfde4", spawn_effect="Physical Attack" },
  { name="Conkeldurr",      level=6, types={ "Fighting" }, moves={ "Dynamic Punch", "Stone Edge" },    guids={ "29c9eb", "2c58d6", "36840e" }, model_GUID="04bed2", custom_scale=0.65, offset={x=0, y=0, z=-0.15} },
  { name="Tympole",         level=2, types={ "Water" },    moves={ "Supersonic", "Bubble" },           guids={ "348d4f" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "18532d" }, model_GUID="62c539", spawn_effect="Physical Attack" } }, model_GUID="70136d" },
  { name="Palpitoad",       level=4, types={ "Water", "Ground" }, moves={ "Echoed Voice", "Bubble Beam" }, guids={ "fd66e4", "18532d" }, evoData={ { cost=1, ball=RED, gen=5, guids={ "11fb5a", "373635" }, model_GUID="f1d4fb" } }, model_GUID="62c539", spawn_effect="Physical Attack" },
  { name="Seismitoad",      level=5, types={ "Water", "Ground" }, moves={ "Muddy Water", "Mud Shot" }, guids={ "a738c3", "11fb5a", "373635" }, model_GUID="f1d4fb" },
  { name="Throh",           level=4, types={ "Fighting" }, moves={ "Circle Throw", "Wide Guard" },     guids={ "72fcf5" }, model_GUID="74563b" },
  { name="Sawk",            level=4, types={ "Fighting" }, moves={ "Reversal", "Retaliate" },          guids={ "15a56f" }, model_GUID="1f8cae" },
  { name="Sewaddle",        level=1, types={ "Bug", "Grass" }, moves={ "String Shot", "Tackle" },      guids={ "1e8149" }, evoData={ { cost=1, ball=GREEN, gen=5, guids={ "013008" }, model_GUID="0e2bb5" } }, model_GUID="2a3547" },
  { name="Swadloon",        level=2, types={ "Bug", "Grass" }, moves={ "Struggle Bug", "Protect" },    guids={ "434424", "013008" }, evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "1ebeb9", "7e7b85" }, model_GUID="788aa1" } }, model_GUID="0e2bb5" },
  { name="Leavanny",        level=4, types={ "Bug", "Grass" }, moves={ "Leaf Blade", "Bug Bite" },     guids={ "fe4a27", "1ebeb9", "7e7b85" }, model_GUID="788aa1" },
  { name="Venipede",        level=2, types={ "Bug", "Poison" }, moves={ "Poison Sting", "Defense Curl" }, guids={ "98f18f" }, evoData={ { cost=1, ball=BLUE, gen=5, guids={ "703d36" }, model_GUID="0f9af9", spawn_effect="Physical Attack" } }, model_GUID="07a778" },
  { name="Whirlipede",      level=3, types={ "Bug", "Poison" }, moves={ "Iron Defense", "Rollout" },   guids={ "562f04", "703d36" }, evoData={ { cost=1, ball=YELLOW, gen=5, guids={ "914aa1", "ae213b" }, model_GUID="6b8b44", spawn_effect="Physical Attack" } }, model_GUID="0f9af9", spawn_effect="Physical Attack", custom_scale=0.8 },
  { name="Scolipede",       level=4, types={ "Bug", "Poison" }, moves={ "Steamroller", "Poison Tail" }, guids={ "c997bd", "914aa1", "ae213b" }, evoData={ { cost="Mega", ball=MEGA, gen=5, guids={ "74ef12", "fb9906" } } }, model_GUID="6b8b44", spawn_effect="Physical Attack", custom_scale=0.8, offset={x=0, y=0.08, z=0} },
  { name="Cottonee",        level=2, types={ "Grass", "Fairy" }, moves={ "Cotton Spore", "Fairy Wind" }, guids={ "e12ddb" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "4f1ca9" }, model_GUID="2437bd", spawn_effect="Physical Attack" } }, model_GUID="e5da38", spawn_effect="Physical Attack" },
  { name="Whimsicott",      level=4, types={ "Grass", "Fairy" }, moves={ "Cotton Guard", "Hurricane" }, guids={ "5a123d", "4f1ca9" }, model_GUID="2437bd", spawn_effect="Physical Attack" },
  { name="Petilil",         level=2, types={ "Grass" },    moves={ "Absorb", "Growth" },               guids={ "2ecb05" }, evoData={ { cost=2, ball=BLUE, gen=5, guids={ "693b62" }, model_GUID="312e7e" }, 
                                                                                                                                     { cost=2, ball=BLUE, gen=5, guids={ "13e980" } } }, 
                                                                                        model_GUID="f7466a", spawn_effect="Physical Attack" },
  { name="Lilligant",       level=4, types={ "Grass" },    moves={ "Quiver Dance", "Petal Dance" },    guids={ "28e67a", "693b62" }, model_GUID="312e7e" },
  { name="Blue Basculin",   level=2, types={ "Water" },    moves={ "Aqua Jet", "Chip Away" },          guids={ "5ee961" }, model_GUID="76e2c8", ball=GREEN },
  { name="Red Basculin",    level=2, types={ "Water" },    moves={ "Aqua Jet", "Bite" },               guids={ "8e451c" }, model_GUID="1aad2b", ball=GREEN },
  
  -- Gen 5 551-576
  { name="Sandile",         level=2, types={ "Ground", "Dark" }, moves={ "Sand Tomb", "Scary Face" },  guids={ "0ec450" },                    evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "059c2c" }, model_GUID="4cf233" } }, model_GUID="2e2c75" },
  { name="Krokorok",        level=4, types={ "Ground", "Dark" }, moves={ "Sandstorm", "Bite" },        guids={ "89573c", "059c2c" },           evoData={ { cost=2, ball=RED, gen=5, guids={ "985c98", "abaa08" }, model_GUID="1455fe" } }, model_GUID="4cf233", offset={x=0, y=0, z=0.06} },
  { name="Krookodile",      level=6, types={ "Ground", "Dark" }, moves={ "Scorching Sands", "Foul Play" }, guids={ "5d317d", "985c98", "abaa08" }, model_GUID="1455fe" },
  { name="Darumaka",        level=3, types={ "Fire" },     moves={ "Belly Drum", "Incinerate" },           guids={ "fd08bc" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "929881" }, model_GUID="4693f5" },
                                                                                                                                                                       { cost=2, ball=YELLOW, gen=5, guids={ "8425ea" }, model_GUID="e68195" } }, 
                                                                                                                                                           model_GUID="5f8571", spawn_effect="Physical Attack" },
  { name="Darmanitan",      level=5, types={ "Fire" },     moves={ "Fire Punch", "Superpower" },       guids={ "1c3955", "8425ea" }, model_GUID="e68195", offset={x=0, y=0, z=-0.1}, ball=YELLOW },  -- Red
  { name="Zen Darmanitan",  level=5, types={ "Fire", "Psychic" }, moves={ "Zen Headbutt", "Heat Wave" }, guids={ "7c085e", "929881" }, model_GUID="4693f5", ball=YELLOW },                           -- Blue
  { name="Maractus",        level=3, types={ "Grass" },    moves={ "Needle Arm", "Peck" },             guids={ "b2f6e7" }, model_GUID="3832b0" },
  { name="Dwebble",         level=2, types={ "Bug", "Rock" },      moves={ "Rock Blast", "Shell Smash" }, guids={ "68671d" },                     evoData={ { cost=2, ball=BLUE, gen=5, guids={ "eb163e" }, model_GUID="de316c" } }, model_GUID="553572" },
  { name="Crustle",         level=4, types={ "Bug", "Rock" }, moves={ "Rock Slide", "Fury Cutter" },   guids={ "459bcf", "eb163e" }, model_GUID="de316c", custom_scale=0.7, offset={x=0, y=0, z=-0.1} },
  { name="Scraggy",         level=3, types={ "Dark", "Fighting" }, moves={ "Headbutt", "Low Kick" },   guids={ "aaaf84" },                     evoData={ { cost=2, ball=RED, gen=5, guids={ "65b5a8" }, model_GUID="b9d27b", spawn_effect="Physical Attack" } }, model_GUID="6e59e2" },
  { name="Scrafty",         level=5, types={ "Dark", "Fighting" }, moves={ "High Jump Kick", "Payback" }, guids={ "d2d70d", "65b5a8" }, evoData={ { cost="Mega", ball=MEGA, gen=5, guids={ "cc4963", "563f0f" } } }, model_GUID="b9d27b", spawn_effect="Physical Attack" },
  { name="Sigilyph",        level=5, types={ "Psychic", "Flying" }, moves={ "Mirror Move", "Psybeam" },guids={ "53ef88" }, model_GUID="71ed95" },
  { name="Yamask",          level=3, types={ "Ghost" },    moves={ "Will-O-Wisp", "Astonish" },        guids={ "ae058d" },                     evoData={ { cost=2, ball=RED, gen=5, guids={ "649181" }, model_GUID="76a330" } }, model_GUID="5304a8" },
  { name="Cofagrigus",      level=5, types={ "Ghost" },    moves={ "Shadow Claw", "Crafty Shield" },   guids={ "dfb551", "649181" }, model_GUID="76a330" },
  { name="Tirtouga",        level=4, types={ "Water", "Rock" }, moves={ "Water Gun", "Protect" },      guids={ "69a6f1" },                     evoData={ { cost=2, ball=RED, gen=5, guids={ "ff9d76" }, model_GUID="212e44" } }, model_GUID="8bbd45" },
  { name="Carracosta",      level=6, types={ "Water", "Rock" }, moves={ "Wide Guard", "Brine" },guids={ "493a52", "ff9d76" }, model_GUID="212e44" },
  { name="Archen",          level=4, types={ "Rock", "Flying" }, moves={ "Dragon Claw", "Rock Throw" }, guids={ "dfadef" },                     evoData={ { cost=2, ball=RED, gen=5, guids={ "fe2d6b" }, model_GUID="e52be5", spawn_effect="Physical Attack" } }, model_GUID="fe5542" },
  { name="Archeops",        level=6, types={ "Rock", "Flying" }, moves={ "Rock Slide", "Pluck" },      guids={ "d1e259", "fe2d6b" }, model_GUID="e52be5", spawn_effect="Physical Attack" },
  { name="Trubbish",        level=3, types={ "Poison" },   moves={ "Clear Smog", "Pound" },            guids={ "c0ee99" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "cf4c7d" }, model_GUID="317f1f" } }, model_GUID="8eef4f" },
  { name="Garbodor",        level=5, types={ "Poison" },   moves={ "Sludge", "Explosion" },            guids={ "427e7e", "cf4c7d" },           evoData={ { cost="GMax", ball=MEGA, gen=5, cycle=true, guids={ "43b26e", "a13dc7" } } }, model_GUID="317f1f", custom_scale=0.7 },
  { name="Zorua",           level=3, types={ "Dark" },     moves={ "Hone Claws", "Agility" },          guids={ "852f7a" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "ab7a1d" }, model_GUID="fb10d4" } }, model_GUID="04ebbd" },
  { name="Zoroark",         level=5, types={ "Dark" },     moves={ "Night Daze", "U-Turn" },           guids={ "99e127", "ab7a1d" }, model_GUID="fb10d4" },
  { name="Minccino",        level=3, types={ "Normal" },   moves={ "Baby-Doll Eyes", "Echoed Voice" }, guids={ "4619bc" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "dbc5fd" }, model_GUID="320a12" } }, model_GUID="dccefe", spawn_effect="Physical Attack" },
  { name="Cinccino",        level=4, types={ "Normal" },   moves={ "Swift", "Sing" },                  guids={ "fd401d", "dbc5fd" }, model_GUID="320a12" },
  { name="Gothita",         level=2, types={ "Psychic" },  moves={ "Confusion", "Play Nice" },         guids={ "2c8314" },                     evoData={ { cost=2, ball=BLUE, gen=5, guids={ "3c3dd3" }, model_GUID="afdfbd" } }, model_GUID="ce5c02" },
  { name="Gothorita",       level=4, types={ "Psychic" },  moves={ "Psybeam", "Charm" },               guids={ "1a4be0", "3c3dd3" },           evoData={ { cost=2, ball=RED, gen=5, guids={ "232a11", "193950" }, model_GUID="e6fa75" } }, model_GUID="afdfbd" },
  { name="Gothitelle",      level=6, types={ "Psychic" },  moves={ "Future Sight", "Fake Tears" },     guids={ "b7fdb2", "232a11", "193950" }, model_GUID="e6fa75" },  
  -- Gen 5 577-601
  { name="Solosis",         level=2, types={ "Psychic" },  moves={ "Recover", "Charm" },               guids={ "4ffe17" },                     evoData={ { cost=2, ball=BLUE, gen=5, guids={ "428bdd" }, model_GUID="5681e1" } }, model_GUID="cd2f3b" },
  { name="Duosion",         level=4, types={ "Psychic" },  moves={ "Hidden Power", "Light Screen" },   guids={ "6251de", "428bdd" },           evoData={ { cost=2, ball=RED, gen=5, guids={ "783bd2", "e4e1e6" }, model_GUID="43a8c7", spawn_effect="Physical Attack" } }, model_GUID="5681e1" },
  { name="Reuniclus",       level=6, types={ "Psychic" },  moves={ "Dizzy Punch", "Psychic" },         guids={ "e40ad5", "783bd2", "e4e1e6" }, model_GUID="43a8c7", spawn_effect="Physical Attack" },
  { name="Ducklett",        level=2, types={ "Water", "Flying" }, moves={ "Water Gun", "Roost" },      guids={ "194e14" },                     evoData={ { cost=3, ball=YELLOW, gen=5, guids={ "0cc3e9" }, model_GUID="653e11" } }, model_GUID="0ea94c" },
  { name="Swanna",          level=5, types={ "Water", "Flying" }, moves={ "Water Pulse", "Air Slash" }, guids={ "e43f99", "0cc3e9" }, model_GUID="653e11" },
  { name="Vanillite",       level=2, types={ "Ice" },      moves={ "Icicle Spear", "Astonish" },       guids={ "746959" },                     evoData={ { cost=2, ball=BLUE, gen=5, guids={ "67e645" }, model_GUID="aa33f1", spawn_effect="Physical Attack" } }, model_GUID="a60d6e" },
  { name="Vanillish",       level=4, types={ "Ice" },      moves={ "Mirror Shot", "Icy Wind" },        guids={ "a2fe81", "67e645" },           evoData={ { cost=2, ball=RED, gen=4, guids={ "6f598b", "98f88f" }, model_GUID="7abd8f" } }, model_GUID="aa33f1", spawn_effect="Physical Attack" },
  { name="Vanilluxe",       level=6, types={ "Ice" },      moves={ "Mirror Coat", "Freeze-Dry" },      guids={ "642461", "6f598b", "98f88f" }, model_GUID="7abd8f" },
  { name="Spring Deerling", level=2, types={ "Normal", "Grass" }, moves={ "Camouflage", "Tackle" },    guids={ "7fe6be" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "f5963d" }, model_GUID="9b9805" } }, model_GUID="fe766f", ball=PINK },
  { name="Spring Sawsbuck", level=4, types={ "Normal", "Grass" }, moves={ "Double-Edge", "Horn Leech" }, guids={ "2a61be", "f5963d" }, model_GUID="9b9805", ball=YELLOW },
  { name="Autumn Deerling", level=2, types={ "Normal", "Grass" }, moves={ "Sand Attack", "Tackle" },   guids={ "9ce73b" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "1f9d13" }, model_GUID="8aaef9" } }, model_GUID="aa4a1c", ball=PINK },
  { name="Autumn Sawsbuck", level=4, types={ "Normal", "Grass" }, moves={ "Play Rough", "Horn Leech" }, guids={ "870088", "1f9d13" }, model_GUID="8aaef9", ball=YELLOW },
  { name="Summer Deerling", level=2, types={ "Normal", "Grass" }, moves={ "Leech Seed", "Tackle" },    guids={ "de2c41" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "426c52" }, model_GUID="8bb6ad" } }, model_GUID="e544e1", ball=PINK },
  { name="Summer Sawsbuck", level=4, types={ "Normal", "Grass" }, moves={ "Megahorn", "Horn Leech" },  guids={ "fc0fc8", "426c52" }, model_GUID="8bb6ad", ball=YELLOW },
  { name="Winter Deerling", level=2, types={ "Normal", "Grass" }, moves={ "Agility", "Tackle" },       guids={ "90a5b6" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "4ef3be" }, model_GUID="77fc07" } }, model_GUID="b1f364", ball=PINK },
  { name="Winter Sawsbuck", level=4, types={ "Normal", "Grass" }, moves={ "Zen Headbutt", "Horn Leech" }, guids={ "b12cc7", "4ef3be" }, model_GUID="77fc07", ball=YELLOW },
  { name="Emolga",          level=3, types={ "Electric", "Flying" }, moves={ "Quick Attack", "Spark" }, guids={ "21c0e7" }, model_GUID="dad8a0", spawn_effect="Physical Attack" },
  { name="Karrablast",      level=3, types={ "Bug" },      moves={ "Fury Cutter", "Peck" },            guids={ "a987fe" },                     evoData={ { cost=1, ball=YELLOW, gen=5, guids={ "3912b9" }, model_GUID="e4c099" } }, model_GUID="66ec18" },
  { name="Escavalier",      level=4, types={ "Bug", "Steel" }, moves={ "Iron Head", "Bug Buzz" },      guids={ "2fbc4e", "3912b9" }, model_GUID="e4c099" },
  { name="Foongus",         level=3, types={ "Grass", "Poison" }, moves={ "Astonish", "Mega Drain" },  guids={ "ee2a78" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "14acd9" }, model_GUID="b1f388" } }, model_GUID="06f3ae" },
  { name="Amoongus",        level=5, types={ "Grass", "Poison" }, moves={ "Clear Smog", "Giga Drain" }, guids={ "13d1d6", "14acd9" }, model_GUID="b1f388" },
  { name="Frillish (M)",    level=4, types={ "Water", "Ghost" }, moves={ "Poison Sting", "Bubble Beam" }, guids={ "a28f5d" },                     evoData={ { cost=2, ball=RED, gen=5, guids={ "840e6a" }, model_GUID="b219d0", spawn_effect="Physical Attack" } }, model_GUID="4d5963", ball=BLUE },
  { name="Jellicent (M)",   level=6, types={ "Water", "Ghost" }, moves={ "Ominous Wind", "Water Spout" }, guids={ "8ac9cc", "840e6a" }, model_GUID="b219d0", spawn_effect="Physical Attack", ball=RED },
  { name="Frillish (F)",    level=4, types={ "Water", "Ghost" }, moves={ "Bubble Beam", "Absorb" },    guids={ "60ba9e" },                     evoData={ { cost=2, ball=RED, gen=5, guids={ "8fd291" }, model_GUID="82eae8", spawn_effect="Physical Attack" } }, model_GUID="f693fb", ball=BLUE },
  { name="Jellicent (F)",   level=6, types={ "Water", "Ghost" }, moves={ "Ominous Wind", "Wring Out" }, guids={ "9895a4", "8fd291" }, model_GUID="82eae8", spawn_effect="Physical Attack", ball=RED },
  { name="Alomomola",       level=3, types={ "Water" },    moves={ "Safeguard", "Brine" },             guids={ "9c2e47" }, model_GUID="987107" },
  { name="Joltik",          level=2, types={ "Bug", "Electric" }, moves={ "Thunder Wave", "Fury Cutter" },   guids={ "c4adc9" },                     evoData={ { cost=3, ball=YELLOW, gen=5, guids={ "4f2f10" }, model_GUID="f565f0" } }, model_GUID="b967c0", spawn_effect="Physical Attack", custom_scale=3.0 },
  { name="Galvantula",      level=5, types={ "Bug", "Electric" }, moves={ "Electroweb", "Bug Bite" },  guids={ "1e7df7", "4f2f10" }, model_GUID="f565f0", custom_scale=0.9 },
  { name="Ferroseed",       level=3, types={ "Grass", "Steel" }, moves={ "Pin Missile", "Mirror Shot" }, guids={ "4801d8" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "1b2d43" }, model_GUID="37e34d" } }, model_GUID="46fbe9" },
  { name="Ferrothorn",      level=5, types={ "Grass", "Steel" }, moves={ "Iron Defense", "Power Whip" }, guids={ "d1ce01", "1b2d43" }, model_GUID="37e34d", custom_scale=0.5, offset={x=0, y=0, z=-0.03} },
  { name="Klink",           level=3, types={ "Steel" },    moves={ "Charge Beam", "Shift Gear" },      guids={ "4ee23b" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "0263d9" }, model_GUID="8388d7", spawn_effect="Physical Attack" } }, model_GUID="f1c2b1", spawn_effect="Physical Attack" },
  { name="Klang",           level=5, types={ "Steel" },    moves={ "Mirror Shot", "Vise Grip" },       guids={ "17a2ae", "0263d9" },           evoData={ { cost=1, ball=RED, gen=5, guids={ "1c30a4", "47e417" }, model_GUID="f57695" } }, model_GUID="8388d7", spawn_effect="Physical Attack" },
  { name="Klinklang",       level=6, types={ "Steel" },    moves={ "Gear Grind", "Discharge" },        guids={ "c5a2bf", "1c30a4", "47e417" }, model_GUID="f57695" },
  -- Gen 5 602-637
  { name="Tynamo",          level=3, types={ "Electric" }, moves={ "Charge Beam", "Tackle" },          guids={ "033989" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "236c9c" }, model_GUID="e93792" } }, model_GUID="d78a62" },
  { name="Eelektrik",       level=5, types={ "Electric" }, moves={ "Wild Charge", "Crunch" },          guids={ "8cec3c", "236c9c" },           evoData={ { cost=1, ball=RED, gen=5, guids={ "03bbca", "1e9b7b" }, model_GUID="155948", spawn_effect="Physical Attack" } }, model_GUID="e93792" },
  { name="Eelektross",      level=6, types={ "Electric" }, moves={ "Crush Claw", "Discharge" },        guids={ "74b8ad", "03bbca", "1e9b7b" }, evoData={ { cost="Mega", ball=MEGA, gen=5, cycle=true, guids={ "79455f", "3dc1f8" } } }, model_GUID="155948", spawn_effect="Physical Attack" },
  { name="Elgyem",          level=3, types={ "Psychic" },  moves={ "Hidden Power", "Psybeam" },        guids={ "f5a0a7" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "380013" }, model_GUID="824281", spawn_effect="Physical Attack" } }, model_GUID="fca2da" },
  { name="Beheeyem",        level=5, types={ "Psychic" },  moves={ "Zen Headbutt", "Psychic Terrain" }, guids={ "9c471b", "380013" }, model_GUID="824281", spawn_effect="Physical Attack" },
  { name="Litwick",         level=3, types={ "Ghost", "Fire" }, moves={ "Will-O-Wisp", "Astonish" },   guids={ "32bd77" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "5fb776" }, model_GUID="90d56c", spawn_effect="Physical Attack" } }, model_GUID="ed8fd6" },
  { name="Lampent",         level=5, types={ "Ghost", "Fire" }, moves={ "Fire Spin", "Hex" },          guids={ "c3de22", "5fb776" },           evoData={ { cost=1, ball=RED, gen=5, guids={ "00885b", "1d0a91" }, model_GUID="de2e80" } }, model_GUID="90d56c", spawn_effect="Physical Attack" },
  { name="Chandelure",      level=6, types={ "Ghost", "Fire" }, moves={ "Shadow Ball", "Flame Burst" },guids={ "5a029a", "00885b", "1d0a91" }, evoData={ { cost="Mega", ball=MEGA, gen=5, cycle=true, guids={ "d39ce5", "82b77e" } } }, model_GUID="de2e80" },
  { name="Axew",            level=2, types={ "Dragon" },   moves={ "False Swipe", "Bite" },            guids={ "b44616" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "fe1ab9" }, model_GUID="e5baeb" } }, model_GUID="c209ac" },
  { name="Fraxure",         level=4, types={ "Dragon" },   moves={ "Swords Dance", "Dragon Claw" },    guids={ "989343", "fe1ab9" },           evoData={ { cost=3, ball=RED, gen=5, guids={ "85ebac", "bf4902" }, model_GUID="18b97d" } }, model_GUID="e5baeb" },
  { name="Haxorus",         level=7, types={ "Dragon" },   moves={ "Dual Chop", "Guillotine" },        guids={ "c776ab", "85ebac", "bf4902" }, model_GUID="18b97d" },
  { name="Cubchoo",         level=3, types={ "Ice" },      moves={ "Powder Snow", "Charm" },           guids={ "0d7df1" },                     evoData={ { cost=2, ball=RED, gen=5, guids={ "9bef08" }, model_GUID="54bff7" } }, model_GUID="085ee7" },
  { name="Beartic",         level=5, types={ "Ice" },      moves={ "Icicle Crash", "Superpower" },     guids={ "7ef288", "9bef08" }, model_GUID="54bff7", custom_scale=0.85 },
  { name="Cryogonal",       level=4, types={ "Ice" },      moves={ "Sheer Cold", "Light Screen" },     guids={ "68294a" }, model_GUID="37b1ac", spawn_effect="Physical Attack" },
  { name="Shelmet",         level=3, types={ "Bug" },      moves={ "Acid Armor", "Protect" },          guids={ "898892" },                     evoData={ { cost=1, ball=YELLOW, gen=5, guids={ "fe9c80" }, model_GUID="98569d" } }, model_GUID="0f788a", spawn_effect="Physical Attack" },
  { name="Accelgor",        level=4, types={ "Bug" },      moves={ "Me First", "U-Turn" },             guids={ "f95e65", "fe9c80" }, model_GUID="98569d" },
  { name="Stunfisk",        level=3, types={ "Ground", "Electric" }, moves={ "Thunder Shock", "Mud-Slap" }, guids={ "2db3e2" }, model_GUID="4a9d6e" },
  { name="Mienfoo",         level=4, types={ "Fighting" }, moves={ "Calm Mind", "Force Palm" },        guids={ "ff78e9" },                     evoData={ { cost=2, ball=RED, gen=5, guids={ "022243" }, model_GUID="afd151" } }, model_GUID="05f772", spawn_effect="Physical Attack" },
  { name="Mienshao",        level=6, types={ "Fighting" }, moves={ "Drain Punch", "Bounce" },          guids={ "3e2f17", "022243" }, model_GUID="afd151" },
  { name="Druddigon",       level=5, types={ "Dragon" },   moves={ "Dragon Claw", "Night Slash" },     guids={ "0dc4b0" }, model_GUID="e0e534", custom_scale=0.8 },
  { name="Golett",          level=3, types={ "Ground", "Ghost" }, moves={ "Dynamic Punch", "Iron Defense" }, guids={ "181a0d" },               evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "a72aa8" }, model_GUID="002dc3" } }, model_GUID="560b71" },
  { name="Golurk",          level=5, types={ "Ground", "Ghost" }, moves={ "Shadow Punch", "Earthquake" }, guids={ "3cbe89", "a72aa8" }, model_GUID="002dc3", custom_scale=0.8 },
  { name="Pawniard",        level=3, types={ "Dark", "Steel" }, moves={ "Metal Claw", "Slash" },       guids={ "259499" },                     evoData={ { cost=2, ball=RED, gen=5, guids={ "b85238" }, model_GUID="753f92" } }, model_GUID="4aa17e" },
  { name="Bisharp",         level=5, types={ "Dark", "Steel" }, moves={ "Guillotine", "Night Slash" }, guids={ "cd8ee8", "b85238" },           evoData={ { cost=1, ball=RED, gen=9, guids={ "d49464", "8625f7" }, model_GUID="3296ae" } }, model_GUID="753f92" },
  { name="Bouffalant",      level=4, types={ "Normal" },   moves={ "Head Charge", "Megahorn" },        guids={ "91e1a4" }, model_GUID="3296ae", custom_scale=0.65, offset={x=0, y=0, z=-0.1} },
  { name="Rufflet",         level=3, types={ "Flying", "Normal" }, moves={ "Hone Claws", "Peck" },     guids={ "f52196" },                     evoData={ { cost=3, ball=RED, gen=5, guids={ "820294" }, model_GUID="3f59cc" }, { cost=3, ball=RED, gen=8, guids={ "aaa239" } } }, model_GUID="bc0883" },
  { name="Braviary",        level=6, types={ "Flying", "Normal" }, moves={ "Crush Claw", "Aerial Ace" }, guids={ "f1a656", "820294" }, model_GUID="a5fe68" },
  { name="Vullaby",         level=3, types={ "Dark", "Flying" }, moves={ "Nasty Plot", "Gust" },       guids={ "8c8d4a" },                     evoData={ { cost=3, ball=RED, gen=5, guids={ "f035e3" }, model_GUID="fa9bd5" } }, model_GUID="bc6308" },
  { name="Mandibuzz",       level=6, types={ "Dark", "Flying" }, moves={ "Bone Rush", "Air Slash" },   guids={ "d9a365", "f035e3" }, model_GUID="fa9bd5" },
  { name="Heatmor",         level=4, types={ "Fire" },     moves={ "Fire Lash", "Lick" },              guids={ "cd2a36" }, model_GUID="571def" },
  { name="Durant",          level=4, types={ "Bug", "Steel" }, moves={ "Metal Claw", "X-Scissor" },     guids={ "96b5d6" }, model_GUID="0b8592" },
  { name="Deino",           level=3, types={ "Dark", "Dragon" }, moves={ "Headbutt", "Bite" },         guids={ "6e0580" },                     evoData={ { cost=2, ball=YELLOW, gen=5, guids={ "54a52f" }, model_GUID="bbc115", spawn_effect="Physical Attack" } }, model_GUID="119c86" },
  { name="Zweilous",        level=5, types={ "Dark", "Dragon" }, moves={ "Dragon Pulse", "Bite" },     guids={ "cc9679", "54a52f" },           evoData={ { cost=2, ball=RED, gen=5, guids={ "19040b", "6edcb7" }, model_GUID="2621b5", spawn_effect="Status Attack" } }, model_GUID="bbc115", spawn_effect="Physical Attack", custom_scale=0.8 },
  { name="Hydreigon",       level=7, types={ "Dark", "Dragon" }, moves={ "Dragon Breath", "Assurance" }, guids={ "573535", "19040b", "6edcb7" }, model_GUID="2621b5", spawn_effect="Status Attack" },
  { name="Larvesta",        level=4, types={ "Bug", "Fire" }, moves={ "Leech Life", "Ember" },         guids={ "ec4a46" },                     evoData={ { cost=3, ball=RED, gen=5, guids={ "3595d9" }, model_GUID="c9ed3b" } }, model_GUID="68b192" },
  { name="Volcarona",       level=7, types={ "Bug", "Fire" }, moves={ "Fiery Dance", "Hurricane" },    guids={ "b9c1a0", "3595d9" }, model_GUID="c9ed3b" },

  -- Gen 5 638-649
  { name="Cobalion",        level=7, types={ "Steel", "Fighting" }, moves={ "Sacred Sword", "Iron Head" }, guids={ "55fe44" }, model_GUID="8d4715", custom_scale=0.7 },
  { name="Terrakion",       level=7, types={ "Rock", "Fighting" }, moves={ "Sacred Sword", "Rock Slide" }, guids={ "21e3a7" }, model_GUID="f48c6a", custom_scale=0.65 },
  { name="Virizion",        level=7, types={ "Grass", "Fighting" }, moves={ "Sacred Sword", "Giga Drain" }, guids={ "97db25" }, model_GUID="774eac", custom_scale=0.85 },
  { name="Incarnate Tornadus", level=7, types={ "Flying" },moves={ "Extrasensory", "Hurricane" }, guids={ "d1658f" }, model_GUID="af1db1", ball=LEGENDARY },
  { name="Therian Tornadus",level=7, types={ "Flying" },   moves={ "Bleakwind Storm", "Focus Blast" }, guids={ "916000" }, model_GUID="f7abb5", ball=LEGENDARY },
  { name="Incarnate Thundurus",  level=7, types={ "Electric", "Flying" }, moves={ "Thunder", "Fly" }, guids={ "723ca9" }, model_GUID="0a0b98", ball=LEGENDARY },
  { name="Therian Thundurus", level=7, types={ "Electric", "Flying" }, moves={ "Wildbolt Storm", "Focus Blast" }, guids={ "a2c518" }, model_GUID="13842a", ball=LEGENDARY },
  { name="Reshiram",        level=7, types={ "Dragon", "Fire" }, moves={ "Blue Flare", "Dragon Pulse" }, guids={ "5b8987" }, evoData={ { cost="DNA Splicers", ball=LEGENDARY, gen=5, cycle=true, guids={ "d5117a" }, model_GUID="653151" } }, model_GUID="d9cc98", spawn_effect="Status Attack", offset={x=0, y=1.0, z=0}, idle_effect="Run" },
  { name="White Kyurem",    level=7, types={ "Dragon", "Ice" },   moves={ "Fusion Flare", "Ice Beam" }, guids={ "d5117a" }, evoData={ { cost=0, ball=LEGENDARY, gen=5, cycle=true, guids={ "5b8987" }, model_GUID="d9cc98", spawn_effect="Status Attack" } }, model_GUID="653151", offset={x=0, y=1.0, z=0}, idle_effect="Run", custom_scale=0.75 },
  { name="Zekrom",          level=7, types={ "Dragon", "Electric" }, moves={ "Bolt Strike", "Dragon Claw" }, guids={ "879958" }, evoData={ { cost="DNA Splicers", ball=LEGENDARY, gen=5, cycle=true, guids={ "d20352" }, model_GUID="9f42db" } }, model_GUID="463700", spawn_effect="Status Attack", offset={x=0, y=1.0, z=0}, idle_effect="Run" },
  { name="Black Kyurem",    level=7, types={ "Dragon", "Ice" },   moves={ "Fusion Bolt", "Ice Beam" }, guids={ "d20352" }, evoData={ { cost=0, ball=LEGENDARY, gen=5, cycle=true, guids={ "879958" } } }, model_GUID="9f42db", offset={x=0, y=1.0, z=0}, idle_effect="Run", custom_scale=0.75 }, -- Black Kyurem (for Zekrom)
  { name="Incarnate Landorus", level=7, types={ "Ground", "Flying" }, moves={ "Sandsear Storm", "Focus Blast" },  guids={ "ee0f97" }, model_GUID="a7e86f", spawn_effect="Status Attack" },
  { name="Therian Landorus",level=7, types={ "Ground", "Flying" }, moves={ "Sandsear Storm", "Stone Edge" }, guids={ "596a60" }, model_GUID="604304" },
  { name="Kyurem",          level=7, types={ "Dragon", "Ice" },   moves={ "Dragon Breath", "Glaciate" }, guids={ "3a2734" }, evoData={ { cost="DNA Splicers", ball=LEGENDARY, gen=5, cycle=true, guids={ "6be4f3" }, model_GUID="9f42db" }, { cost="DNA Splicers", ball=LEGENDARY, gen=5, cycle=true, guids={ "28742a" }, model_GUID="653151" } }, model_GUID="be9a02", spawn_effect="Status Attack", custom_scale=0.6 },
  { name="Black Kyurem",    level=7, types={ "Dragon", "Ice" },   moves={ "Fusion Bolt", "Ice Beam" }, guids={ "6be4f3" }, evoData={ { cost=0, ball=LEGENDARY, gen=5, cycle=true, guids={ "3a2734" }, model_GUID="be9a02", spawn_effect="Status Attack" } }, model_GUID="9f42db", offset={x=0, y=1.0, z=0}, idle_effect="Run", custom_scale=0.75 }, -- Black Kyurem (for Kyurem)
  { name="White Kyurem",    level=7, types={ "Dragon", "Ice" },   moves={ "Fusion Flare", "Ice Beam" },guids={ "28742a" }, evoData={ { cost=0, ball=LEGENDARY, gen=5, cycle=true, guids={ "3a2734" }, model_GUID="be9a02", spawn_effect="Status Attack" } }, model_GUID="653151", offset={x=0, y=1.0, z=0}, idle_effect="Run", custom_scale=0.75 }, -- White Kyurem (for Kyurem)
  { name="Ordinary Keldeo", level=7, types={ "Water", "Fighting" }, moves={ "Sacred Sword", "Aqua Tail" }, guids={ "d825d0" }, model_GUID="97905c", ball=LEGENDARY },
  { name="Resolute Keldeo", level=7, types={ "Water", "Fighting" }, moves={ "Secret Sword", "Hydro Pump" }, guids={ "e0356d" }, model_GUID="4465a6", ball=LEGENDARY },
  { name="Meloetta",        level=7, types={ "Normal", "Psychic" }, moves={ "Relic Song", "Psychic" }, guids={ "893ae6" }, model_GUID="eb62fb", ball=LEGENDARY },
  { name="Pirouette Meloetta", level=7, types={ "Normal", "Fighting" },moves={ "Close Combat", "Relic Song" }, guids={ "430037" }, model_GUID="e83612", spawn_effect="Status Attack", ball=LEGENDARY },
  { name="Genesect",        level=7, types={ "Bug", "Steel" },    moves={ "Signal Beam", "Techno Blast" }, guids={ "a0f8a1" }, model_GUID="da9000" },

  -- Mega evolutions.
  { name="Mega Audino",     level=5,    types={ "Fairy", "Normal" },  moves={ "Disarming Voice", "Secret Power" }, guids={ "0c7909" },           evoData={ { cost=0, ball=BLUE, gen=5, cycle=true, guids={ "b81637" } } }, model_GUID="793f23", spawn_effect="Mega Evolve" },
  { name="GMax Garbodor",   level=5,    types={ "Poison" },           moves={ "Malador", "Strike" },               guids={ "43b26e", "a13dc7" }, evoData={ { cost=0, ball=YELLOW, gen=5, cycle=true, guids={ "427e7e", "cf4c7d" } } }, model_GUID="3a0074", offset={x=0, y=1.25, z=0}, custom_scale=0.45 },
  { name="Mega Emboar",     level=6,    types={ "Fire", "Fighting" }, moves={ "Head Smash", "Heat Crash" },        guids={ "6a1eb3", "ec42ce" }, evoData={ { cost=0, ball=RED, gen=5, cycle=true, guids={ "e51210", "de874b", "5d555c" } } }, model_GUID="5bde73", spawn_effect="Mega Evolve" },
  { name="Mega Excadrill",  level=5,    types={ "Ground", "Steel" },  moves={ "Iron Head", "Drill Run" },          guids={ "714ed6", "8e7267" }, evoData={ { cost=0, ball=BLUE, gen=5, cycle=true, guids={ "8ce447", "777dd0" } } }, model_GUID="dd15d9", spawn_effect="Mega Evolve" },
  { name="Mega Scolipede",  level=5,    types={ "Bug", "Poison" },    moves={ "Megahorn", "Earthquake" },          guids={ "74ef12", "fb9906" }, evoData={ { cost=0, ball=YELLOW, gen=5, cycle=true, guids={ "c997bd", "914aa1", "ae213b" } } }, model_GUID="d774e7", spawn_effect="Mega Evolve" },
  { name="Mega Scrafty",    level=6,    types={ "Dark", "Fighting" }, moves={ "Dynamic Punch", "Head Smash" },     guids={ "cc4963", "563f0f" }, evoData={ { cost=0, ball=RED, gen=5, cycle=true, guids={ "d2d70d", "65b5a8" } } }, model_GUID="ac7e97", spawn_effect="Mega Evolve" },
  { name="Mega Eelektross", level=7,    types={ "Electric" },         moves={ "Thunderbolt", "Waterfall" },        guids={ "79455f", "3dc1f8" }, evoData={ { cost=0, ball=RED, gen=5, cycle=true, guids={ "74b8ad", "03bbca", "1e9b7b" } } }, model_GUID="2c7c9d", spawn_effect="Mega Evolve" },
  { name="Mega Chandelure", level=7,    types={ "Ghost", "Fire" },    moves={ "Flame Wheel", "Solar Beam" },       guids={ "d39ce5", "82b77e" }, evoData={ { cost=0, ball=RED, gen=5, cycle=true, guids={ "5a029a", "00885b", "1d0a91" } } }, model_GUID="d56a7d", spawn_effect="Mega Evolve" },
}

gen6PokemonData =
{
  -- Gen 6 650-678
  { name="Chespin",     level=1, types={ "Grass" },    moves={ "Vine Whip", "Growl" },               guids={ "68e630" },                     evoData={ { cost=2, ball=BLUE, gen=6, guids={ "f856fd" }, model_GUID="11c320" } }, model_GUID="bfb1c9" },
  { name="Quilladin",   level=3, types={ "Grass" },    moves={ "Needle Arm", "Pin Missile" },        guids={ "742ae2", "f856fd" },           evoData={ { cost=2, ball=RED, gen=6, guids={ "4b2bfb", "b1fb69" }, model_GUID="176400" } }, model_GUID="11c320" },
  { name="Chesnaught",  level=5, types={ "Grass", "Fighting" }, moves={ "Spiky Shield", "Hammer Arm" }, guids={ "9377c5", "4b2bfb", "b1fb69" }, evoData={ { cost="Mega", ball=MEGA, gen=6, cycle=true, guids={ "ae6292", "a9d3b9" } } }, model_GUID="176400" },
  { name="Fennekin",    level=1, types={ "Fire" },     moves={ "Ember", "Howl" },                    guids={ "311f76" },                     evoData={ { cost=2, ball=BLUE, gen=6, guids={ "e26da0" }, model_GUID="61a7d9" } }, model_GUID="95501e", spawn_effect="Status Attack" },
  { name="Braixen",     level=3, types={ "Fire" },     moves={ "Fire Spin", "Psybeam" },             guids={ "2b10a5", "e26da0" },           evoData={ { cost=2, ball=RED, gen=6, guids={ "9d0714", "e805db" }, model_GUID="8879bd" } }, model_GUID="61a7d9" },
  { name="Delphox",     level=5, types={ "Fire", "Psychic" }, moves={ "Mystical Fire", "Psyshock" }, guids={ "ab189f", "9d0714", "e805db" }, evoData={ { cost="Mega", ball=MEGA, gen=6, cycle=true, guids={ "17e3fb", "28d9bc" } } }, model_GUID="8879bd" },
  { name="Froakie",     level=1, types={ "Water" },    moves={ "Bubble", "Lick" },                   guids={ "2e6ec8" },                     evoData={ { cost=2, ball=BLUE, gen=6, guids={ "580479" }, model_GUID="1c8a04" } }, model_GUID="8d83d9" },
  { name="Frogadier",   level=3, types={ "Water" },    moves={ "Water Pulse", "Bounce" },            guids={ "d74138", "580479" },           evoData={ { cost=2, ball=RED, gen=6, guids={ "5dbd84", "3bf77c" }, model_GUID="222e7b", spawn_effect="Status Attack" } }, model_GUID="1c8a04" },
  { name="Greninja",    level=5, types={ "Water", "Dark" }, moves={ "Water Shuriken", "Night Slash" }, guids={ "6e82bc", "5dbd84", "3bf77c" }, evoData={ { cost="Mega", ball=MEGA, gen=6, cycle=true, guids={ "58ae8e", "c0d330" } } }, model_GUID="222e7b", spawn_effect="Status Attack", custom_scale=0.8, offset={x=0, y=0, z=-0.1} },
  { name="Bunnelby",    level=1, types={ "Normal" },   moves={ "Double Slap", "Leer" },              guids={ "dd60c8" },                     evoData={ { cost=2, ball=BLUE, gen=6, guids={ "8b751f" }, model_GUID="016627" } }, model_GUID="0a6a17" },
  { name="Diggersby",   level=3, types={ "Normal", "Ground" }, moves={ "Super Fang", "Dig" },        guids={ "fa6708", "8b751f" }, model_GUID="016627" },
  { name="Fletchling",  level=1, types={ "Flying", "Normal" }, moves={ "Ember", "Peck" },            guids={ "10f8ac" },                     evoData={ { cost=2, ball=BLUE, gen=6, guids={ "f9f016" }, model_GUID="516206", spawn_effect="Physical Attack" } }, model_GUID="1a27c7" },
  { name="Fletchinder", level=3, types={ "Fire", "Flying" },   moves={ "Razor Wind", "Flame Charge" }, guids={ "d4e15c", "f9f016" },         evoData={ { cost=2, ball=RED, gen=6, guids={ "2ec4b8", "b7ce61" }, model_GUID="efd523", spawn_effect="Physical Attack" } }, model_GUID="516206", spawn_effect="Physical Attack" },
  { name="Talonflame",  level=5, types={ "Fire", "Flying" },   moves={ "Steel Wing", "Flare Blitz" }, guids={ "562fca", "2ec4b8", "b7ce61" }, model_GUID="efd523", spawn_effect="Physical Attack" },
  { name="Scatterbug",  level=1, types={ "Bug" },      moves={ "String Shot", "Stun Spore" },        guids={ "2fc6c4" },                     evoData={ { cost=1, ball=PINK, gen=6, guids={ "4a3c46" }, model_GUID="a4a4dc" } }, model_GUID="2e6d23" },
  { name="Spewpa",      level=2, types={ "Bug" },      moves={ "Protect", "Harden" },                guids={ "88a3f1", "4a3c46" },           evoData={ { cost=1, ball=GREEN, gen=6, guids={ "86d919", "a619c3" }, model_GUID="4ea111" } }, model_GUID="a4a4dc" },
  { name="Vivillon",    level=3, types={ "Bug", "Flying" }, moves={ "Quiver Dance", "Sleep Powder" }, guids={ "d4e7b2", "86d919", "a619c3" }, model_GUID="4ea111" },
  { name="Litleo",      level=2, types={ "Fire", "Normal" }, moves={ "Noble Roar", "Ember" },        guids={ "8e2e3f" },                     evoData={ { cost=3, ball=YELLOW, gen=6, guids={ "318002" }, model_GUID="4b1422" },
                                                                                                                                                       { cost=3, ball=YELLOW, gen=6, guids={ "dbc1b3" }, model_GUID="122f4c" } }, model_GUID="61abba", spawn_effect="Physical Attack" },
  { name="Pyroar (F)",  level=5, types={ "Fire", "Normal" }, moves={ "Incinerate", "Endeavor" },     guids={ "e7c9cc", "dbc1b3" }, evoData={ { cost="Mega", ball=MEGA, gen=6, cycle=true, guids={ "2e77a3", "b7a874" } } }, model_GUID="122f4c", custom_scale=0.85 },
  { name="Pyroar (M)",  level=5, types={ "Fire", "Normal" }, moves={ "Fire Fang", "Hyper Voice" },   guids={ "eefb5c", "318002" }, evoData={ { cost="Mega", ball=MEGA, gen=6, cycle=true, guids={ "ef5356", "d0bb6c" } } }, model_GUID="4b1422", custom_scale=0.85 },
  { name="Flabebe",     level=1, types={ "Fairy" },    moves={ "Aromatherapy", "Fairy Wind" },       guids={ "de8ea6" },                     evoData={ { cost=2, ball=GREEN, gen=6, guids={ "e0088d" }, model_GUID="51e3b5" } }, model_GUID="84d07d" },
  { name="Floette",     level=3, types={ "Fairy" },    moves={ "Misty Terrain", "Petal Blizzard" },  guids={ "342092", "e0088d" },           evoData={ { cost=1, ball=BLUE, gen=6, guids={ "f389c7", "b23f51" }, model_GUID="b2407e", spawn_effect="Physical Attack" } }, model_GUID="51e3b5" },
  { name="Florges",     level=4, types={ "Fairy" },    moves={ "Moonblast", "Magical Leaf" },        guids={ "cd9f20", "f389c7", "b23f51" }, model_GUID="b2407e", spawn_effect="Physical Attack" },
  { name="Skiddo",      level=2, types={ "Grass" },    moves={ "Milk Drink", "Bulldoze" },           guids={ "0d26ba" },                     evoData={ { cost=2, ball=YELLOW, gen=6, guids={ "982e96" }, model_GUID="88d0b0", spawn_effect="Status Attack" } }, model_GUID="c613ad" },
  { name="Gogoat",      level=4, types={ "Grass" },    moves={ "Aerial Ace", "Horn Leech" },         guids={ "fdc8a0", "982e96" }, model_GUID="88d0b0", spawn_effect="Status Attack" },
  { name="Pancham",     level=2, types={ "Fighting" }, moves={ "Arm Thrust", "Work Up" },            guids={ "bf3855" },                     evoData={ { cost=2, ball=YELLOW, gen=6, guids={ "cf6845" }, model_GUID="bc9f87", spawn_effect="Status Attack" } }, model_GUID="0c4abd" },
  { name="Pangoro",     level=4, types={ "Fighting", "Dark" }, moves={ "Circle Throw", "Night Slash" }, guids={ "068e59", "cf6845" }, model_GUID="bc9f87", spawn_effect="Status Attack", custom_scale=0.8 },
  { name="Furfrou",     level=3, types={ "Normal" },   moves={ "Retaliate", "Charm" },               guids={ "e7d9dd" }, model_GUID="86252d" },
  { name="Espurr",      level=2, types={ "Psychic" },  moves={ "Disarming Voice", "Confusion" },     guids={ "53beaa" },                     evoData={ { cost=1, ball=GREEN, gen=6, guids={ "bb2e78" }, model_GUID="c2df10" }, { cost=1, ball=GREEN, gen=6, guids={ "8e85d5" }, model_GUID="3357e1" } }, model_GUID="11f232" },
  { name="Meowstic (F)", level=3, types={ "Psychic" }, moves={ "Psybeam", "Covet" },                 guids={ "15d501", "8e85d5" }, model_GUID="3357e1", ball=GREEN },
  { name="Meowstic (M)", level=3, types={ "Psychic" }, moves={ "Psybeam", "Charm" },                 guids={ "519e39", "bb2e78" }, model_GUID="c2df10", ball=GREEN },
  
  -- Gen 6 679-700
  { name="Honedge",     level=3, types={ "Steel", "Ghost" }, moves={ "Swords Dance", "Fury Cutter" }, guids={ "fdfef9" }, evoData={ { cost=2, ball=YELLOW, gen=6, guids={ "889a70" }, model_GUID="429a84", spawn_effect="Physical Attack" } }, model_GUID="db85f6", spawn_effect="Physical Attack" },
  { name="Doublade",    level=5, types={ "Steel", "Ghost" }, moves={ "Shadow Sneak", "Slash" }, guids={ "7456e9", "889a70" }, evoData={ { cost=1, ball=RED, gen=6, guids={ "a22c4a", "cc32a1" }, model_GUID="eed99a", idle_effect="Shield Idle", run_effect="Shield Move", spawn_effect="Shield Stance", faint_effect="Shield Faint" }, 
                                                                                                                                        { cost=1, ball=RED, gen=6, guids={ "52ba90", "f7ff82" }, model_GUID="a6b120", spawn_effect="Blade Stance" } }, 
                                                                                                                              model_GUID="429a84", spawn_effect="Physical Attack" },
  { name="Blade Aegislash", level=6, types={ "Steel", "Ghost" }, moves={ "Sacred Sword", "Shadow Claw" }, guids={ "9baa07", "52ba90", "f7ff82" }, model_GUID="a6b120", spawn_effect="Blade Stance", ball=RED },
  { name="Shield Aegislash", level=6, types={ "Steel", "Ghost" }, moves={ "Sacred Sword", "King's Shield" }, guids={ "adf3ec", "a22c4a", "cc32a1" }, model_GUID="eed99a", idle_effect="Shield Idle", run_effect="Shield Move", spawn_effect="Shield Stance", faint_effect="Shield Faint", ball=RED },
  { name="Spritzee",    level=3, types={ "Fairy" }, moves={ "Fairy Wind", "Attract" }, guids={ "ee6a18" }, evoData={ { cost=1, ball=BLUE, gen=6, guids={ "b0e63a" }, model_GUID="c86d86" } }, model_GUID="24fb10" },
  { name="Aromatisse",  level=4, types={ "Fairy" }, moves={ "Moonblast", "Heal Pulse" }, guids={ "ee7504", "b0e63a" }, model_GUID="c86d86" },
  { name="Swirlix",     level=3, types={ "Fairy" }, moves={ "Fairy Wind", "Play Nice" }, guids={ "bfc548" }, evoData={ { cost=1, ball=BLUE, gen=6, guids={ "250eca" }, model_GUID="f15bb3" } }, model_GUID="f67993" },
  { name="Slurpuff",    level=4, types={ "Fairy" }, moves={ "Cotton Guard", "Play Rough" }, guids={ "45a974", "250eca" }, model_GUID="f15bb3" },
  { name="Inkay",       level=2, types={ "Dark", "Psychic" }, moves={ "Hypnosis", "Peck" }, guids={ "c8dc46" }, evoData={ { cost=2, ball=YELLOW, gen=6, guids={ "0dca90" }, model_GUID="76d4d2" } }, model_GUID="95c70d" },
  { name="Malamar",     level=4, types={ "Dark", "Psychic" }, moves={ "Psycho Cut", "Foul Play" }, guids={ "8bd2d5", "0dca90" }, evoData={ { cost="Mega", ball=MEGA, gen=6, cycle=true, guids={ "29ce32", "67bf1a" } } }, model_GUID="76d4d2" },
  { name="Binacle",     level=3, types={ "Rock", "Water" }, moves={ "Fury Swipes", "Clamp" }, guids={ "2c77cd" }, evoData={ { cost=2, ball=YELLOW, gen=6, guids={ "c6fcdc" }, model_GUID="7acdd8" } }, model_GUID="d68ddb", spawn_effect="Physical Attack" },
  { name="Barbaracle",  level=5, types={ "Rock", "Water" }, moves={ "Ancient Power", "Razor Shell" }, guids={ "e9dd78", "c6fcdc" }, evoData={ { cost="Mega", ball=MEGA, gen=6, cycle=true, guids={ "5fb02a", "890e33" } } }, model_GUID="7acdd8" },
  { name="Skrelp",      level=3, types={ "Poison", "Water" }, moves={ "Poison Tail", "Water Gun" }, guids={ "183099" }, evoData={ { cost=3, ball=RED, gen=6, guids={ "661d8b" }, model_GUID="2c5c3c" } }, model_GUID="47af48" },
  { name="Dragalge",    level=6, types={ "Poison", "Dragon" }, moves={ "Sludge Bomb", "Dragon Pulse" }, guids={ "3a948e", "661d8b" }, evoData={ { cost="Mega", ball=MEGA, gen=6, cycle=true, guids={ "2ee052", "9f6233" } } }, model_GUID="2c5c3c" },
  { name="Clauncher",   level=3, types={ "Water" }, moves={ "Aqua Jet", "Vise Grip" }, guids={ "913807" }, evoData={ { cost=2, ball=YELLOW, gen=6, guids={ "c37f63" }, model_GUID="3bdfca" } }, model_GUID="7d382e" },
  { name="Clawitzer",   level=5, types={ "Water" }, moves={ "Crabhammer", "Dark Pulse" }, guids={ "63a317", "c37f63" }, model_GUID="3bdfca" },
  { name="Helioptile",  level=3, types={ "Electric", "Normal" }, moves={ "Thunder Shock", "Quick Attack" }, guids={ "8f08fa" }, evoData={ { cost=1, ball=BLUE, gen=6, guids={ "50ff69" }, model_GUID="7d0f27" } }, model_GUID="6c28be" },
  { name="Heliolisk",   level=4, types={ "Electric", "Normal" }, moves={ "Parabolic Charge", "Razor Wind" }, guids={ "817046", "50ff69" }, model_GUID="7d0f27" },
  { name="Tyrunt",      level=4, types={ "Rock", "Dragon" }, moves={ "Stomp", "Bite" }, guids={ "fdb796" }, evoData={ { cost=2, ball=RED, gen=6, guids={ "fc4eb1" }, model_GUID="e8c337", spawn_effect="Status Attack" } }, model_GUID="f6e97c" },
  { name="Tyrantrum",   level=6, types={ "Rock", "Dragon" }, moves={ "Head Smash", "Dragon Claw" }, guids={ "784474", "fc4eb1" }, model_GUID="e8c337", spawn_effect="Status Attack", custom_scale=0.65 },
  { name="Amaura",      level=4, types={ "Rock", "Ice" }, moves={ "Light Screen", "Icy Wind" }, guids={ "43451f" }, evoData={ { cost=2, ball=RED, gen=6, guids={ "bba475" }, model_GUID="17494e", spawn_effect="Physical Attack" } }, model_GUID="73d866" },
  { name="Aurorus",     level=6, types={ "Rock", "Ice" }, moves={ "Ancient Power", "Aurora Beam" }, guids={ "4170ac", "bba475" }, model_GUID="17494e", spawn_effect="Physical Attack", custom_scale=0.8 },
  { name="Sylveon",     level=5, types={ "Fairy" }, moves={ "Sparkly Swirl", "Copycat" }, guids={ "7ea880", "8dc6ce" }, model_GUID="381a03" },
  -- Gen 6 701-721
  { name="Hawlucha",    level=3, types={ "Fighting", "Flying" }, moves={ "Hone Claws", "Flying Press" }, guids={ "ecc5ed" }, evoData={ { cost="Mega", ball=MEGA, gen=6, cycle=true, guids={ "6b1739" } } }, model_GUID="c7140e", spawn_effect="Status Attack" },
  { name="Dedenne",     level=2, types={ "Electric", "Fairy" }, moves={ "Charm", "Nuzzle" },         guids={ "251e0f" }, model_GUID="f90863" },
  { name="Carbink",     level=3, types={ "Rock", "Fairy" }, moves={ "Stealth Rock", "Reflect" },     guids={ "bd24b2" }, model_GUID="9c0cd8", spawn_effect="Physical Attack" },
  { name="Goomy",       level=2, types={ "Dragon" },   moves={ "Bubble", "Absorb" },                 guids={ "525dda" }, evoData={ { cost=2, ball=YELLOW, gen=6, guids={ "192f7c" }, model_GUID="1ac031" }, { cost=2, ball=YELLOW, gen=8, guids={ "3ed28a" }, model_GUID="d73f52", offset={x=0, y=0.21, z=-0.1}, custom_scale=0.5 } }, model_GUID="07df6f" },
  { name="Sliggoo",     level=4, types={ "Dragon" },   moves={ "Acid Spray", "Dragon Pulse" },       guids={ "2a9ba9", "192f7c" }, evoData={ { cost=3, ball=RED, gen=6, guids={ "84a03d", "32f98c" }, model_GUID="35c5e9", spawn_effect="Status Attack" } }, model_GUID="1ac031" },
  { name="Goodra",      level=7, types={ "Dragon" },   moves={ "Power Whip", "Outrage" },            guids={ "980868", "84a03d", "32f98c" }, model_GUID="35c5e9", spawn_effect="Status Attack" },
  { name="Klefki",      level=3, types={ "Steel", "Fairy" }, moves={ "Flash Cannon", "Fairy Lock" }, guids={ "72532e" }, model_GUID="4b6f52", spawn_effect="Physical Attack" },
  { name="Phantump",    level=3, types={ "Ghost", "Grass" }, moves={ "Branch Poke", "Curse" },       guids={ "c97328" }, evoData={ { cost=1, ball=YELLOW, gen=6, guids={ "0a213f" } } }, model_GUID="fc0113" },
  { name="Trevenant",   level=4, types={ "Ghost", "Grass" }, moves={ "Wood Hammer", "Phantom Force" }, guids={ "e3f03d", "0a213f" }, model_GUID="4a56ba" },
  { name="Pumpkaboo",   level=3, types={ "Ghost", "Grass" }, moves={ "Bullet Seed", "Astonish" },    guids={ "a2221a" }, evoData={ { cost=1, ball=YELLOW, gen=6, guids={ "ea2050" }, model_GUID="16c782" } }, model_GUID="c5c891" },
  { name="Gourgeist",   level=4, types={ "Ghost", "Grass" }, moves={ "Seed Bomb", "Explosion" },     guids={ "607cf8", "ea2050" }, model_GUID="16c782" },
  { name="Bergmite",    level=3, types={ "Ice" },      moves={ "Rapid Spin", "Icy Wind" },           guids={ "cc9804" }, evoData={ { cost=2, ball=RED, gen=6, guids={ "9c5313" }, model_GUID="fc938c", spawn_effect="Status Attack" }, { cost=2, ball=RED, gen=8, guids={ "2edcdb" } } }, model_GUID="517919", spawn_effect="Physical Attack" },
  { name="Avalugg",     level=5, types={ "Ice" },      moves={ "Skull Bash", "Avalanche" },          guids={ "3b9191", "9c5313" }, model_GUID="fc938c", spawn_effect="Status Attack", custom_scale=0.28, offset={x=0, y=0, z=-0.15} },
  { name="Noibat",      level=3, types={ "Flying", "Dragon" }, moves={ "Razor Wind", "Bite" },       guids={ "eaed3f" }, evoData={ { cost=3, ball=RED, gen=6, guids={ "350e64" }, model_GUID="212e94", spawn_effect="Status Attack" } }, model_GUID="f0c07f" },
  { name="Noivern",     level=6, types={ "Flying", "Dragon" }, moves={ "Dragon Pulse", "Air Slash" }, guids={ "1b1569", "350e64" }, model_GUID="212e94", spawn_effect="Status Attack" },
  { name="Xerneas",     level=7, types={ "Fairy" },    moves={ "Geomancy", "Grass Knot" },           guids={ "ef3078" }, model_GUID="d0ee6e" },
  { name="Yveltal",     level=7, types={ "Dark", "Flying" }, moves={ "Oblivion Wing", "Dark Pulse" }, guids={ "341630" }, model_GUID="c48f86", spawn_effect="Status Attack" },
  { name="10% Zygarde", level=7, types={ "Dragon", "Ground" }, moves={ "Land's Wrath", "Glare" },    guids={ "84fad7" }, evoData={ { cost="Zygarde Cube", ball=LEGENDARY, gen=6, guids={ "eae5f7" }, model_GUID="fd9300", spawn_effect="Status Attack" } }, model_GUID="c0079c", spawn_effect="Status Attack" },
  { name="50% Zygarde", level=7, types={ "Dragon", "Ground" }, moves={ "Earthquake", "Outrage" },    guids={ "eae5f7" }, evoData={ { cost="Zygarde Cube", ball=LEGENDARY, gen=6, guids={ "ea5e61" }, model_GUID="d70d3c", spawn_effect="Physical Attack" } }, model_GUID="fd9300", spawn_effect="Status Attack", offset={x=0, y=1.0, z=0}, idle_effect="Run" },
  { name="Complete Zygarde", level=8, types={ "Dragon", "Ground" }, moves={ "Thousand Waves", "Core Enforcer" }, guids={ "ea5e61" }, evoData={ { cost="Mega", ball=MEGA, gen=5, cycle=true, guids={ "6af4b3" } } }, model_GUID="d70d3c", spawn_effect="Physical Attack", custom_scale=0.4 },
  { name="Diancie",     level=7, types={ "Rock", "Fairy" }, moves={ "Diamond Storm", "Light Screen" }, guids={ "dfd970" }, evoData={ { cost="Mega", ball=MEGA, gen=5, cycle=true, guids={ "9addeb" } } }, model_GUID="e25fa5" },
  { name="Hoopa",       level=7, types={ "Psychic", "Ghost" },  moves={ "Hyperspace Hole", "Phantom Force" }, guids={ "2dc848" }, evoData={ { cost="Prison Bottle", ball=LEGENDARY, gen=6, cycle=true, guids={ "59d7f4" }, model_GUID="434623", custom_scale=0.7 } }, model_GUID="ef60ef", spawn_effect="Status Attack" },
  { name="Unbound Hoopa",level=7, types={ "Psychic", "Dark" }, moves={ "Hyperspace Fury", "Psychic" }, guids={ "59d7f4" }, evoData={ { cost=0, ball=LEGENDARY, gen=6, cycle=true, guids={ "2dc848" }, model_GUID="ef60ef", spawn_effect="Status Attack" } }, model_GUID="434623", custom_scale=0.7 },
  { name="Volcanion",   level=7, types={ "Fire", "Water" }, moves={ "Steam Eruption", "Overheat" },  guids={ "b4f0b0" }, model_GUID="86e6c6" },

  -- Specials.
  { name="Eternal Flower Floette", level=4, types={ "Fairy" },        moves={ "Moonblast", "Safeguard" },    guids={ "5419e6" },              evoData={ { cost="Mega", ball=MEGA, gen=6, guids={ "0f4e8b" } } }, model_GUID="905be7" },

  -- Mega evolutions.
  { name="Mega Greninja",   level=6, types={ "Water", "Dark" },       moves={ "Aerial Ace", "Hydro Pump" },  guids={ "58ae8e", "c0d330" },    evoData={ { cost=0, ball=RED, gen=6, cycle=true, guids={ "6e82bc", "5dbd84", "3bf77c" } } } }, -- TODO: Needs model.
  { name="Mega Delphox",    level=6, types={ "Fire", "Psychic" },     moves={ "Dazzling Gleam", "Fire Blast" }, guids={ "17e3fb", "28d9bc" }, evoData={ { cost=0, ball=RED, gen=6, cycle=true, guids={ "ab189f", "9d0714", "e805db" } } }, model_GUID="17b9af", spawn_effect="Mega Evolve" },
  { name="Mega Chesnaught", level=6, types={ "Grass", "Fighting" },   moves={ "Stone Edge", "Brick Break" }, guids={ "ae6292", "a9d3b9" },    evoData={ { cost=0, ball=RED, gen=6, cycle=true, guids={ "9377c5", "4b2bfb", "b1fb69" } } }, model_GUID="dc8855", offset={x=0, y=0.15, z=0}, spawn_effect="Mega Evolve" },
  { name="Mega Diancie",    level=8, types={ "Rock", "Fairy" },       moves={ "Moonblast", "Stone Edge" },   guids={ "9addeb" },              evoData={ { cost=0, ball=LEGENDARY, gen=6, cycle=true, guids={ "dfd970" } } }, model_GUID="33befa", spawn_effect="Special Attack" },
  { name="Mega Hawlucha",   level=4, types={ "Fighting", "Flying" },  moves={ "Flying Press", "Lunge" },     guids={ "6b1739" },              evoData={ { cost=0, ball=GREEN, gen=6, cycle=true, guids={ "ecc5ed" } } }, model_GUID="f5de1c", offset={x=0, y=0.10, z=0}, spawn_effect="Mega Evolve" },
  { name="Mega Dragalge",   level=7, types={ "Poison", "Dragon" },    moves={ "Poison Jab", "Hydro Pump" },  guids={ "2ee052", "9f6233" },    evoData={ { cost=0, ball=RED, gen=6, cycle=true, guids={ "3a948e", "661d8b" } } }, model_GUID="a1f16d", spawn_effect="Mega Evolve" },
  { name="Mega Barbaracle", level=6, types={ "Rock", "Fighting" },    moves={ "Stone Edge", "Brick Break" }, guids={ "5fb02a", "890e33" },    evoData={ { cost=0, ball=YELLOW, gen=6, cycle=true, guids={ "e9dd78", "c6fcdc" } } } }, -- TODO: Needs model.
  { name="Mega Malamar",    level=5, types={ "Dark", "Psychic" },     moves={ "Night Slash", "Reversal" },   guids={ "29ce32", "67bf1a" },    evoData={ { cost=0, ball=YELLOW, gen=6, cycle=true, guids={ "8bd2d5", "0dca90" } } }, model_GUID="db7e4e", spawn_effect="Mega Evolve" },
  { name="Mega Pyroar",     level=5, types={ "Fire", "Normal" },      moves={ "Flamethrower", "Earth Power" }, guids={ "2e77a3", "b7a874" },  evoData={ { cost=0, ball=YELLOW, gen=6, cycle=true, guids={ "e7c9cc", "dbc1b3" } } }, model_GUID="bb0985", spawn_effect="Mega Evolve" },
  { name="Mega Pyroar",     level=5, types={ "Fire", "Normal" },      moves={ "Flamethrower", "Earth Power" }, guids={ "ef5356", "d0bb6c" },  evoData={ { cost=0, ball=YELLOW, gen=6, cycle=true, guids={ "eefb5c", "318002" } } }, model_GUID="bb0985", spawn_effect="Mega Evolve" },
  { name="Mega Eternal Flower Floette", level=5, types={ "Fairy" },   moves={ "Light of Ruin", "Magical Leaf" }, guids={ "0f4e8b" },          evoData={ { cost=0, ball=BLLUE,  gen=6, cycle=true, guids={ "5419e6" } } }, model_GUID="54830e", spawn_effect="Mega Evolve" },
  { name="Mega Zygarde",    level=8, types={ "Dragon", "Ground" },    moves={ "Focus Blast", "Nihil Light" }, guids={ "6af4b3" },             evoData={ { cost=0, ball=LEGENDARY, gen=6, cycle=true, guids={ "ea5e61" } } }, model_GUID="ea0b4f", offset={x=0, y=0.15, z=0}, spawn_effect="Mega Evolve" },
}

gen7PokemonData =
{
  -- Gen 7 722-750
  { name="Rowlet",       level=1, types={ "Grass", "Flying" },    moves={ "Astonish", "Leafage" },     guids={ "df9287" }, model_GUID="494cbe",           evoData={ { cost=2, ball=BLUE, gen=7, guids={ "1c84d5" }, model_GUID="7a6739" } } },
  { name="Dartrix",      level=3, types={ "Grass", "Flying" },    moves={ "Razor Leaf", "Peck" },      guids={ "71d957", "1c84d5" }, model_GUID="7a6739", evoData={ { cost=2, ball=RED, gen=7, guids={ "2416c8", "9bef15" }, model_GUID="d35cbf", spawn_effect="Status Attack", offset={x=0, y=0.115, z=0} }, 
                                                                                                                                                                    { cost=2, ball=RED, gen=8, guids={ "cf7b80", "5ada77" } } } },
  { name="Decidueye",    level=5, types={ "Grass", "Ghost" }, moves={ "Spirit Shackle", "Leaf Blade" }, guids={ "d50f86", "2416c8", "9bef15" }, model_GUID="d35cbf", spawn_effect="Status Attack", offset={x=0, y=0.115, z=0} },
  { name="Litten",       level=1, types={ "Fire" },     moves={ "Fury Swipes", "Ember" },              guids={ "03a2c1" }, model_GUID="bc40dd", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "1ae631" }, model_GUID="84c6db" } } },
  { name="Torracat",     level=3, types={ "Fire" },     moves={ "Double Kick", "Fire Fang" },          guids={ "4d7ec6", "1ae631" }, model_GUID="84c6db", evoData={ { cost=2, ball=RED, gen=7, guids={ "38e353", "45ba93" }, model_GUID="bc10fb" } } },
  { name="Incineroar",   level=5, types={ "Fire", "Dark" }, moves={ "Darkest Lariat", "Flare Blitz" }, guids={ "3f1566", "38e353", "45ba93" }, model_GUID="bc10fb" },
  { name="Popplio",      level=1, types={ "Water" },    moves={ "Water Gun", "Sing" },                 guids={ "9364c2" }, model_GUID="c96d82", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "454874" }, model_GUID="0aa113" } } },
  { name="Brionne",      level=3, types={ "Water" },    moves={ "Disarming Voice", "Aqua Jet" },       guids={ "d3529d", "454874" }, model_GUID="0aa113", evoData={ { cost=2, ball=RED, gen=7, guids={ "d62cf2", "4026a1" }, model_GUID="bd9d9f" } } },
  { name="Primarina",    level=5, types={ "Water", "Fairy" }, moves={ "Sparkling Aria", "Moonblast" }, guids={ "de4d6a", "d62cf2", "4026a1" }, model_GUID="bd9d9f", offset={x=0, y=1.0, z=0.03}, idle_effect="Run" },
  { name="Pikipek",      level=1, types={ "Flying", "Normal" }, moves={ "Growl", "Peck" },             guids={ "441f65" }, model_GUID="b81a90", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "5e7eae" }, model_GUID="1d959d" } } },
  { name="Trumbeak",     level=3, types={ "Flying", "Normal" }, moves={ "Rock Blast", "Echoed Voice" }, guids={ "c5f660", "5e7eae" }, model_GUID="1d959d", evoData={ { cost=1, ball=YELLOW, gen=7, guids={ "8f7253", "4fda79" }, model_GUID="2c6bc3" } } },
  { name="Toucannon",    level=4, types={ "Flying", "Normal" }, moves={ "Beak Blast", "Hyper Voice" }, guids={ "a9acd3", "8f7253", "4fda79" }, model_GUID="2c6bc3" },
  { name="Yungoos",      level=1, types={ "Normal" },   moves={ "Payback", "Tackle" },                 guids={ "195460" }, model_GUID="d77420", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "fa17b3" }, model_GUID="902af6" } } },
  { name="Gumshoos",     level=3, types={ "Normal" },   moves={ "Super Fang", "Crunch" },              guids={ "28ee0f", "fa17b3" }, model_GUID="902af6" },
  { name="Grubbin",      level=1, types={ "Bug" },      moves={ "Vise Grip", "String Shot" },          guids={ "505be7" }, model_GUID="094700", evoData={ { cost=2, ball=GREEN, gen=7, guids={ "545c8d" }, model_GUID="f5e6f0" } } },
  { name="Charjabug",    level=3, types={ "Bug", "Electric" }, moves={ "Mud-Slap", "Bug Bite" },       guids={ "918808", "545c8d" }, model_GUID="f5e6f0", evoData={ { cost=1, ball=YELLOW, gen=7, guids={ "be9f22", "59664c" }, model_GUID="d539ed" } } },
  { name="Vikavolt",     level=4, types={ "Bug", "Electric" }, moves={ "X-Scissor", "Spark" },         guids={ "8ee928", "be9f22", "59664c" }, model_GUID="d539ed" },
  { name="Crabrawler",   level=3, types={ "Fighting" }, moves={ "Rock Smash", "Crabhammer" },          guids={ "ff2869" }, model_GUID="cc10c3", spawn_effect="Physical Attack", evoData={ { cost=1, ball=YELLOW, gen=7, guids={ "7021bf" }, model_GUID="bd1445" } } },
  { name="Crabominable", level=4, types={ "Fighting", "Ice" }, moves={ "Dynamic Punch", "Ice Hammer" },guids={ "1689aa", "7021bf" }, model_GUID="bd1445" },
  { name="Baile Oricorio", level=3, types={ "Fire", "Flying" }, moves={ "Rev. Dance Fire", "Feather Dance" },  guids={ "bafd29" }, model_GUID="f5fc3a", spawn_effect="Physical Attack", ball=BLUE },
  { name="Pom-Pom Oricorio", level=3, types={ "Electric", "Flying" }, moves={ "Rev. Dance Electric", "Feather Dance" }, guids={ "f22afb" }, model_GUID="e5b28a", spawn_effect="Physical Attack", ball=BLUE },
  { name="Pa'u Oricorio",level=3, types={ "Psychic", "Flying" }, moves={ "Rev. Dance Psychic", "Feather Dance" }, guids={ "9f5d17" }, model_GUID="19413b", spawn_effect="Physical Attack", ball=BLUE },
  { name="Sensu Oricorio", level=3, types={ "Ghost", "Flying" },  moves={ "Rev. Dance Ghost", "Feather Dance" }, guids={ "a16f96" }, model_GUID="a5d034", spawn_effect="Physical Attack", ball=BLUE },
  { name="Cutiefly",     level=1, types={ "Bug", "Fairy" }, moves={ "Fairy Wind", "Absorb" },          guids={ "ffc7e4" }, model_GUID="7703b3", evoData={ { cost=2, ball=GREEN, gen=7, guids={ "aa05a4" }, model_GUID="a1c941", spawn_effect="Physical Attack" } } },
  { name="Ribombee",     level=3, types={ "Bug", "Fairy" }, moves={ "Dazzling Gleam", "Pollen Puff" }, guids={ "aa05a4", "97144c" }, model_GUID="a1c941", spawn_effect="Physical Attack" },
  { name="Rockruff",     level=2, types={ "Rock" },     moves={ "Rock Throw", "Howl" },                guids={ "e4bb33" }, evoData={ { cost=2, ball=YELLOW, gen=7, guids={ "802af7" }, model_GUID="be2395" }, 
                                                                                                                                     { cost=2, ball=YELLOW, gen=7, guids={ "5411a7" }, model_GUID="226b04" }, 
                                                                                                                                     { cost=2, ball=YELLOW, gen=7, guids={ "ff8dda" }, model_GUID="5e3a9d" } }, 
                                                                                                                           model_GUID="aaf680" },
  { name="Dusk Lycanroc", level=4, types={ "Rock" },    moves={ "Crush Claw", "Stone Edge" },          guids={ "34164a", "802af7" }, model_GUID="be2395", ball=YELLOW },
  { name="Midday Lycanroc", level=4, types={ "Rock" },  moves={ "Sucker Punch", "Accelerock" },        guids={ "9ecf49", "5411a7" }, model_GUID="226b04", ball=YELLOW },
  { name="Midnight Lycanroc", level=4, types={ "Rock" },moves={ "Rock Slide", "Counter" },             guids={ "9af49a", "ff8dda" }, model_GUID="5e3a9d", ball=YELLOW },
  { name="Solo Wishiwashi", level=4, types={ "Water" }, moves={ "Beat Up", "Brine" },                  guids={ "acfcee" }, model_GUID="ec2225" },
  { name="School Wishiwashi", level=4, types={ "Water" }, moves={ "Hydro Pump", "Endeavor" },          guids={ "ce67df" }, model_GUID="7da1df", custom_scale = 0.35 },
  { name="Mareanie",     level=3, types={ "Poison", "Water" }, moves={ "Wide Guard", "Toxic Spikes" }, guids={ "45598a" }, model_GUID="437e25", spawn_effect="Physical Attack", evoData={ { cost=2, ball=RED, gen=7, guids={ "bd3b27" }, model_GUID="0abc27" } } },
  { name="Toxapex",      level=5, types={ "Poison", "Water" }, moves={ "Bane. Bunker", "Liquidation" }, guids={ "e0c877", "bd3b27" }, model_GUID="0abc27" },
  { name="Mudbray",      level=2, types={ "Ground" },   moves={ "Double Kick", "Mud-Slap" },           guids={ "482345" }, model_GUID="d128ab", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "c06039" }, model_GUID="28b051", spawn_effect="Physical Attack" } } },
  { name="Mudsdale",     level=4, types={ "Ground" },   moves={ "High Horsepower", "Mega Kick" },      guids={ "d66f99", "c06039" }, model_GUID="28b051", spawn_effect="Physical Attack", custom_scale=0.5, offset={x=0, y=0, z=-0.05} },  
  -- Gen 7 751-775
  { name="Dewpider",     level=1, types={ "Water", "Bug" }, moves={ "Infestation", "Aqua Ring" },      guids={ "7e97f0" }, model_GUID="51f953", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "ff2e27" }, model_GUID="049687", spawn_effect="Physical Attack", custom_scale=0.7 } } },
  { name="Araquanid",    level=3, types={ "Water", "Bug" }, moves={ "Bubble Beam", "Lunge" },          guids={ "7fe018", "ff2e27" }, model_GUID="049687", spawn_effect="Physical Attack", custom_scale=0.7 },
  { name="Fomantis",     level=2, types={ "Grass" },    moves={ "Growth", "Leafage" },                 guids={ "e2dcdc" }, model_GUID="7b424f", spawn_effect="Physical Attack", evoData={ { cost=2, ball=YELLOW, gen=7, guids={ "09b260" }, model_GUID="8cd3d5", spawn_effect="Physical Attack" } } },
  { name="Lurantis",     level=4, types={ "Grass" },    moves={ "Solar Blade", "Slash" },              guids={ "d98b01", "09b260" }, model_GUID="8cd3d5", spawn_effect="Physical Attack" },
  { name="Morelull",     level=1, types={ "Grass", "Fairy" }, moves={ "Astonish", "Absorb" },          guids={ "b8f494" }, model_GUID="81ff79", evoData={ { cost=2, ball=GREEN, gen=7, guids={ "e803ee" }, model_GUID="5430cf" } } },
  { name="Shiinotic",    level=3, types={ "Grass", "Fairy" }, moves={ "Strength Sap", "Moonblast" },   guids={ "24d418", "e803ee" }, model_GUID="5430cf" },
  { name="Salandit",     level=2, types={ "Poison", "Fire" }, moves={ "Poison Fang", "Ember" },        guids={ "433a74" }, model_GUID="b90790", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "f517cd" }, model_GUID="29570d" } } },
  { name="Salazzle",     level=4, types={ "Poison", "Fire" }, moves={ "Venom Drench", "Fire Lash" },   guids={ "73d1a4", "f517cd" }, model_GUID="29570d" },
  { name="Stufful",      level=2, types={ "Normal", "Fighting" }, moves={ "Baby-Doll Eyes", "Tackle" }, guids={ "6e26ce" }, model_GUID="556b6f", spawn_effect="Physical Attack", evoData={ { cost=1, ball=BLUE, gen=7, guids={ "91caa3" }, model_GUID="7d4606", spawn_effect="Status Attack" } } },
  { name="Bewear",       level=3, types={ "Normal", "Fighting" }, moves={ "Double-Edge", "Hammer Arm" }, guids={ "c3a8f1", "91caa3" }, model_GUID="7d4606", spawn_effect="Status Attack", custom_scale=0.9 },
  { name="Bounsweet",    level=2, types={ "Grass" },    moves={ "Sweet Scent", "Rapid Spin" },         guids={ "a96b34" }, model_GUID="631d93", evoData={ { cost=1, ball=GREEN, gen=7, guids={ "d564cd" }, model_GUID="3d1e61" } } },
  { name="Steenee",      level=3, types={ "Grass" },    moves={ "Aromatic Mist", "Magical Leaf" },     guids={ "e5f221", "d564cd" }, model_GUID="3d1e61", evoData={ { cost=1, ball=BLUE, gen=7, guids={ "e8a54a", "9d1fcf" }, model_GUID="496a15" } } },
  { name="Tsareena",     level=4, types={ "Grass" },    moves={ "Trop Kick", "Stomp" },                guids={ "376bc7", "e8a54a", "9d1fcf" }, model_GUID="496a15" },
  { name="Comfey",       level=3, types={ "Fairy" },    moves={ "Floral Healing", "Petal Dance" },     guids={ "c3291e" }, model_GUID="91d031" },
  { name="Oranguru",     level=4, types={ "Normal", "Psychic" }, moves={ "Zen Headbutt", "Foul Play" },guids={ "82400d" }, model_GUID="474004", custom_scale=0.8, offset={x=0, y=0, z=-0.08} },
  { name="Passimian",    level=4, types={ "Fighting" }, moves={ "Close Combat", "Beat Up" },           guids={ "73f4a7" }, model_GUID="afbf79", custom_scale=0.9, offset={x=0, y=0, z=0.1} },
  { name="Wimpod",       level=2, types={ "Bug", "Water" }, moves={ "Struggle Bug", "Sand Attack" },   guids={ "ce812c" }, model_GUID="3b177b", evoData={ { cost=2, ball=YELLOW, gen=7, guids={ "0042df" }, model_GUID="f4e89c" } } },
  { name="Golisopod",    level=4, types={ "Bug", "Water" }, moves={ "First Impression", "Razor Shell" }, guids={ "3b9008", "0042df" }, model_GUID="f4e89c" },
  { name="Sandygast",    level=4, types={ "Ghost", "Ground" }, moves={ "Sandstorm", "Shore Up" },      guids={ "cc4a08" }, model_GUID="c2f276", evoData={ { cost=2, ball=RED, gen=7, guids={ "263266" }, model_GUID="d2d150" } } },
  { name="Palossand",    level=6, types={ "Ghost", "Ground" }, moves={ "Earth Power", "Iron Defense" }, guids={ "58aab6", "263266" }, model_GUID="d2d150", custom_scale=0.6 },
  { name="Pyukumuku",    level=3, types={ "Water" },    moves={ "Purify", "Toxic" },                   guids={ "6e7540" }, model_GUID="22fc93" },
  { name="Type: Null",   level=4, types={ "Normal" },   moves={ "Crush Claw", "Aerial Ace" },          guids={ "814ff2" }, model_GUID="f0496f", custom_scale=0.8, offset={x=0, y=0, z=-0.06}, evoData={ { cost=2, ball=RED, gen=7, guids={ "7a7849" }, model_GUID="7d0a3d" } } },
  { name="Silvally",     level=6, types={ "Normal" },   moves={ "Multi-Attack", "Tri Attack" },        guids={ "458263", "7a7849" }, model_GUID="7d0a3d" },
  { name="Red Core Minior", level=4, types={ "Rock", "Flying" }, moves={ "Stealth Rock", "Swift" },    guids={ "6d5742" }, model_GUID="f9ea82", ball=BLUE }, -- Pink
  { name="Meteor Minior",level=4, types={ "Rock", "Flying" }, moves={ "Cosmic Power", "Power Gem" },   guids={ "6c5dae" }, model_GUID="1bfee7", ball=BLUE }, -- Brown
  { name="Komala",       level=4, types={ "Normal" },   moves={ "Wood Hammer", "Yawn" },               guids={ "248d7f" }, model_GUID="c45c5f", spawn_effect="Physical Attack" },  
  -- Gen 7 776-809
  { name="Turtonator",   level=5, types={ "Fire", "Dragon" }, moves={ "Dragon Pulse", "Overheat" },    guids={ "7497e6" }, model_GUID="4c274a", spawn_effect="Status Attack", custom_scale=0.6 },
  { name="Togedemaru",   level=3, types={ "Electric", "Steel" }, moves={ "Zing Zap", "Rollout" },      guids={ "1778b2" }, model_GUID="e7484b" },
  { name="Mimikyu",      level=4, types={ "Ghost", "Fairy" }, moves={ "Play Rough", "Mimic" },         guids={ "ba3859" }, model_GUID="48082a" },
  { name="Bruxish",      level=4, types={ "Water", "Psychic" }, moves={ "Psychic Fangs", "Crunch" },   guids={ "9d31bb" }, model_GUID="70f19d" },
  { name="Drampa",       level=5, types={ "Dragon", "Normal" }, moves={ "Dragon Rage", "Hyper Voice" }, guids={ "c2e75e" }, evoData={ { cost="Mega", ball=MEGA, gen=7, cycle=true, guids={ "4c21a8" } } }, model_GUID="d1667b", custom_scale=0.7 },
  { name="Dhelmise",     level=5, types={ "Ghost", "Grass" }, moves={ "Anchor Shot", "Power Whip" },   guids={ "2e8c2e" }, model_GUID="af1f36", spawn_effect="Physical Attack" },
  { name="Jangmo-o",     level=2, types={ "Dragon" },   moves={ "Headbutt", "Scary Face" },            guids={ "9c4545" }, model_GUID="c693f2", evoData={ { cost=2, ball=YELLOW, gen=7, guids={ "20c6cc" }, model_GUID="54dfcc" } } },
  { name="Hakamo-o",     level=4, types={ "Dragon", "Fighting" }, moves={ "Dragon Dance", "Sky Uppercut" },    guids={ "3671cc", "20c6cc" }, model_GUID="54dfcc", evoData={ { cost=3, ball=RED, gen=7, guids={ "6377a7", "79e0d1" }, model_GUID="cbb201", spawn_effect="Status Attack" } } },
  { name="Kommo-o",      level=7, types={ "Dragon", "Fighting" }, moves={ "Clanging Scales", "Close Combat" }, guids={ "51cc27", "6377a7", "79e0d1" }, model_GUID="cbb201", spawn_effect="Status Attack" },
  { name="Tapu Koko",    level=7, types={ "Electric", "Fairy" }, moves={ "Nature's Madness", "Spark" }, guids={ "c5bd66" }, model_GUID="0cf91d" },
  { name="Tapu Lele",    level=7, types={ "Psychic", "Fairy" }, moves={ "Nature's Madness", "Psybeam" }, guids={ "c2d946" }, model_GUID="ff3a30", spawn_effect="Physical Attack" },
  { name="Tapu Bulu",    level=7, types={ "Grass", "Fairy" }, moves={ "Nature's Madness", "Horn Leech" }, guids={ "d099d1" }, model_GUID="c5f3b1", spawn_effect="Status Attack" },
  { name="Tapu Fini",    level=7, types={ "Water", "Fairy" }, moves={ "Nature's Madness", "Water Pulse" }, guids={ "573f6c" }, model_GUID="0ade9c", spawn_effect="Status Attack" },
  { name="Cosmog",       level=2, types={ "Psychic" },  moves={ "Teleport", "Splash" },                guids={ "4067b4" }, model_GUID="1ba3f7", spawn_effect="Physical Attack", evoData={ { cost=3, ball=YELLOW, gen=7, guids={ "dd8d38" }, model_GUID="02834c" } } },
  { name="Cosmoem",      level=5, types={ "Psychic" },  moves={ "Cosmic Power", "Teleport" },          guids={ "2d4e82", "dd8d38" }, model_GUID="02834c", evoData={ { cost=2, ball=LEGENDARY, gen=7, guids={ "2c0206" }, model_GUID="20b6ae", spawn_effect="Status Attack", custom_scale=0.7 }, { cost=2, ball=LEGENDARY, gen=7, guids={ "5228d9" }, model_GUID="aedf14", custom_scale=0.7 } } },
  { name="Solgaleo",     level=7, types={ "Psychic", "Steel" },  moves={ "Zen Headbutt", "Sunsteel Strike" },   guids={ "2337ba", "5228d9" }, model_GUID="aedf14", custom_scale=0.4, offset={x=0, y=0, z=-0.05}, evoData={ { cost="N-Solarizer", ball=LEGENDARY, gen=7, cycle=true, guids={ "c65377", "d63d82" }, model_GUID="9aed20", custom_scale=0.7 } } },
  { name="Dusk Mane Necrozma",level=7, types={ "Psychic", "Steel" }, moves={ "Prism. Laser", "Sunsteel Strike" }, guids={ "c65377", "d63d82" }, model_GUID="9aed20", custom_scale=0.3, offset={x=0, y=0, z=-0.02}, evoData={ { cost=0, ball=LEGENDARY, gen=7, cycle=true, guids={ "2337ba", "5228d9" }, model_GUID="aedf14", custom_scale=0.7 } } },
  { name="Lunala",       level=7, types={ "Psychic", "Ghost" },  moves={ "Moongeist Beam", "Dream Eater" },     guids={ "d118b4", "2c0206" }, model_GUID="20b6ae", spawn_effect="Status Attack", custom_scale=0.7, evoData={ { cost="N-Lunarizer", ball=LEGENDARY, gen=7, cycle=true, guids={ "2f92e5", "b01111" }, model_GUID="94ea0e", spawn_effect="Status Attack", custom_scale=0.7 } } },
  { name="Dawn Wings Necrozma",level=7, types={ "Psychic", "Ghost" },  moves={ "Prism. Laser", "Moongeist Beam" },guids={ "2f92e5", "b01111" }, model_GUID="94ea0e", spawn_effect="Status Attack", custom_scale=0.7, evoData={ { cost=0, ball=LEGENDARY, gen=7, cycle=true, guids={ "d118b4", "2c0206" }, model_GUID="20b6ae", spawn_effect="Status Attack", custom_scale=0.7 } } },
  { name="Nihilego",     level=7, types={ "Rock", "Poison" }, moves={ "Head Smash", "Venoshock" },     guids={ "e53d16", "89bdd3" }, model_GUID="24211e" },
  { name="Buzzwole",     level=7, types={ "Bug", "Fighting" }, moves={ "Dynamic Punch", "Lunge" },     guids={ "b97547", "273f1e" }, model_GUID="d4bad7" },
  { name="Pheromosa",    level=7, types={ "Bug", "Fighting" }, moves={ "High Jump Kick", "Silver Wind" }, guids={ "6b596f", "c31e8d" }, model_GUID="9c9628" },
  { name="Xurkitree",    level=7, types={ "Electric" }, moves={ "Shock Wave", "Power Whip" },          guids={ "c291b1", "b94c15" }, model_GUID="dd3362", spawn_effect="Status Attack", custom_scale=0.7, offset={x=0, y=0, z=-0.06} },
  { name="Celesteela",   level=7, types={ "Steel", "Flying" }, moves={ "Iron Head", "Air Slash" },     guids={ "6b8a57", "7a1209" }, model_GUID="4ed33c", custom_scale=0.3 },
  { name="Kartana",      level=7, types={ "Grass", "Steel" }, moves={ "Sacred Sword", "Leaf Blade" },  guids={ "94790b", "d13482" }, model_GUID="96978b", spawn_effect="Status Attack" },
  { name="Guzzlord",     level=7, types={ "Dark", "Dragon" }, moves={ "Dragon Rush", "Crunch" },       guids={ "ed1c1b", "0d430d" }, model_GUID="2754d6", spawn_effect="Status Attack", custom_scale=0.3, offset={x=0, y=0, z=-0.13} },
  { name="Necrozma",     level=7, types={ "Psychic" },  moves={ "Photon Geyser", "Night Slash" },      guids={ "ec14da" }, model_GUID="907d48", spawn_effect="Status Attack", evoData={ { cost="N-Solarizer", ball=LEGENDARY, gen=7, cycle=true, guids={ "6366eb" }, model_GUID="9aed20", custom_scale=0.7 }, 
                                                                                                                                                                                        { cost="N-Lunarizer", ball=LEGENDARY, gen=7, cycle=true, guids={ "1bdda7" }, model_GUID="94ea0e", spawn_effect="Status Attack", custom_scale=0.7 }, 
                                                                                                                                                                                        { cost="Ultranecrozium Z", ball=LEGENDARY, gen=7, cycle=true, guids={ "370a4c" }, model_GUID="6becd1", custom_scale=0.5 } } },
  { name="Dusk Mane Necrozma",level=7, types={ "Psychic", "Steel" },  moves={ "Prism. Laser", "Sunsteel Strike" },guids={ "6366eb" }, model_GUID="9aed20", custom_scale=0.3, offset={x=0, y=0, z=-0.02}, evoData={ { cost=0, ball=LEGENDARY, gen=7, cycle=true, guids={ "ec14da" }, model_GUID="907d48", spawn_effect="Status Attack" } } },
  { name="Dawn Wings Necrozma",level=7, types={ "Psychic", "Ghost" },  moves={ "Prism. Laser", "Moongeist Beam" },guids={ "1bdda7" }, model_GUID="94ea0e", spawn_effect="Status Attack", custom_scale=0.7, evoData={ { cost=0, ball=LEGENDARY, gen=7, cycle=true, guids={ "ec14da" }, model_GUID="907d48", spawn_effect="Status Attack" } } },
  { name="Ultra Necrozma",level=7, types={ "Psychic", "Dragon" },  moves={ "Prism. Laser", "Outrage" },guids={ "370a4c" }, model_GUID="6becd1", custom_scale=0.5, evoData={ { cost=0, ball=LEGENDARY, gen=7, cycle=true, guids={ "ec14da" }, model_GUID="907d48", spawn_effect="Status Attack" } } },
  { name="Magearna",     level=7, types={ "Steel", "Fairy" }, moves={ "Flash Cannon", "Fleur Cannon" },guids={ "0ac3f1" }, model_GUID="318474" },
  { name="Marshadow",    level=7, types={ "Fighting", "Ghost" }, moves={ "Drain Punch", "Spectral Thief" }, guids={ "8e8527" }, model_GUID="bd5b48" },
  { name="Poipole",      level=5, types={ "Poison" },   moves={ "Venoshock", "Fell Stinger" },         guids={ "6cadb0", "925ed3" }, model_GUID="94b4e8", spawn_effect="Physical Attack", evoData={ { cost=2, ball=LEGENDARY, gen=7, guids={ "c42a20" }, model_GUID="e435dd", spawn_effect="Physical Attack" } } },
  { name="Naganadel",    level=7, types={ "Poison", "Dragon" }, moves={ "Dragon Pulse", "Poison Jab" }, guids={ "4d5ae0", "a5cc1f", "c42a20" }, model_GUID="e435dd", spawn_effect="Physical Attack" },
  { name="Stakataka",    level=7, types={ "Rock", "Steel" }, moves={ "Heavy Slam", "Wide Guard" },     guids={ "1446e4", "5410ea" }, model_GUID="2e57e4", spawn_effect="Status Attack", custom_scale=0.3 },
  { name="Blacephalon",  level=7, types={ "Fire", "Ghost" }, moves={ "Shadow Ball", "Mind Blown" },    guids={ "38816d", "ca37be" }, model_GUID="d38e89" },
  { name="Zeraora",      level=7, types={ "Electric" }, moves={ "Plasma Fists", "Reversal" },          guids={ "3bc718" }, model_GUID="7451bb" },
  { name="Meltan",       level=5, types={ "Steel" },    moves={ "Flash Cannon", "Acid Armor" },        guids={ "abc2d5" }, evoData={ { cost=2, ball=LEGENDARY, gen=7, guids={ "aec8ec" } } }, model_GUID="71bac2" },
  { name="Melmetal",     level=7, types={ "Steel" },    moves={ "Dbl. Iron Bash", "Hyper Beam" },      guids={ "f35bd5", "aec8ec" }, evoData={ { cost="GMax", ball=MEGA, gen=7, cycle=true, guids={ "89bba5", "00eaca" } } }, model_GUID="362454", custom_scale=0.7 },  
  -- Gen 7 Alolan
  { name="Alolan Rattata",      level=1, types={ "Dark", "Normal" },     moves={ "Focus Energy", "Quick Attack" },      guids={ "8dc2dc" }, model_GUID="53c2a4", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "673f0e" }, model_GUID="905fd9" } } },
  { name="Alolan Raticate",     level=3, types={ "Dark", "Normal" },     moves={ "Super Fang", "Crunch" },              guids={ "924294", "673f0e" }, model_GUID="905fd9" },
  { name="Alolan Raichu",       level=3, types={ "Electric", "Psychic" }, moves={ "Psychic", "Spark" },                 guids={ "65a373", "1e53ce", "ef1a51" }, model_GUID="ac9e94", spawn_effect="Physical Attack" },
  { name="Alolan Sandshrew",    level=1, types={ "Ice", "Steel" },       moves={ "Powder Snow", "Defense Curl" },       guids={ "e51fcd" }, model_GUID="52ee91", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "be4022" }, model_GUID="2b6482" } } },
  { name="Alolan Sandslash",    level=3, types={ "Ice", "Steel" },       moves={ "Metal Claw", "Icicle Crash" },        guids={ "2f3bf2", "be4022" }, model_GUID="2b6482" },
  { name="Alolan Vulpix",       level=2, types={ "Ice" },                moves={ "Powder Snow", "Confuse Ray" },        guids={ "edcd10" }, model_GUID="cbe5dc", evoData={ { cost=3, ball=YELLOW, gen=7, guids={ "e0f9e1" }, model_GUID="654f90" } } },
  { name="Alolan Ninetales",    level=5, types={ "Ice", "Fairy" },       moves={ "Aurora Beam", "Charm" },              guids={ "950de0", "e0f9e1" }, model_GUID="654f90" },
  { name="Alolan Diglett",      level=2, types={ "Ground", "Steel" },    moves={ "Metal Claw", "Sand Attack" },         guids={ "a70b67" }, model_GUID="714593", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "b91f7c" }, model_GUID="461e52" } } },
  { name="Alolan Dugtrio",      level=4, types={ "Ground", "Steel" },    moves={ "Iron Head", "Dig" },                  guids={ "f4d5cc", "b91f7c" }, model_GUID="461e52" },
  { name="Alolan Meowth",       level=2, types={ "Dark" },               moves={ "Nasty Plot", "Fake Out" },            guids={ "8df15f" }, model_GUID="bcee34", spawn_effect="Physical Attack", evoData={ { cost=2, ball=BLUE, gen=7, guids={ "ccd8e9" }, model_GUID="0684cc" } } },
  { name="Alolan Persian",      level=4, types={ "Dark" },               moves={ "Feint Attack", "Power Gem" },         guids={ "3986bc", "ccd8e9" }, model_GUID="0684cc", custom_scale=0.9, offset={x=0, y=0, z=-0.05} },
  { name="Alolan Geodude",      level=1, types={ "Rock", "Electric" },   moves={ "Rock Throw", "Charge" },              guids={ "c5d66d" }, model_GUID="0b6e11", evoData={ { cost=3, ball=BLUE, gen=7, guids={ "01562b" }, model_GUID="27bcd3" } } },
  { name="Alolan Graveler",     level=4, types={ "Rock", "Electric" },   moves={ "Thunder Punch", "Self-Destruct" },    guids={ "38fa09", "01562b" }, model_GUID="27bcd3", evoData={ { cost=2, ball=RED, gen=7, guids={ "b21424", "7702b6" }, model_GUID="18e42a", spawn_effect="Physical Attack" } } },
  { name="Alolan Golem",        level=6, types={ "Rock", "Electric" },   moves={ "Discharge", "Stone Edge" },           guids={ "6e7cf6", "b21424", "7702b6" }, model_GUID="18e42a", spawn_effect="Physical Attack" },
  { name="Alolan Grimer",       level=4, types={ "Poison", "Dark" },     moves={ "Disable", "Bite" },                   guids={ "c9ea3a" }, model_GUID="9b4419", evoData={ { cost=1, ball=RED, gen=7, guids={ "d5d023" }, model_GUID="7e8a7f" } } },
  { name="Alolan Muk",          level=5, types={ "Poison", "Dark" },     moves={ "Poison Fang", "Knock Off" },          guids={ "20e759", "d5d023" }, model_GUID="7e8a7f", custom_scale=0.5 },
  { name="Alolan Exeggutor",    level=5, types={ "Grass", "Dragon" },    moves={ "Dragon Hammer", "Seed Bomb" },        guids={ "2b8a77", "56fca1" }, model_GUID="e56668" },
  { name="Alolan Marowak",      level=5, types={ "Fire", "Ghost" },      moves={ "Shadow Bone", "Bone Club" },          guids={ "04850a", "deb623" }, model_GUID="245f21" },

  -- Mega evolutions.
  { name="GMax Melmetal",       level=7, types={ "Steel" },              moves={ "Meltdown", "Strike" },                guids={ "89bba5", "00eaca" },           evoData={ { cost=0, ball=LEGENDARY, gen=7, cycle=true, guids={ "f35bd5", "aec8ec" } } }, model_GUID="b839e1", custom_scale=0.6 },
  { name="Mega Drampa",         level=6, types={ "Normal", "Dragon" },   moves={ "Dragon Rush", "Fire Blast" },         guids={ "4c21a8" },                     evoData={ { cost=0, ball=YELLOW, gen=7, cycle=true, guids={ "c2e75e" } } }, model_GUID="71c240", custom_scale=0.7, spawn_effect="Mega Evolve" },
}

gen8PokemonData =
{
  -- Gen 8 810-834
  { name="Grookey",       level=1, types={ "Grass" }, moves={ "Branch Poke", "Growl" },    guids={ "4c56ac" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "b22689" }, model_GUID="51e7b2" } }, model_GUID="4cb51b" },
  { name="Thwackey",      level=3, types={ "Grass" }, moves={ "Double Hit", "Razor Leaf" }, guids={ "ad204e", "b22689" }, evoData={ { cost=2, ball=RED, gen=8, guids={ "2eba49", "f9d565" }, model_GUID="2a352f" } }, model_GUID="51e7b2" },
  { name="Rillaboom",     level=5, types={ "Grass" }, moves={ "Drum Beating", "Boomburst" }, guids={ "d4a518", "2eba49", "f9d565" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "d98c1f", "712942" }, model_GUID="6e7118" } }, model_GUID="2a352f" },
  { name="Scorbunny",     level=1, types={ "Fire" }, moves={ "Ember", "Agility" }, guids={ "d5c9cd" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "5cef8f" }, model_GUID="e1dd29" } }, model_GUID="003ce3" },
  { name="Raboot",        level=3, types={ "Fire" }, moves={ "Flame Charge", "Double Kick" }, guids={ "a179de", "5cef8f" }, evoData={ { cost=2, ball=RED, gen=8, guids={ "e52d3f", "77f114" }, model_GUID="edbb96" } }, model_GUID="e1dd29" },
  { name="Cinderace",     level=5, types={ "Fire" }, moves={ "Pyro Ball", "Bounce" }, guids={ "68e885", "e52d3f", "77f114" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "0ae3eb", "35db21" }, model_GUID="5fd307" } }, model_GUID="edbb96" },
  { name="Sobble",        level=1, types={ "Water" }, moves={ "Water Gun", "Pound" }, guids={ "732820" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "767be0" }, model_GUID="066200" } }, model_GUID="4fb88c" },
  { name="Drizzile",      level=3, types={ "Water" }, moves={ "Water Pulse", "Tearful Look" }, guids={ "1ff7e7", "767be0" }, evoData={ { cost=2, ball=RED, gen=8, guids={ "caa8d1", "70e2dd" }, model_GUID="289431" } }, model_GUID="066200" },
  { name="Inteleon",      level=5, types={ "Water" }, moves={ "Snipe Shot", "U-Turn" }, guids={ "a87b0f", "caa8d1", "70e2dd" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "834995", "e4f6e7" }, model_GUID="1e011b" } }, model_GUID="289431" },
  { name="Skwovet",       level=1, types={ "Normal" }, moves={ "Stuff Cheeks", "Bite" }, guids={ "0092fc" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "0f5cf9" }, model_GUID="a5ecec" } }, model_GUID="400005" },
  { name="Greedent",      level=3, types={ "Normal" }, moves={ "Bullet Seed", "Covet" }, guids={ "7d0ad9", "0f5cf9" }, model_GUID="a5ecec" },
  { name="Rookidee",      level=1, types={ "Flying" }, moves={ "Fury Attack", "Peck" }, guids={ "6d058d" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "aac3a7" } } }, model_GUID="581f48" },
  { name="Corvisquire",   level=3, types={ "Flying" }, moves={ "Hone Claws", "Drill Peck" }, guids={ "817152", "aac3a7" }, evoData={ { cost=3, ball=RED, gen=8, guids={ "29b1df", "39c41f" } } }, model_GUID="b1809c" },
  { name="Corviknight",   level=6, types={ "Flying", "Steel" }, moves={ "Steel Wing", "Brave Bird" }, guids={ "d80b24", "29b1df", "39c41f" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "ea919f", "1c820c" }, model_GUID="751679" } }, model_GUID="1515e6" },
  { name="Blipbug",       level=1, types={ "Bug" }, moves={ "Struggle Bug" }, guids={ "e534da" }, evoData={ { cost=1, ball=PINK, gen=8, guids={ "fa8ba4" } } }, model_GUID="6446d0" },
  { name="Dottler",       level=2, types={ "Bug", "Psychic" }, moves={ "Confusion", "Reflect" }, guids={ "a228d5", "fa8ba4" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "6e7247", "eb4403" } } }, model_GUID="b0de96" },
  { name="Orbeetle",      level=4, types={ "Bug", "Psychic" }, moves={ "Bug Buzz", "Psybeam" }, guids={ "4150f3", "6e7247", "eb4403" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "27ad44", "aee305" } } }, model_GUID="a6d4d8" },
  { name="Nickit",        level=1, types={ "Dark" }, moves={ "Quick Attack", "Hone Claws" }, guids={ "7e6383" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "cf334e" }, model_GUID="fdee2d" } }, model_GUID="e3debf" },
  { name="Thievul",       level=3, types={ "Dark" }, moves={ "Tail Slap", "Thief" }, guids={ "37a9d1", "cf334e" }, model_GUID="fdee2d" },
  { name="Gossifleur",    level=2, types={ "Grass" }, moves={ "Rapid Spin", "Synthesis" }, guids={ "bbf00f" }, evoData={ { cost=1, ball=GREEN, gen=8, guids={ "f8b45c" } } }, model_GUID="2f875e" },
  { name="Eldegoss",      level=3, types={ "Grass" }, moves={ "Cotton Guard", "Sing" }, guids={ "4f25ee", "f8b45c" }, model_GUID="227ab8" },
  { name="Wooloo",        level=1, types={ "Normal" }, moves={ "Double Kick", "Defense Curl" }, guids={ "f627d1" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "17bfff" } } }, model_GUID="d2c51c" },
  { name="Dubwool",       level=3, types={ "Normal" }, moves={ "Cotton Guard", "Headbutt" }, guids={ "9bc17c", "17bfff" }, model_GUID="d79f30" },
  { name="Chewtle",       level=1, types={ "Water" }, moves={ "Water Gun", "Protect" }, guids={ "9ea87e" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "bf22b0" } } }, model_GUID="273314" },
  { name="Drednaw",       level=3, types={ "Water", "Rock" }, moves={ "Razor Shell", "Jaw Lock" }, guids={ "620b5e", "bf22b0" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "8054c2", "5cb470" }, model_GUID="72b7ce" } }, model_GUID="0ab337", custom_scale=0.8 },  
  -- Gen 8 835-858
  { name="Yamper",        level=1, types={ "Electric" }, moves={ "Nuzzle", "Roar" }, guids={ "71d863" }, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "d10387" }, model_GUID="daf531" } }, model_GUID="4b1edc" },
  { name="Boltund",       level=3, types={ "Electric" }, moves={ "Wild Charge", "Play Rough" },   guids={ "fa69eb", "d10387" }, model_GUID="daf531" }, 
  { name="Rolycoly",      level=1, types={ "Rock" }, moves={ "Rock Polish", "Rapid Spin" },   guids={ "152d0a"}, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "19ffab"} } }, model_GUID="15b462" }, 
  { name="Carkol",        level=3, types={ "Rock", "Fire" }, moves={ "Rock Blast", "Flame Charge" },  guids={ "7e1e68", "19ffab"}, evoData={ { cost=2, ball=RED, gen=8, guids={ "678720", "5eecb1"} } }, model_GUID="527563" }, 
  { name="Coalossal",     level=5, types={ "Rock", "Fire" }, moves={ "Ancient Power", "Incinerate" }, guids={ "6ac20e", "678720", "5eecb1" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "423aca", "6407e4" }, model_GUID="dfe276" } }, model_GUID="e7e32a", custom_scale=0.7 },
  { name="Applin",        level=2, types={ "Grass", "Dragon" }, moves={ "Astonish", "Withdraw" },  guids={ "5d39a1" }, evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "508cc7" }, model_GUID="c9aba6" }, { cost=2, ball=YELLOW, gen=8, guids={ "3a326b" }, model_GUID="8997a1" }, { cost=2, ball=YELLOW, gen=9, guids={ "951a30" } } }, model_GUID="bf6fb1" },
  { name="Flapple",       level=4, types={ "Grass", "Dragon" }, moves={ "Grav Apple", "Wing Attack" }, guids={ "beb575", "508cc7" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "c4ec8a", "975b3c" }, model_GUID="62fbcf" } }, model_GUID="c9aba6" },
  { name="Appletun",      level=4, types={ "Grass", "Dragon" }, moves={ "Apple Acid", "Headbutt" },  guids={ "a26f34", "3a326b" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "945af3", "31aacc" }, model_GUID="b87e45" } }, model_GUID="8997a1" },
  { name="Silicobra",     level=3, types={ "Ground" }, moves={ "Sandstorm", "Headbutt" }, guids={ "2f1d01" }, evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "3e0da6"} } }, model_GUID="69f041" },
  { name="Sandaconda",    level=5, types={ "Ground" }, moves={ "Sand Tomb", "Brutal Swing" }, guids={ "c91baf", "3e0da6" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "2e2482", "3ab61a" }, model_GUID="1e2e60" } }, model_GUID="d15ad0" },
  { name="Cramorant",     level=4, types={ "Flying", "Water" }, moves={ "Spit Up", "Dive" },  guids={ "55ee12"}, model_GUID="2b1b24" }, 
  { name="Arrokuda",      level=2, types={ "Water" }, moves={ "Fury Attack", "Aqua Jet" }, guids={ "642dca"}, evoData={ { cost=1, ball=GREEN, gen=8, guids={ "e1ccdd" }, model_GUID="2d9e7c" } }, model_GUID="95b4b0" },
  { name="Barraskewda",   level=3, types={ "Water" }, moves={ "Double-Edge", "Liquidation" },     guids={ "1e3235", "e1ccdd" }, model_GUID="2d9e7c" },
  { name="Toxel",         level=2, types={ "Electric", "Poison" }, moves={ "Tearful Look", "Nuzzle" },  guids={ "21446c" }, evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "bea82d" }, model_GUID="42a6c3" }, { cost=2, ball=YELLOW, gen=8, guids={ "a7277f" }, model_GUID="4d9bff" }  }, model_GUID="37cb24" },
  { name="Amped Toxtricity", level=4, types={ "Electric", "Poison" }, moves={ "Poison Jab", "Overdrive" },    guids={ "0c6876", "bea82d" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "1644af", "f8615c" }, model_GUID="7c090f" } }, model_GUID="42a6c3", ball=YELLOW },  -- Amped Form
  { name="Low-Key Toxtricity", level=4, types={ "Electric", "Poison" }, moves={ "Acid Spray", "Spark" },  guids={ "67ec92", "a7277f" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "8c4dd2", "e01e0a" }, model_GUID="7c090f" } }, model_GUID="4d9bff", ball=YELLOW }, -- Low Key Form
  { name="Sizzlipede",    level=2, types={ "Fire", "Bug" }, moves={ "Ember", "Coil" }, guids={ "d3aefa"}, evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "bf95c2" }, model_GUID="a1917b" } }, model_GUID="746584" },
  { name="Centiskorch",   level=4, types={ "Fire", "Bug" }, moves={ "Flame Wheel", "Bug Bite" },   guids={ "5b2923", "bf95c2" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "457776", "f8726f" }, model_GUID="6bd6e4" } }, model_GUID="a1917b", offset={x=0, y=0, z=0.03} },
  { name="Clobbopus",     level=3, types={ "Fighting" }, moves={ "Rock Smash", "Taunt" }, guids={ "5ddd8c" }, evoData={ { cost=1, ball=BLUE, gen=8, guids={ "4725cb" }, model_GUID="693233" } }, model_GUID="9e835b" },
  { name="Grapploct",     level=4, types={ "Fighting" }, moves={ "Octazooka", "Octolock" }, guids={ "d20c3d", "4725cb"}, model_GUID="693233" },
  { name="Sinistea",      level=3, types={ "Ghost" }, moves={ "Mega Drain", "Astonish" }, guids={ "db3703"}, evoData={ { cost=1, ball=BLUE, gen=8, guids={ "584ee3" }, model_GUID="11b1fd" } }, model_GUID="7a2208" },
  { name="Polteageist",   level=4, types={ "Ghost" }, moves={ "Curse", "Protect" },  guids={ "9b2f6e", "584ee3" }, model_GUID="11b1fd" },
  { name="Hatenna",       level=2, types={ "Psychic" }, moves={ "Confusion", "Life Dew" },    guids={ "c0efd5"}, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "fc0b6e" }, model_GUID="7f2434" } }, model_GUID="712415" },
  { name="Hattrem",       level=4, types={ "Psychic" }, moves={ "Disarming Voice", "Brutal Swing" },  guids={ "c29b93", "fc0b6e"}, evoData={ { cost=2, ball=RED, gen=8, guids={ "9cfe10", "42db1f" }, model_GUID="9ac795" } }, model_GUID="7f2434" },
  { name="Hatterene",     level=6, types={ "Psychic", "Fairy" }, moves={ "Dazzling Gleam", "Psybeam" },  guids={ "e711fc", "9cfe10", "42db1f" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "0fab1b", "73ef1b" }, model_GUID="9219a8" } }, model_GUID="9ac795" },  
  -- Gen 8 859-884
  { name="Impidimp",      level=3, types={ "Dark", "Fairy" }, moves={ "Assurance", "Swagger"}, guids={ "955f8e" }, evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "09d5df" }, model_GUID="9cc006" } }, model_GUID="b49ec1" },
  { name="Morgrem",       level=5, types={ "Dark", "Fairy" }, moves={ "Play Rough", "Torment" }, guids={ "372fdf", "09d5df" }, evoData={ { cost=1, ball=RED, gen=8, guids={ "2f04d6", "0cccf2" }, model_GUID="3db539" } }, model_GUID="9cc006" },
  { name="Grimmsnarl",    level=6, types={ "Dark", "Fairy" }, moves={ "Spirit Break", "Foul Play" }, guids={ "9a62bf", "2f04d6", "0cccf2" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "671823", "325e58" }, model_GUID="e31f45" } }, model_GUID="3db539" },
  { name="Obstagoon",     level=5, types={ "Dark", "Normal" }, moves={ "Obstruct", "Counter" }, guids={ "355878", "f9576c", "18880a" }, model_GUID="89cdcd" },
  { name="Perrserker",    level=4, types={ "Steel" }, moves={ "Iron Head", "Slash" }, guids={ "352cd9", "33995d" }, model_GUID="7ae05b" },
  { name="Cursola",       level=5, types={ "Ghost" }, moves={ "Strength Sap", "Hex" }, guids={ "05fc5b", "ac68fa" }, model_GUID="b8f109" },
  { name="Sirfetch'd",    level=5, types={ "Fighting" }, moves={ "Meteor Assault", "Leaf Blade" }, guids={ "d7a5ef", "166853"}, model_GUID="158014" },
  { name="Mr. Rime",      level=5, types={ "Ice", "Psychic" }, moves={ "Freeze-Dry", "Psybeam" }, guids={ "f05e97", "f5e748", "2de3e8"}, model_GUID="908864" },
  { name="Runerigus",     level=5, types={ "Ground", "Ghost" }, moves={ "Sand Tomb", "Shadow Claw" }, guids={ "78c895", "b8d9ee"}, model_GUID="999baf" },
  { name="Milcery",       level=2, types={ "Fairy" }, moves={ "Sweet Scent", "Sweet Kiss" }, guids={ "d07981"}, evoData={ { cost=1, ball=BLUE, gen=8, guids={ "f57bd3" } } }, model_GUID="a82cac" },
  { name="Alcremie",      level=3, types={ "Fairy" }, moves={ "Acid Armor", "Decorate" }, guids={ "71833d", "f57bd3" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "3c5cba", "0b4ee1" } } }, model_GUID="44047f" },
  { name="Falinks",       level=4, types={ "Fighting" }, moves={ "First Impression", "No Retreat" }, guids={ "8bb381" }, evoData={ { cost="Mega", ball=MEGA, gen=8, cycle=true, guids={ "f365e2" } } }, model_GUID="913225", custom_scale=0.75 },
  { name="Pincurchin",    level=3, types={ "Electric" }, moves={ "Toxic Spikes", "Zing Zap" }, guids={ "4657b0" }, model_GUID="4c0765" },
  { name="Snom",          level=2, types={ "Ice", "Bug" }, moves={ "Powder Snow", "Struggle Bug" }, guids={ "b1d7df" }, evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "8b539d" }, model_GUID="aa5643" } }, model_GUID="b248ab" },
  { name="Frosmoth",      level=4, types={ "Ice", "Bug" }, moves={ "Bug Buzz", "Icy Wind" }, guids={ "613ae8", "8b539d" }, model_GUID="aa5643" },
  { name="Stonjourner",   level=4, types={ "Rock" }, moves={ "Wide Guard", "Mega Kick" }, guids={ "ad7026" }, model_GUID="317554", custom_scale=0.7 },
  { name="Ice Eiscue",    level=3, types={ "Ice" }, moves={ "Headbutt", "Hail" }, guids={ "7367d0" }, model_GUID="399eee", ball=BLUE },    -- Ice
  { name="Noice Eiscue",  level=3, types={ "Ice" }, moves={ "Chilling Water", "Headbutt" }, guids={ "7da34a" }, ball=BLUE, model_GUID="cc39ff" },
  { name="Indeedee",      level=3, types={ "Psychic", "Normal" }, moves={ "Disarming Voice", "Psychic" }, guids={ "d23303"  }, model_GUID="1cb82f" },
  { name="Full Belly Morpeko", level=3, types={ "Electric","Dark" }, moves={ "Bullet Seed", "Aura Wheel Electric" }, guids={ "d7c95a" }, model_GUID="6393df", ball=BLUE }, -- Yellow Happy :)
  { name="Hangry Morpeko", level=3, types={ "Dark", "Electric" }, moves={ "Aura Wheel Dark", "Thrash" }, guids={ "ccf33f" }, model_GUID="1128d8", ball=BLUE },        -- Purple Angry :(
  { name="Cufant",        level=3, types={ "Steel" }, moves={ "Rock Smash", "Stomp" }, guids={ "e94da5" }, evoData={ { cost=2, ball=RED, gen=8, guids={ "bb0dab" }, model_GUID="fa0704" } }, model_GUID="a37dd9" },
  { name="Copperajah",    level=5, types={ "Steel" }, moves={ "High Horsepower", "Heavy Slam" }, guids={ "772688", "bb0dab" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "ad2c75", "1e68f7" }, model_GUID="be6c58" } }, model_GUID="fa0704", custom_scale=0.4 },
  { name="Dracozolt",     level=4, types={ "Electric", "Dragon" }, moves={ "Ancient Power", "Bolt Beak" }, guids={ "8c8145" }, model_GUID="37afb9", custom_scale=0.8 },
  { name="Arctozolt",     level=4, types={ "Electric", "Ice" }, moves={ "Ancient Power", "Icicle Crash" }, guids={ "21422d"}, model_GUID="58dc46" },
  { name="Dracovish",     level=4, types={ "Water", "Dragon" }, moves={ "Ancient Power", "Dragon Breath" }, guids={ "79900c"}, model_GUID="8f7c9c" },
  { name="Arctovish",     level=4, types={ "Water", "Ice" }, moves={ "Ancient Power", "Fishious Rend" }, guids={ "d8d24a"}, model_GUID="d1ae37" },
  { name="Duraludon",     level=5, types={ "Steel", "Dragon" }, moves={ "Metal Claw", "Dragon Claw" }, guids={ "19c226" }, evoData={ { cost=1, ball=RED, gen=9, guids={ "3a6873" } }, 
                                                                                                                                     { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "e17508", "ff891b" }, model_GUID="a14b0f" } }, 
                                                                                                                           model_GUID="397452", custom_scale=0.85 },
  { name="Dreepy",        level=2, types={ "Dragon", "Ghost" }, moves={ "Infestation", "Astonish" }, guids={ "947a92" }, evoData={ { cost=3, ball=YELLOW, gen=8, guids={ "b9b3ac" } } }, model_GUID="b500da" },
  { name="Drakloak",      level=5, types={ "Dragon", "Ghost" }, moves={ "Double Hit", "Dragon Pulse" }, guids={ "0dd987", "b9b3ac" }, evoData={ { cost=2, ball=RED, gen=8, guids={ "0fafd7", "89c1a8" } } }, model_GUID="d04b70" },
  { name="Dragapult",     level=7, types={ "Dragon", "Ghost" }, moves={ "Dragon Darts", "Phantom Force" }, guids={ "ccc405", "0fafd7", "89c1a8" }, model_GUID="1f4890" },  
  { name="Zacian",        level=7, types={ "Fairy" }, moves={ "Giga Impact", "Moonblast" }, guids={ "e97b5b" }, evoData={ { cost="Rusted Sword", ball=LEGENDARY, gen=8, cycle=true, guids={ "c3ff51"}, model_GUID="6dccb4" } }, model_GUID="659f7c", custom_scale=0.6, offset={x=0, y=0, z=-0.2} },
  { name="Crowned Sword Zacian", level=8, types={ "Fairy", "Steel" }, moves={ "Behemoth Blade", "Play Rough" }, guids={ "c3ff51" }, evoData={ { cost=0, ball=LEGENDARY, gen=8, cycle=true, guids={ "e97b5b"}, model_GUID="659f7c" } }, model_GUID="6dccb4", custom_scale=0.6, offset={x=0, y=0, z=-0.2} }, -- C. Sword
  { name="Zamazenta",     level=7, types={ "Fighting" }, moves={ "Wide Guard", "Close Combat" }, guids={ "925e6b" }, evoData={ { cost="Rusted Shield", ball=LEGENDARY, gen=8, cycle=true, guids={ "51a0ef" }, model_GUID="37f3aa" } }, model_GUID="a27a5b", custom_scale=0.6, offset={x=0, y=0, z=-0.2} },
  { name="Crowned Shield Zamazenta", level=8, types={ "Fighting", "Steel" }, moves={ "Behemoth Bash", "Reversal" }, guids={ "51a0ef" }, evoData={ { cost=0, ball=LEGENDARY, gen=8, cycle=true, guids={ "925e6b"}, model_GUID="a27a5b" } }, model_GUID="37f3aa", custom_scale=0.6, offset={x=0, y=0, z=-0.2} }, -- C. Shield
  { name="Eternatus",     level=7, types={ "Poison", "Dragon" }, moves={ "Dynamax Cannon", "Cross Poison" }, guids={ "c0d41b" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "e78955" } } }, model_GUID="b03c9c", custom_scale=0.3 },
  { name="Kubfu",         level=5, types={ "Fighting" }, moves={ "Aerial Ace", "Counter" }, guids={ "312af1" }, evoData={ { cost="Scroll of Waters", ball=LEGENDARY, gen=8, guids={ "ab896e"} }, 
                                                                                                                        { cost="Scroll of Darkness", ball=LEGENDARY, gen=8, guids={ "015ff0"} } }, 
                                                                                                              model_GUID="bed41b" },
  { name="Rapid-Strike Urshifu", level=7, types={ "Fighting", "Water" }, moves={ "Surging Strikes", "Brick Break" }, guids={ "ab896e" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "bf033c" }, model_GUID="6c1d60" } }, model_GUID="6f4ae9", idle_effect="Rapid Idle", custom_scale=0.85 },   -- Rapid Strike
  { name="Single-Strike Urshifu", level=7, types={ "Fighting", "Dark" }, moves={ "Wicked Blow", "Brick Break" }, guids={ "015ff0" }, evoData={ { cost="GMax", ball=MEGA, gen=8, cycle=true, guids={ "dd3373" }, model_GUID="4491c0" } }, model_GUID="bde30a", custom_scale=0.35, offset={x=0, y=0, z=-0.03} },      -- Single Strike
  { name="Zarude",        level=7, types={ "Dark", "Grass" }, moves={ "Jungle Healing", "Bite" }, guids={ "651f81" }, model_GUID="0ab53f", offset={x=0, y=0, z=-0.03} },
  { name="Regieleki",     level=7, types={ "Electric" }, moves={ "Thunder Cage", "Hyper Beam" }, guids={ "45a74f" }, model_GUID="8f56ea" },
  { name="Regidrago",     level=7, types={ "Dragon" }, moves={ "Ancient Power", "Dragon Energy" }, guids={ "2ec2b8" }, model_GUID="ca1c89" },
  { name="Glastrier",     level=7, types={ "Ice" }, moves={ "Icicle Crash", "Thrash" }, guids={ "05139e" }, evoData={ { cost="Reigns of Unity", ball=LEGENDARY, gen=8, cycle=true, guids={ "5e40a8" } } }, model_GUID="3225b8", custom_scale=0.8 },
  { name="Ice Rider Calyrex", level=8, types={ "Psychic", "Ice" }, moves={ "Glacial Lance", "Psychic" }, guids={ "5e40a8" }, evoData={ { cost=0, ball=LEGENDARY, gen=8, cycle=true, guids={ "05139e" } } }, model_GUID="e85209", custom_scale=0.8 }, -- Ice Rider (for Glastrier)
  { name="Spectrier",     level=7, types={ "Ghost" }, moves={ "Thrash", "Hex" }, guids={ "3b4d86" }, evoData={ { cost="Reigns of Unity", ball=LEGENDARY, gen=8, guids={ "86748a" }, model_GUID="58493a" } }, model_GUID="3186ca", custom_scale=0.8 },
  { name="Shadow Rider Calyrex", level=8, types={ "Psychic", "Ghost" }, moves={ "Astral Barrage", "Psychic" }, guids={ "86748a" }, evoData={ { cost=0, ball=LEGENDARY, gen=8, cycle=true, guids={ "3b4d86" } } }, model_GUID="58493a", custom_scale=0.8 }, -- Shadow Rider (for Spectrier)
  { name="Calyrex",       level=7, types={ "Psychic", "Grass" }, moves={ "Energy Ball", "Psyshock" }, guids={ "c91740"}, evoData={ { cost="Reigns of Unity", ball=LEGENDARY, gen=8, cycle=true, guids={ "3b7a04" }, model_GUID="58493a", custom_scale=0.8 }, { cost="Reigns of Unity", ball=LEGENDARY, gen=8, cycle=true, guids={ "004eaf" }, model_GUID="e85209" } }, model_GUID="858f74", custom_scale=0.8 },
  { name="Shadow Rider Calyrex", level=8, types={ "Psychic", "Ghost" }, moves={ "Astral Barrage", "Psychic" }, guids={ "3b7a04" }, evoData={ { cost=0, ball=LEGENDARY, gen=8, cycle=true, guids={ "c91740" }, model_GUID="858f74" } }, model_GUID="58493a", custom_scale=0.8 }, -- Shadow Rider (for Calyrex)
  { name="Ice Rider Calyrex", level=8, types={ "Psychic", "Ice" }, moves={ "Glacial Lance", "Psychic" }, guids={ "004eaf" }, evoData={ { cost=0, ball=LEGENDARY, gen=8, cycle=true, guids={ "c91740" }, model_GUID="858f74" } }, model_GUID="e85209", custom_scale=0.8 }, -- Ice Rider (for Calyrex)
  { name="Wyrdeer",       level=4, types={ "Normal", "Psychic" }, moves={ "Psyshield Bash", "Double-Edge" }, guids={ "dabd21", "163267" }, model_GUID="91a281", offset={x=0, y=0.05, z=0} },
  { name="Kleavor",       level=5, types={ "Bug", "Rock" }, moves={ "Stone Axe", "X-Scissor" }, guids={ "deef29", "18d390" }, model_GUID="21f652", custom_scale=0.7, offset={x=0, y=0.1, z=0} },
  { name="Ursaluna",      level=6, types={ "Ground", "Normal" }, moves={ "Headlong Rush", "Slash" }, guids={ "b3110d", "7684c6", "2c6eaa" }, model_GUID="38ea2d", custom_scale=0.7, offset={x=0, y=0.8, z=0}, ball=RED },
  { name="Bloodmoon Ursaluna", level=6, types={ "Ground", "Normal" }, moves={ "Earth Power", "Blood Moon" }, guids={ "05e0a2", "0af179", "d9574b" }, model_GUID="89bd7d", custom_scale=0.85, ball=RED },
  { name="Basculegion",   level=4, types={ "Water", "Ghost" }, moves={ "Phantom Force", "Wave Crash" }, guids={ "e2e65c", "357bf0" }, model_GUID="252ffe", offset={x=0, y=0.6, z=0} },
  { name="Sneasler",      level=5, types={ "Fighting", "Poison" }, moves={ "Dire Claw", "Brick Break" }, guids={ "20e684", "8b5f40" }, model_GUID="ce5036" },
  { name="Overqwil",      level=5, types={ "Dark", "Poison" }, moves={ "Barb Barrage", "Explosion" }, guids={ "c891fc", "a4fb02" }, model_GUID="79b584", offset={x=0, y=0.3, z=0} },
  { name="Incarnate Enamorus", level=7, types={ "Fairy", "Flying" }, moves={ "Springtide Storm", "Fly" }, guids={ "3ba79b" }, ball=LEGENDARY, model_GUID="2e0d1c", custom_scale=1.3, offset={x=0, y=0.5, z=0} }, -- Non-Turtle Version
  { name="Therian Enamorus", level=7, types={ "Fairy", "Flying" }, moves={ "Springtide Storm", "Focus Blast" }, guids={ "52580d" }, ball=LEGENDARY, model_GUID="4d2b9c", custom_scale=1.3, offset={x=0, y=0.5, z=0} },      -- Turtle Version
  
  -- GenVIII Hisuian, Galarian
  { name="Galarian Zigzagoon",level=1, types={ "Dark", "Normal" }, moves={ "Pin Missile", "Sand Attack" }, guids={ "2eae89"}, evoData={ { cost=2, ball=BLUE, gen=8, guids={ "513b01"}, model_GUID="af2407" } }, model_GUID="4e078d" },
  { name="Galarian Linoone", level=3, types={ "Dark", "Normal" }, moves={ "Night Slash", "Lick" },   guids={ "967c36", "513b01" }, evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "18880a", "f9576c"}, model_GUID="89cdcd" } }, model_GUID="af2407" }, 
  { name="Galarian Meowth",  level=2, types={ "Steel" },  moves={ "Fury Swipes", "Metal Claw" },   guids={ "9df32b" },           evoData={ { cost=2, ball=BLUE, gen=8, guids={ "33995d"}, model_GUID="7ae05b" } }, model_GUID="5bd893" },
  { name="Galarian Corsola", level=3, types={ "Ghost" },  moves={ "Ancient Power", "Curse" },   guids={ "eb13ff" },           evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "ac68fa"}, model_GUID="b8f109" } }, model_GUID="14efc9" },
  { name="Galarian Farfetch'd",level=3, types={ "Fighting" }, moves={ "Rock Smash", "Fury Cutter" },     guids={ "2a641b" },           evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "166853"} } }, model_GUID="2eca14" },
  { name="Galarian Mr. Mime",level=3, types={ "Ice", "Psychic" },    moves={ "Ice Shard", "Encore" }, guids={ "ad9b7a", "8cfe98" }, evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "f5e748", "2de3e8"}, model_GUID="908864" } }, model_GUID="8e52ef" },
  { name="Galarian Yamask",  level=3, types={ "Ground", "Ghost" }, moves={ "Crafty Shield", "Astonish" }, guids={ "fb6107" },           evoData={ { cost=2, ball=RED, gen=8, guids={ "b8d9ee"}, model_GUID="999baf" } }, model_GUID="a15bc0" }, 
  { name="Hisuian Basculin", level=2, types={ "Water" },  moves={ "Take Down", "Aqua Jet" },          guids={ "039880" },           evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "357bf0"} } }, model_GUID="27803e" },
  { name="Hisuian Sneasel",  level=3, types={ "Fighting", "Poison" },moves={ "Rock Smash", "Poison Jab" }, guids={ "fd17a9" },           evoData={ { cost=2, ball=YELLOW, gen=8, guids={ "8b5f40"} } }, model_GUID="997dc6", offset={x=0, y=0.1, z=-0.13} },
  { name="Hisuian Qwilfish", level=4, types={ "Dark", "Poison" }, moves={ "Toxic Spikes", "Bite" }, guids={ "d2929c" },           evoData={ { cost=1, ball=YELLOW, gen=8, guids={ "a4fb02"} } }, model_GUID="a31947", offset={x=0, y=0.1, z=-0.07} },
  { name="Hisuian Growlithe",level=2, types={ "Fire", "Rock" }, moves={ "Rock Blast", "Howl" },   guids={ "0c6d18" },           evoData={ { cost=3, ball=YELLOW, gen=8, guids={ "fde268"} } }, model_GUID="c7e078", offset={x=0, y=0.3, z=-0.05} }, 
  { name="Hisuian Arcanine", level=5, types={ "Fire", "Rock" },   moves={ "Raging Fury", "Rock Slide" }, guids={ "943d83", "fde268" }, model_GUID="9428fb", offset={x=0, y=0.04, z=-0.10} },
  { name="Galarian Ponyta",  level=4, types={ "Psychic" },moves={ "Psybeam", "Stomp" },      guids={ "918a64" },           evoData={ { cost=2, ball=RED , gen=8, guids={ "de6ae0"}, model_GUID="725893", custom_scale=0.7 } }, model_GUID="c8e066" }, 
  { name="Galarian Rapidash",level=6, types={ "Psychic", "Fairy" },moves={ "Dazzling Gleam", "Psycho Cut" },   guids={ "33cf1f", "de6ae0" }, model_GUID="725893", custom_scale=0.7, offset={x=0, y=0, z=0.1} },
  { name="Galarian Slowpoke",level=2, types={ "Psychic" },moves={ "Confusion", "Acid" },           guids={ "c5b427" },           evoData={ { cost=3, ball=RED , gen=8, guids={ "a3217c"}, model_GUID="0db618" }, { cost=3, ball=RED , gen=8, guids={ "e01e53"}, model_GUID="eab949" } }, model_GUID="7080db", custom_scale=0.75 }, 
  { name="Galarian Slowbro", level=5, types={ "Poison", "Psychic" }, moves={ "Zen Headbutt", "Shell Side Arm" }, guids={ "8bb5c6", "a3217c" }, model_GUID="0db618" },
  { name="Galarian Slowking",level=5, types={ "Poison", "Psychic" }, moves={ "Blizzard", "Eerie Spell" },    guids={ "d817c2", "e01e53" }, model_GUID="eab949" },
  { name="Hisuian Voltorb",  level=2, types={ "Electric", "Grass" }, moves={ "Thunder Wave", "Energy Ball" }, guids={ "1de2a1" },         evoData={ { cost=2, ball=BLUE , gen=8, guids={ "31ab95"} } }, model_GUID="d50334", offset={x=0, y=0.1, z=-0.07} }, 
  { name="Hisuian Electrode",level=4, types={ "Electric", "Grass" }, moves={ "Charge Beam", "Chloroblast" }, guids={ "af44ee", "31ab95" }, model_GUID="27cb49", offset={x=0, y=0.2, z=-0.09} },
  { name="Galarian Weezing", level=5, types={ "Poison", "Fairy" }, moves={ "Strange Steam", "Explosion" },     guids={ "8864bd", "dccfa4" }, model_GUID="e96342" },
  { name="Galarian Articuno",level=7, types={ "Psychic", "Flying" }, moves={ "Freezing Glare", "Air Slash" }, guids={ "df62df" }, model_GUID="c2b05c" },
  { name="Galarian Zapdos",  level=7, types={ "Fighting", "Flying" },moves={ "Thunderous Kick", "Drill Peck" }, guids={ "43f2c8" }, model_GUID="8b0171" },
  { name="Galarian Moltres", level=7, types={ "Dark", "Flying" }, moves={ "Sky Attack", "Fiery Wrath" },   guids={ "f194d1" }, model_GUID="fa0b19" },
  { name="Hisuian Typhlosion", level=5, types={ "Fire", "Ghost" }, moves={ "Infernal Parade", "Lava Plume" }, guids={ "4ece6d", "e8349c", "c86580" }, model_GUID="202d7e", custom_scale=0.8, offset={x=0, y=0.04, z=-0.1} },
  { name="Hisuian Samurott", level=5, types={ "Water", "Dark" },  moves={ "Ceaseless Edge", "Aqua Tail" }, guids={ "1e7846", "769c18", "c7dc10" }, model_GUID="bdc2d9", offset={x=0, y=0.04, z=-0.07} },
  { name="Hisuian Lilligant",level=4, types={ "Grass", "Fighting" },  moves={ "Victory Dance", "Solar Blade" },   guids={ "a1d8b8", "13e980" }, model_GUID="365d50", offset={x=0, y=0.03, z=-0.09} },
  { name="Galarian Darumaka",level=3, types={ "Ice" },    moves={ "Belly Drum", "Avalanche" },        guids={ "d2942a" },        evoData={ { cost=2, ball=YELLOW , gen=8, guids={ "382428" }, model_GUID="433977" }, 
                                                                                                                                           { cost=2, ball=YELLOW , gen=8, guids={ "d37822" }, model_GUID="d9be07" } }, 
                                                                                                                                 model_GUID="7fd1c8" }, 
  { name="Galarian Darmanitan",level=5, types={ "Ice" },  moves={ "Ice Punch", "Superpower" },    guids={ "c14bd8", "d37822" }, model_GUID="d9be07" },          -- Ice
  { name="Galarian Zen Darmanitan",level=5, types={ "Ice", "Fire" },  moves={ "Icicle Crash", "Heat Wave" }, guids={ "f87608", "382428" }, model_GUID="433977" }, -- Ice/Fire
  { name="Hisuian Zorua",    level=3, types={ "Normal", "Ghost" }, moves={ "Shadow Sneak", "Agility" }, guids={ "b25340" },            evoData={ { cost=2, ball=YELLOW , gen=8, guids={ "f46ea3"} } }, model_GUID="da8dd7", offset={x=0, y=0.25, z=-0.14} }, 
  { name="Hisuian Zoroark",  level=5, types={ "Normal", "Ghost" }, moves={ "Bitter Malice", "Foul Play" }, guids={ "b02e47", "f46ea3" }, model_GUID="5f7ab8", offset={x=0, y=0.03, z=-0.09} },
  { name="Galarian Stunfisk",level=3, types={ "Ground", "Steel" }, moves={ "Snap Trap", "Mud Shot" },     guids={ "d1fcec" }, model_GUID="c91cc9" },
  { name="Hisuian Braviary", level=6, types={ "Psychic", "Flying" },moves={ "Esper Wing", "Air Slash" },   guids={ "29010a", "aaa239" }, model_GUID="706683", offset={x=0, y=0.1, z=-0.07}, custom_scale=0.6 },
  { name="Hisuian Sliggoo",  level=4, types={ "Steel", "Dragon" },  moves={ "Dragon Pulse", "Shelter" }, guids={ "105e3c", "3ed28a" },  evoData={ { cost=3, ball=RED , gen=8, guids={ "3d0228", "c49cfb"} } }, model_GUID="d73f52", offset={x=0, y=0.25, z=-0.1} },
  { name="Hisuian Goodra",   level=7, types={ "Steel", "Dragon" },  moves={ "Dragon Breath", "Iron Tail" },    guids={ "81bf31", "3d0228", "c49cfb" }, model_GUID="0d45c6", offset={x=0, y=0.03, z=-0.07} }, 
  { name="Hisuian Avalugg",  level=5, types={ "Ice", "Rock" }, moves={ "Mountain Gale", "Rock Slide" }, guids={ "06528c", "2edcdb" }, model_GUID="9c5c23", custom_scale=0.45, offset={x=0, y=0.03, z=-0.15} },
  { name="Hisuian Decidueye",level=5, types={ "Grass", "Fighting" },  moves={ "Triple Arrows", "Leaf Storm" }, guids={ "655289", "cf7b80", "5ada77" }, model_GUID="195008", offset={x=0, y=0.07, z=-0.07} },

  -- Mega evolutions.
  { name="GMax Rillaboom",       level=5, types={ "Grass" },    moves={ "Drum Beating", "Strike" },             guids={ "d98c1f", "712942" },       evoData={ { cost=0, ball=RED, gen=8, cycle=true, guids={ "d4a518", "2eba49", "f9d565" }, model_GUID="2a352f" } }, model_GUID="6e7118", custom_scale=0.3 },
  { name="GMax Cinderace",       level=5, types={ "Fire" },     moves={ "Fireball", "Airstream" },              guids={ "0ae3eb", "35db21" },       evoData={ { cost=0, ball=RED, gen=8, cycle=true, guids={ "68e885", "e52d3f", "77f114" }, model_GUID="edbb96" } }, model_GUID="5fd307", custom_scale=0.65 },
  { name="GMax Inteleon",        level=5, types={ "Water" },    moves={ "Hydro Snipe", "Flutterby" },           guids={ "834995", "e4f6e7" },       evoData={ { cost=0, ball=RED, gen=8, cycle=true, guids={ "a87b0f", "caa8d1", "70e2dd" }, model_GUID="289431" } }, model_GUID="1e011b", offset={x=-0.03, y=0, z=0.04} },
  { name="GMax Corviknight",     level=6, types={ "Flying", "Steel" }, moves={ "Wind Rage", "Steelspike" },     guids={ "ea919f", "1c820c" },       evoData={ { cost=0, ball=RED, gen=8, cycle=true, guids={ "d80b24", "29b1df", "39c41f" }, model_GUID="1515e6" } }, model_GUID="751679" },
  { name="GMax Orbeetle",        level=4, types={ "Bug", "Psychic" }, moves={ "Gravitas", "Flutterby" },        guids={ "27ad44", "aee305" },       evoData={ { cost=0, ball=BLUE, gen=8, cycle=true, guids={ "4150f3", "6e7247", "eb4403" } } }, model_GUID="100a08" },
  { name="GMax Drednaw",         level=3, types={ "Water", "Rock" }, moves={ "Stonesurge", "Darkness" },        guids={ "8054c2", "5cb470" },       evoData={ { cost=0, ball=BLUE, gen=8, cycle=true, guids={ "620b5e", "bf22b0" }, model_GUID="0ab337" } }, model_GUID="72b7ce", custom_scale=0.7 },
  { name="GMax Coalossal",       level=5, types={ "Rock", "Fire" }, moves={ "Volcalith", "Flare" },             guids={ "423aca", "6407e4" },       evoData={ { cost=0, ball=RED, gen=8, cycle=true, guids={ "6ac20e", "678720", "5eecb1" }, model_GUID="e7e32a" } }, model_GUID="dfe276", custom_scale=0.6 },
  { name="GMax Flapple",         level=4, types={ "Grass", "Dragon" },    moves={ "Tartness", "Airstream" },    guids={ "c4ec8a", "975b3c" },       evoData={ { cost=0, ball=YELLOW, gen=8, cycle=true, guids={ "beb575", "508cc7" }, model_GUID="c9aba6" } }, model_GUID="62fbcf", custom_scale=0.5, offset={x=0, y=1.0, z=0} },
  { name="GMax Appletun",        level=4, types={ "Grass", "Dragon" },    moves={ "Sweetness", "Strike" },      guids={ "945af3", "31aacc" },       evoData={ { cost=0, ball=YELLOW, gen=8, cycle=true, guids={ "a26f34", "3a326b" }, model_GUID="8997a1" } }, model_GUID="b87e45", custom_scale=0.5, offset={x=0, y=1.0, z=0} },
  { name="GMax Sandaconda",      level=5, types={ "Ground" },   moves={ "Sandblast", "Darkness" },              guids={ "2e2482", "3ab61a" },       evoData={ { cost=0, ball=YELLOW, gen=8, cycle=true, guids={ "c91baf", "3e0da6" }, model_GUID="d15ad0" } }, model_GUID="1e2e60" },
  { name="GMax Toxtricity",      level=4, types={ "Electric", "Poison" }, moves={ "Stun Shock", "Ooze" },       guids={ "1644af", "f8615c" },       evoData={ { cost=0, ball=YELLOW, gen=8, cycle=true, guids={ "0c6876", "bea82d" }, model_GUID="42a6c3" } }, model_GUID="7c090f", custom_scale=0.5 },
  { name="GMax Toxtricity",      level=4, types={ "Electric", "Poison" }, moves={ "Stun Shock", "Ooze" },       guids={ "8c4dd2", "e01e0a" },       evoData={ { cost=0, ball=YELLOW, gen=8, cycle=true, guids={ "67ec92", "a7277f" }, model_GUID="4d9bff" } }, model_GUID="7c090f", custom_scale=0.5 },
  { name="GMax Centiskorch",     level=4, types={ "Fire", "Bug" },     moves={ "Centiferno", "Flutterby" },     guids={ "457776", "f8726f" },       evoData={ { cost=0, ball=YELLOW, gen=8, cycle=true, guids={ "5b2923", "bf95c2" }, model_GUID="a1917b" } }, model_GUID="6bd6e4", custom_scale=0.65 },
  { name="GMax Hatterene",       level=6, types={ "Psychic", "Fairy" },  moves={ "Mindstorm", "Smite" },        guids={ "0fab1b", "73ef1b" },       evoData={ { cost=0, ball=RED, gen=8, cycle=true, guids={ "e711fc", "9cfe10", "42db1f" }, model_GUID="9ac795" } }, model_GUID="9219a8" },
  { name="GMax Grimmsnarl",      level=6, types={ "Dark", "Fairy" }, moves={ "Snooze", "Starfall" },            guids={ "671823", "325e58" },       evoData={ { cost=0, ball=RED, gen=8, cycle=true, guids={ "9a62bf", "2f04d6", "0cccf2" }, model_GUID="3db539" } }, model_GUID="e31f45", custom_scale=0.7 },
  { name="GMax Alcremie",        level=3, types={ "Fairy" },    moves={ "Finale", "Guard" },                    guids={ "3c5cba", "0b4ee1" },       evoData={ { cost=0, ball=BLUE, gen=8, cycle=true, guids={ "71833d", "f57bd3" } } }, model_GUID="c54873", custom_scale=0.4, offset={x=0, y=1.0, z=0} },
  { name="GMax Copperajah",      level=5, types={ "Steel" },    moves={ "Steelsurge", "Quake" },                guids={ "ad2c75", "1e68f7" },       evoData={ { cost=0, ball=BLUE, gen=8, cycle=true, guids={ "772688", "bb0dab" } } }, model_GUID="be6c58", custom_scale=0.6 },
  { name="GMax Duraludon",       level=5, types={ "Steel", "Dragon" },    moves={ "Wyrmwind", "Steelspike" },   guids={ "e17508", "ff891b" },       evoData={ { cost=0, ball=YELLOW, gen=8, cycle=true, guids={ "19c226" }, model_GUID="397452" } }, model_GUID="a14b0f", custom_scale=0.5 },
  { name="GMax Eternatus",       level=7, types={ "Poison", "Dragon" },   moves={ "Eternabeam", "Ooze" },       guids={ "e78955" },                 evoData={ { cost=0, ball=LEGENDARY, gen=8, cycle=true, guids={ "c0d41b" } } }, model_GUID="865247", offset={x=0, y=0, z=1.5} },
  { name="GMax Rapid-Strike Urshifu", level=7, types={ "Fighting", "Water" }, moves={ "Rapid Flow", "Knuckle" },guids={ "bf033c" },                 evoData={ { cost=0, ball=LEGENDARY, gen=8, cycle=true, guids={ "ab896e" } } }, model_GUID="6c1d60", custom_scale=0.7 },
  { name="GMax Single-Strike Urshifu", level=7, types={ "Fighting", "Dark" }, moves={ "One Blow", "Knuckle" },  guids={ "dd3373" },                 evoData={ { cost=0, ball=LEGENDARY, gen=8, cycle=true, guids={ "015ff0" } } }, model_GUID="4491c0", custom_scale=0.7 },
  { name="Mega Falinks",         level=5, types={ "Fighting" },   moves={ "Iron Head", "Brick Break" },         guids={ "f365e2" },                 evoData={ { cost=0, ball=BLUE, gen=8, cycle=true, guids={ "8bb381" } } }, model_GUID="4bca37", offset={x=0, y=0.12, z=0} },
}

gen9PokemonData =
{
  -- Gen 9 906-925
  { name="Sprigatito",    level=1, types={ "Grass" }, moves={ "Scratch", "Leafage" },    guids={ "49980a" },               evoData={ { cost=2, ball=BLUE, gen=9, guids={ "d04b95" } } }, model_GUID="01cef1", offset={x=0, y=0.035, z=0} },
  { name="Floragato",     level=3, types={ "Grass" }, moves={ "Hone Claws", "Seed Bomb" },   guids={ "195a4d", "d04b95" },     evoData={ { cost=2, ball=RED, gen=9, guids={ "2b0cec", "603216" } } }, model_GUID="0f93b8", offset={x=0, y=0.035, z=0} },
  { name="Meowscarada",   level=5, types={ "Grass", "Dark" }, moves={ "Flower Trick", "Knock Off" },     guids={ "7b87eb", "2b0cec", "603216" }, model_GUID="92bcf7" },
  { name="Fuecoco",       level=1, types={ "Fire" }, moves={ "Ember", "Yawn" },         guids={ "53ad3b" },               evoData={ { cost=2, ball=BLUE, gen=9, guids={ "2a93fc" } } }, model_GUID="484158", offset={x=0, y=0.035, z=0} },
  { name="Crocalor",      level=3, types={ "Fire" }, moves={ "Incinerate", "Bite" }, guids={ "f49cc4", "2a93fc" },   evoData={ { cost=2, ball=RED, gen=9, guids={ "0528b7", "91d3a3" } } }, model_GUID="9d683a", offset={x=0, y=0.03, z=0} },
  { name="Skeledirge",    level=5, types={ "Fire", "Ghost" }, moves={ "Shadow Ball", "Torch Song" }, guids={ "6b9ddf", "0528b7", "91d3a3" }, model_GUID="e59cc3", custom_scale=0.6, offset={x=0, y=0.03, z=0} },
  { name="Quaxly",        level=1, types={ "Water" }, moves={ "Water Gun", "Growl" },    guids={ "4a2233" },               evoData={ { cost=2, ball=BLUE, gen=9, guids={ "76b74f" } } }, model_GUID="fbe251" },
  { name="Quaxwell",      level=3, types={ "Water" }, moves={ "Feather Dance", "Aqua Jet" }, guids={ "dc2818", "76b74f" },    evoData={ { cost=2, ball=RED, gen=9, guids={ "517d88", "7bf3d4" } } }, model_GUID="2931dc", offset={x=0, y=0.05, z=0} },
  { name="Quaquaval",     level=5, types={ "Water", "Fighting" }, moves={ "Aqua Step", "Counter" }, guids={ "07d04b", "517d88", "7bf3d4" }, model_GUID="f7d14a", offset={x=0, y=0.05, z=0} },
  { name="Lechonk",       level=1, types={ "Normal" }, moves={ "Disarming Voice", "Tail Whip" }, guids={ "fa7a0e" }, evoData={ { cost=2, ball=BLUE, gen=9, guids={ "731928" } }, { cost=2, ball=BLUE, gen=9, guids={ "9bc692" } } }, model_GUID="7cce30", offset={x=0, y=0.05, z=0} },
  { name="Oinkologne (F)",level=3, types={ "Normal" }, moves={ "Echoed Voice", "Mud Shot" },  guids={ "286c12", "731928" }, model_GUID="ac94bd", offset={x=0, y=0.05, z=0}, ball=BLUE },
  { name="Oinkologne (M)",level=3, types={ "Normal" }, moves={ "Covet", "Dig" }, guids={ "4a7427", "9bc692" }, model_GUID="39fa0d", offset={x=0, y=0.05, z=0}, ball=BLUE },
  { name="Tarountula",    level=1, types={ "Bug" }, moves={ "String Shot", "Tackle" },     guids={ "990287" },     evoData={ { cost=2, ball=GREEN, gen=9, guids={ "c3494f" } } }, model_GUID="155fcd" },
  { name="Spidops",       level=3, types={ "Bug" }, moves={ "Circle Throw", "Silk Trap" }, guids={ "df9262", "c3494f" }, model_GUID="f9115b", offset={x=0, y=0.05, z=0} },
  { name="Nymble",        level=1, types={ "Bug" }, moves={ "Double Kick", "Leer" }, guids={ "6bf5d7" }, evoData={ { cost=2, ball=GREEN, gen=9, guids={ "a8959f" } } }, model_GUID="2fdfd2" },
  { name="Lokix",         level=3, types={ "Bug", "Dark" }, moves={ "Throat Chop", "Lunge" }, guids={ "2f2f62", "a8959f" }, model_GUID="439381", offset={x=0, y=0.025, z=0} },
  { name="Pawmi",         level=1, types={ "Electric" }, moves={ "Quick Attack", "Charge" }, guids={ "6126de" }, evoData={ { cost=2, ball=BLUE, gen=9, guids={ "27ce58" } } }, model_GUID="61a3c8", offset={x=0, y=0.04, z=0} },
  { name="Pawmo",         level=3, types={ "Electric", "Fighting" }, moves={ "Arm Thrust", "Wild Charge" }, guids={ "63603f", "27ce58" }, evoData={ { cost=1, ball=YELLOW, gen=9, guids={ "d01611", "508f9a" } } }, model_GUID="ec93e5", offset={x=0, y=0.015, z=0} },
  { name="Pawmot",        level=4, types={ "Electric", "Fighting" }, moves={ "Revival Blessing", "Spark" }, guids={ "b34f73", "d01611", "508f9a" }, model_GUID="ebfa36" },
  { name="Tandemaus",     level=2, types={ "Normal" }, moves={ "Population Bomb", "Baby-Doll Eyes" },     guids={ "4400f3" }, evoData={ { cost=1, ball=GREEN, gen=9, guids={ "d8928e" } } }, model_GUID="115d4b" }, 
  { name="Maushold",      level=3, types={ "Normal" }, moves={ "Tidy Up", "Beat Up" },     guids={ "eb502b", "d8928e" }, model_GUID="8adaa1" },  
  -- Gen 9 926-949
  { name="Fidough",       level=1, types={ "Fairy" }, moves={ "Covet", "Lick" }, guids={ "4e8b42" }, evoData={ { cost=2, ball=BLUE, gen=9, guids={ "acaf9b" } } }, model_GUID="974906", offset={x=0, y=0.025, z=0} },
  { name="Dachsbun",      level=3, types={ "Fairy" }, moves={ "Play Rough", "Bite" },   guids={ "90d0bb", "acaf9b" }, model_GUID="041d71", offset={x=0, y=0.035, z=0} }, 
  { name="Smoliv",        level=2, types={ "Grass", "Normal" }, moves={ "Growth", "Absorb" },   guids={ "478ad3" }, evoData={ { cost=1, ball=GREEN, gen=9, guids={ "70af04" } } }, model_GUID="477ca3" }, 
  { name="Dolliv",        level=3, types={ "Grass", "Normal" }, moves={ "Seed Bomb", "Tackle" },   guids={ "c00c7c", "70af04" }, evoData={ { cost=2, ball=YELLOW, gen=9, guids={ "46e56c", "8bf8dd" } } }, model_GUID="6c7c13", offset={x=0, y=0.06, z=0} },
  { name="Arboliva",      level=5, types={ "Grass", "Normal" }, moves={ "Grassy Terrain", "Terrain Pulse" }, guids={ "31acf0", "46e56c", "8bf8dd" }, model_GUID="a34ec8", offset={x=0, y=0.025, z=0} },
  { name="Squawkabilly",  level=3, types={ "Flying", "Normal" }, moves={ "Mimic", "Fly" },  guids={ "1968bc" }, model_GUID="72d02e", offset={x=0, y=0.025, z=0} },
  { name="Nacli",         level=2, types={ "Rock" }, moves={ "Rock Throw", "Harden" }, guids={ "3b9f04" }, evoData={ { cost=2, ball=BLUE, gen=9, guids={ "0d54a8" } } }, model_GUID="741531" },
  { name="Naclstack",     level=4, types={ "Rock" }, moves={ "Salt Cure", "Mud Shot" },  guids={ "69cf19", "0d54a8" }, evoData={ { cost=2, ball=RED, gen=9, guids={ "1c0e4e", "7c6d2b" } } }, model_GUID="68b08d", offset={x=0, y=0.05, z=0} },
  { name="Garganacl",     level=6, types={ "Rock" }, moves={ "Hammer Arm", "Stone Edge" }, guids={ "9aaabb", "1c0e4e", "7c6d2b" }, model_GUID="33576e", offset={x=0, y=0.05, z=0} },
  { name="Charcadet",     level=3, types={ "Fire" }, moves={ "Flame Charge", "Astonish" }, guids={ "0f63f8" },  evoData={ { cost=1, ball=YELLOW, gen=9, guids={ "7a4b5f" } }, { cost=1, ball=YELLOW, gen=9, guids={ "3fc935" } } }, model_GUID="ba8599" },
  { name="Armarouge",     level=4, types={ "Fire", "Psychic" }, moves={ "Armour Cannon", "Psyshock" },  guids={ "72da86", "7a4b5f" }, model_GUID="eeebe5", offset={x=0, y=0.03, z=0} }, 
  { name="Ceruledge",     level=4, types={ "Fire", "Ghost" }, moves={ "Shadow Sneak", "Bitter Blade" }, guids={ "9d5def", "3fc935" }, model_GUID="bd3a41", offset={x=0, y=0.03, z=0} }, 
  { name="Tadbulb",       level=2, types={ "Electric" }, moves={ "Thunder Shock", "Mud-Slap" },     guids={ "fc24d2" }, evoData={ { cost=1, ball=BLUE, gen=9, guids={ "7dbae8" } } }, model_GUID="fa6405", offset={x=0, y=0.05, z=0} },
  { name="Bellibolt",     level=3, types={ "Electric" }, moves={ "Sucker Punch", "Discharge" },  guids={ "d11554", "7dbae8" }, model_GUID="0f5e65", custom_scale=0.8, offset={x=0, y=0.03, z=0} },
  { name="Wattrel",       level=2, types={ "Electric", "Flying" }, moves={ "Agility", "Peck" },    guids={ "388592" },  evoData={ { cost=2, ball=BLUE, gen=9, guids={ "a10303" } } }, model_GUID="a285c1", offset={x=0, y=0.05, z=0} },
  { name="Kilowattrel",   level=4, types={ "Electric", "Flying" }, moves={ "Dual Wingbeat", "Spark" },    guids={ "81d760", "a10303" }, model_GUID="af9df4", offset={x=0, y=0.15, z=0} },
  { name="Maschiff",      level=2, types={ "Dark" }, moves={ "Bite", "Roar" }, guids={ "8cb576" }, evoData={ { cost=2, ball=BLUE, gen=9, guids={ "41dfa5" } } }, model_GUID="1e81d4", offset={x=0, y=0.08, z=0} },
  { name="Mabosstiff",    level=4, types={ "Dark" }, moves={ "Double-Edge", "Jaw Lock" },   guids={ "3e9b8c", "41dfa5" }, model_GUID="ecce68", offset={x=0, y=0.4, z=0} }, 
  { name="Shroodle",      level=2, types={ "Poison", "Normal" }, moves={ "Fury Swipes", "Poison Fang" }, guids={ "bd638c" }, evoData={ { cost=1, ball=BLUE, gen=9, guids={ "74dde9" } } }, model_GUID="62f0d3" },
  { name="Grafaiai",      level=3, types={ "Poison", "Normal" }, moves={ "Acid Spray", "Slash" }, guids={ "32bf28", "74dde9" }, model_GUID="a9148b" }, 
  { name="Bramblin",      level=3, types={ "Grass", "Ghost" }, moves={ "Bullet Seed", "Rollout" }, guids={ "845718" }, evoData={ { cost=1, ball=BLUE, gen=9, guids={ "6160d0" } } }, model_GUID="f3aa99" },
  { name="Brambleghast",  level=4, types={ "Grass", "Ghost" }, moves={ "Phantom Force", "Mega Drain" },  guids={ "651132", "6160d0" }, model_GUID="37de09" },
  { name="Toedscool",     level=2, types={ "Ground", "Grass" }, moves={ "Wrap", "Absorb" },    guids={ "81b348" }, evoData={ { cost=2, ball=BLUE, gen=9, guids={ "fdc646" } } }, model_GUID="1775c6" },
  { name="Toedscruel",    level=4, types={ "Ground", "Grass" }, moves={ "Power Whip", "Mud Shot" },  guids={ "73fe95", "fdc646" }, model_GUID="fe06b8" },
  -- Gen 9 950-975
  { name="Klawf",         level=4, types={ "Rock" }, moves={ "Rock Slide", "X-Scissor" }, guids={ "3478a3" }, model_GUID="54bceb" },
  { name="Capsakid",      level=3, types={ "Grass" }, moves={ "Headbutt", "Leafage" },       guids={ "136e8c" }, evoData={ { cost=1, ball=BLUE, gen=9, guids={ "feb4ee" } } }, model_GUID="38f767", offset={x=0, y=0.06, z=0} },
  { name="Scovillain",    level=4, types={ "Grass", "Fire" }, moves={ "Flamethrower", "Spicy Extract" }, guids={ "89e811", "feb4ee" }, model_GUID="6b2e73", offset={x=0, y=0.05, z=0} },
  { name="Rellor",        level=3, types={ "Bug" }, moves={ "Struggle Bug", "Rollout" },   guids={ "e30571" }, evoData={ { cost=1, ball=BLUE, gen=9, guids={ "ba0ca7" } } }, model_GUID="a5368c" },
  { name="Rabsca",        level=4, types={ "Bug", "Psychic" }, moves={ "Bug Buzz", "Psychic" },      guids={ "2de0bb", "ba0ca7" }, model_GUID="fad47a" },
  { name="Flittle",       level=3, types={ "Psychic" }, moves={ "Confusion", "Peck" },       guids={ "ee1263" }, evoData={ { cost=2, ball=RED, gen=9, guids={ "ba6a6d" } } }, model_GUID="de0b52" },
  { name="Espathra",      level=5, types={ "Psychic" }, moves={ "Feather Dance", "Lumina Crash" }, guids={ "857c58", "ba6a6d" }, model_GUID="e8259b" },
  { name="Tinkatink",     level=2, types={ "Fairy", "Steel" }, moves={ "Astonish", "Fairy Wind" }, guids={ "c3d19f" }, evoData={ { cost=2, ball=BLUE, gen=9, guids={ "e71fa5" } } }, model_GUID="6059ea", offset={x=0, y=0.08, z=0.08} }, 
  { name="Tinkatuff",     level=4, types={ "Fairy", "Steel" }, moves={ "Flash Cannon", "Brutal Swing" }, guids={ "e7f434", "e71fa5" }, evoData={ { cost=2, ball=RED, gen=9, guids={ "746894", "b76ffe" } } }, model_GUID="128be2", offset={x=0, y=0.08, z=0} },
  { name="Tinkaton",      level=6, types={ "Fairy", "Steel" }, moves={ "Gigaton Hammer", "Play Rough" }, guids={ "1dd00a", "746894", "b76ffe" }, model_GUID="f645b8", offset={x=0, y=0.04, z=0} }, 
  { name="Wiglett",       level=2, types={ "Water" }, moves={ "Mud-Slap", "Aqua Jet" }, guids={ "525157" }, evoData={ { cost=2, ball=BLUE, gen=9, guids={ "f7f56d" } } }, model_GUID="b30ff7", offset={x=0, y=0.05, z=0} },
  { name="Wugtrio",       level=4, types={ "Water" }, moves={ "Sucker Punch", "Triple Dive" }, guids={ "a82b90", "f7f56d" }, model_GUID="1a8eb6", offset={x=0, y=0.5, z=0} },
  { name="Bombirdier",    level=4, types={ "Flying", "Dark" }, moves={ "Dual Wingbeat", "Knock Off" }, guids={ "ed2e7c" }, model_GUID="207148"  },
  { name="Finizen",       level=5, types={ "Water" }, moves={ "Double Hit", "Aqua Jet" }, guids={ "0873a6" }, evoData={ { cost=1, ball=RED, gen=9, guids={ "ffb871" } }, 
                                                                                                                        { cost=1, ball=RED, gen=9, guids={ "e40792" } } }, 
                                                                                                              model_GUID="dae5c1", offset={x=0, y=0.05, z=0} },
  { name="Hero Palafin",  level=6, types={ "Water" }, moves={ "Drain Punch", "Jet Punch" }, guids={ "b40995", "e40792" }, model_GUID="1433a5", ball=RED, offset={x=0, y=0.2, z=0} },
  { name="Zero Palafin",  level=6, types={ "Water" }, moves={ "Blizzard", "Flip Turn" }, guids={ "fd6f39", "ffb871" }, model_GUID="e7ec14", ball=RED },
  { name="Varoom",        level=3, types={ "Steel", "Poison" }, moves={ "Screech", "Smog" }, guids={ "039292" }, evoData={ { cost=2, ball=RED, gen=9, guids={ "f620af" } } }, model_GUID="188a0a", offset={x=0, y=0.05, z=0} },
  { name="Revavroom",     level=5, types={ "Steel", "Poison" }, moves={ "Spin Out", "Sludge" }, guids={ "be3478", "f620af" }, model_GUID="0c035d" },
  { name="Cyclizar",      level=4, types={ "Dragon", "Normal" }, moves={ "Dragon Rush", "Shift Gear" }, guids={ "7282b5"  }, model_GUID="0e16dc", custom_scale=0.8, offset={x=0, y=0.08, z=0} },
  { name="Orthworm",      level=3, types={ "Steel" }, moves={ "Earthquake", "Iron Tail" }, guids={ "9b54aa" }, model_GUID="968aa9", custom_scale=0.7, offset={x=0, y=0.05, z=-0.05} }, 
  { name="Glimmet",       level=2, types={ "Rock", "Poison" }, moves={ "Toxic Spikes", "Rock Throw" }, guids={ "731ab7" }, evoData={ { cost=2, ball=YELLOW, gen=9, guids={ "58f282" } } }, model_GUID="cb91a8", offset={x=0, y=0.05, z=0} },
  { name="Glimmora",      level=4, types={ "Rock", "Poison" }, moves={ "Ancient Power", "Mortal Spin" }, guids={ "137bbd", "58f282" }, model_GUID="163a13", offset={x=0, y=0.1, z=0} },
  { name="Greavard",      level=2, types={ "Ghost" }, moves={ "Growl", "Lick" }, guids={ "f0f80b" }, evoData={ { cost=2, ball=BLUE, gen=9, guids={ "54b1df" } } }, model_GUID="a207b6", offset={x=0, y=0.05, z=0} },
  { name="Houndstone",    level=4, types={ "Ghost" }, moves={ "Last Respects", "Dig" }, guids={ "b7d0d5", "54b1df" }, model_GUID="ecd2d3", offset={x=0, y=0.05, z=0} },
  { name="Flamigo",       level=3, types={ "Flying", "Fighting" }, moves={ "Double Kick", "Air Slash" }, guids={ "29bdc6" }, model_GUID="de429c" },
  { name="Cetoddle",      level=3, types={ "Ice" }, moves={ "Echoed Voice", "Ice Shard" }, guids={ "cc2b2f" }, evoData={ { cost=1, ball=YELLOW, gen=9, guids={ "3a0f0c" } } }, model_GUID="205304", offset={x=0, y=0.05, z=0} },
  { name="Cetitan",       level=4, types={ "Ice" }, moves={ "Ice Spinner", "Bounce" }, guids={ "22914e", "3a0f0c" }, model_GUID="88f64b", custom_scale=0.5, offset={x=0, y=0.15, z=-0.12} },
  --Gen 9 976-1000
  { name="Veluza",        level=3, types={ "Water", "Psychic" }, moves={ "Psychic Fangs", "Fillet Away" }, guids={ "f19255" }, model_GUID="a8b807", offset={x=0, y=0.05, z=0} },
  { name="Dondozo",       level=4, types={ "Water" }, moves={ "Wave Crash", "Order Up" }, guids={ "1703be" }, model_GUID="f244e5", custom_scale=0.3, offset={x=0, y=0.75, z=-0.025} },
  { name="Curly Tatsugiri", level=3, types={ "Dragon", "Water" }, moves={ "Chilling Water", "Dragon Pulse" }, guids={ "799368" }, model_GUID="ef9424", offset={x=0, y=0.05, z=0}, ball=BLUE },
  { name="Droopy Tatsugiri", level=3, types={ "Dragon", "Water" }, moves={ "Dragon Pulse", "Mirror Coat" }, guids={ "6e1311" }, model_GUID="37b3e2", ball=BLUE },
  { name="Stretchy Tatsugiri", level=3, types={ "Dragon", "Water" }, moves={ "Dragon Pulse", "Lunge" }, guids={ "a3ec4b" }, model_GUID="24a927", ball=BLUE },
  { name="Annihilape",    level=5, types={ "Fighting", "Ghost" }, moves={ "Cross Chop", "Rage Fist" }, guids={ "87727d", "b68eb7", "6b4dfa" }, model_GUID="8f89b1" },
  { name="Clodsire",      level=3, types={ "Poison", "Ground" }, moves={ "Poison Tail", "Mud Shot" }, guids={ "11f231", "9299e4" }, model_GUID="f82830", offset={x=0, y=0.65, z=0} },
  { name="Farigiraf",     level=3, types={ "Normal", "Psychic" }, moves={ "Twin Beam", "Stomp" }, guids={ "ec3c21", "f18198" }, model_GUID="2a59bc", offset={x=0, y=0.08, z=0} },
  { name="Dudunsparce",   level=3, types={ "Normal" }, moves={ "Drill Run", "Hyper Drill" }, guids={ "f840fc", "9c40ab" }, model_GUID="fdfb3e", offset={x=0, y=0.03, z=0} },
  { name="Kingambit",     level=6, types={ "Dark", "Steel" }, moves={ "Kowtow Cleave", "Iron Head" }, guids={ "97afd6", "d49464", "8625f7" }, model_GUID="3568ce", custom_scale=0.7, offset={x=0, y=0.02, z=-0.08} },
  { name="Great Tusk",    level=5, types={ "Ground", "Fighting" }, moves={ "Brick Break", "Bulldoze" }, guids={ "00e061" }, model_GUID="177723", custom_scale=0.35, offset={x=0, y=0.03, z=-0.08} },
  { name="Scream Tail",   level=3, types={ "Fairy", "Psychic" }, moves={ "Play Rough", "Psychic Fangs" }, guids={ "d2d1fc" }, model_GUID="bba12d", offset={x=0, y=0.1, z=0}, custom_scale=0.75 },
  { name="Brute Bonnet",  level=4, types={ "Grass", "Dark" }, moves={ "Sucker Punch", "Mega Drain" }, guids={ "d97f22" }, model_GUID="dcbff5", offset={x=0, y=0.12, z=0} },
  { name="Flutter Mane",  level=4, types={ "Ghost", "Fairy" }, moves={ "Phantom Force", "Moonblast" }, guids={ "60305f" }, model_GUID="30ce60", custom_scale=0.85 },
  { name="Slither Wing",  level=6, types={ "Bug", "Fighting" }, moves={ "Superpower", "Leech Life" }, guids={ "163a86" }, model_GUID="fabd96", offset={x=0, y=0.5, z=0} },
  { name="Sandy Shocks",  level=4, types={ "Electric", "Ground" }, moves={ "Earth Power", "Discharge" }, guids={ "c61a67" }, model_GUID="08d57d", custom_scale=0.8, offset={x=0, y=0.03, z=0} },
  { name="Iron Treads",   level=5, types={ "Ground", "Steel" }, moves={ "Steel Roller", "Earthquake" }, guids={ "2bba66" }, model_GUID="128a66", offset={x=0, y=0.03, z=0} },
  { name="Iron Bundle",   level=3, types={ "Ice", "Water" }, moves={ "Freeze-Dry", "Flip Turn" }, guids={ "90d798" }, model_GUID="8bb12e" },
  { name="Iron Hands",    level=4, types={ "Fighting", "Electric" }, moves={ "Thunder Punch", "Force Palm" }, guids={ "7b45a3" }, model_GUID="59126c", custom_scale=0.85 },
  { name="Iron Jugulis",  level=7, types={ "Dark", "Flying" }, moves={ "Dark Pulse", "Air Cutter" }, guids={ "ff30bd" }, model_GUID="25aa1c"},
  { name="Iron Moth",     level=6, types={ "Fire", "Poison" }, moves={ "Sludge Wave", "Fiery Dance" }, guids={ "68bff5" }, model_GUID="70cd78" },
  { name="Iron Thorns",   level=7, types={ "Rock", "Electric" }, moves={ "Thunder Fang", "Rock Slide" }, guids={ "38c0c7" }, model_GUID="52eb2e", custom_scale=0.75 },
  { name="Frigibax",      level=2, types={ "Dragon", "Ice" }, moves={ "Focus Energy", "Icy Wind" }, guids={ "3f40d1" }, evoData={ { cost=2, ball=YELLOW, gen=9, guids={ "907d41" } } }, model_GUID="19771a", offset={x=0, y=0.05, z=0} },
  { name="Arctibax",      level=4, types={ "Dragon", "Ice" }, moves={ "Dragon Claw", "Bite" }, guids={ "33a8b3", "907d41" }, evoData={ { cost=3, ball=RED, gen=9, guids={ "1dad71", "805f61" } } }, model_GUID="ba5cd1", offset={x=0, y=0.08, z=0} },
  { name="Baxcalibur",    level=7, types={ "Dragon", "Ice" }, moves={ "Icicle Crash", "Glaive Rush" }, guids={ "1d7ffe", "1dad71", "805f61" }, evoData={ { cost="Mega", ball=MEGA, gen=9, cycle=true, guids={ "50748d", "0a2a86" } } }, model_GUID="f2322d", offset={x=0, y=0.08, z=0} },
  { name="Gimmighoul",    level=3, types={ "Ghost" }, moves={ "Astonish", "Tackle" }, guids={ "c63945" }, evoData={ { cost=3, ball=RED, gen=9, guids={ "fa534f" } } }, model_GUID="7ad1fb" },
  { name="Gholdengo",     level=6, types={ "Steel", "Ghost" }, moves={ "Shadow Ball", "Make It Rain" }, guids={ "38ac21", "fa534f" }, model_GUID="f69161", offset={x=0, y=0.05, z=0} },
  --Gen 9 1001-1025
  { name="Wo-Chien",      level=7, types={ "Grass", "Dark" }, moves={ "Giga Drain", "Ruination" }, guids={ "f9f24e" }, model_GUID="ea5e06", custom_scale=0.4, offset={x=0, y=0, z=-0.03} },
  { name="Chien-Pao",     level=7, types={ "Ice", "Dark"  }, moves={ "Icicle Crash", "Ruination" }, guids={ "a4d468" }, model_GUID="119745", custom_scale=0.7, offset={x=0, y=0.1, z=0} },
  { name="Ting-Lu",       level=7, types={ "Ground", "Dark" }, moves={ "Earth Power", "Ruination" }, guids={ "c37f93" }, model_GUID="88cc37", custom_scale=0.5 },
  { name="Chi-Yu",        level=7, types={ "Fire", "Dark" }, moves={ "Lava Plume", "Ruination" }, guids={ "b9c9fd" }, model_GUID="cc5a34" },
  { name="Roaring Moon",  level=7, types={ "Dragon", "Dark" }, moves={ "Breaking Swipe", "Jaw Lock" }, guids={ "eac784" }, model_GUID="320e8f", offset={x=0, y=1.4, z=0} },
  { name="Iron Valiant",  level=5, types={ "Fairy", "Fighting" }, moves={ "Close Combat", "Spirit Break" }, guids={ "d1f07b" }, model_GUID="2a757a", offset={x=0, y=0.8, z=0} },
  { name="Koraidon",      level=7, types={ "Fighting", "Dragon" }, moves={ "Collision Course", "Outrage" }, guids={ "a7a93a" }, model_GUID="6a32f0", custom_scale=0.5, offset={x=0, y=0.1, z=-0.03} },
  { name="Miraidon",      level=7, types={ "Electric", "Dragon" }, moves={ "Electro Drift", "Outrage" }, guids={ "c00d7b" }, model_GUID="01aed0" },
  { name="Walking Wake",  level=7, types={ "Water", "Dragon" }, moves={ "Dragon Breath", "Hydro Steam" }, guids={ "f1495e" }, model_GUID="0a66e3", custom_scale=0.55, offset={x=0, y=0.13, z=-0.03} },
  { name="Iron Leaves",   level=7, types={ "Grass", "Psychic" }, moves={ "Solar Blade", "Psyblade" }, guids={ "6519a8" }, model_GUID="1a6521" },
  { name="Dipplin",       level=4, types={ "Dragon", "Grass" }, moves={ "Infestation", "Dragon Tail" }, guids={ "2990ba", "951a30" }, evoData={ { cost=1, ball=RED, gen=9, guids={ "7b9062", "e5ee39" } } }, model_GUID="c42076", offset={x=0, y=0.08, z=0} },
  { name="Poltchageist",  level=3, types={ "Grass", "Ghost" }, moves={ "Astonish", "Life Dew" }, guids={ "147af7" }, evoData={ { cost=1, ball=BLUE , gen=9, guids={ "fae06f" } } }, model_GUID="532633", offset={x=0, y=0.1, z=0} },
  { name="Sinistcha",     level=4, types={ "Grass", "Ghost" }, moves={ "Matcha Gotcha", "Hex" }, guids={ "9df0d7", "fae06f" }, model_GUID="636b84" },
  { name="Okidogi",       level=7, types={ "Fighting", "Poison" }, moves={ "Force Palm", "Poison Jab" }, guids={ "e4b697" }, model_GUID="7cdf26", offset={x=0, y=0.03, z=0} },
  { name="Munkidori",     level=7, types={ "Psychic", "Poison" }, moves={ "Sludge Wave", "Future Sight" }, guids={ "db6cf9" }, model_GUID="ae10ea" },
  { name="Fezandipiti",   level=7, types={ "Fairy", "Poison" }, moves={ "Cross Poison", "Moonblast" }, guids={ "855095" }, model_GUID="d24053", offset={x=0, y=0.03, z=0} },
  { name="Teal Ogerpon",  level=7, types={ "Grass" }, moves={ "Ivy Cudgel Grass", "Counter" }, guids={ "a92e73" }, model_GUID="a49c13", ball=LEGENDARY },               -- Grass
  { name="Cornerstone Ogerpon", level=7, types={ "Rock", "Grass" }, moves={ "Ivy Cudgel Rock", "Counter" }, guids={ "210bcc" }, model_GUID="525671", ball=LEGENDARY },  -- Rock
  { name="Hearthflame Ogerpon", level=7, types={ "Fire", "Grass" }, moves={ "Ivy Cudgel Fire", "Counter" }, guids={ "480b42" }, model_GUID="f094d7", ball=LEGENDARY },  -- Fire
  { name="Wellspring Ogerpon", level=7, types={ "Water", "Grass" }, moves={ "Ivy Cudgel Water", "Counter" }, guids={ "ce1aac" }, model_GUID="7bdc32", ball=LEGENDARY }, -- Water
  { name="Archaludon",    level=6, types={ "Steel", "Dragon" }, moves={ "Breaking Swipe", "Electro Shot" }, guids={ "3d2744", "3a6873" }, model_GUID="603d22", custom_scale=0.8 },
  { name="Hydrapple",     level=5, types={ "Dragon", "Grass" }, moves={ "Fickle Beam", "Syrup Bomb" }, guids={ "dcee5f", "7b9062", "e5ee39" }, model_GUID="42b211", offset={x=0, y=0.06, z=0} },
  { name="Gouging Fire",  level=7, types={ "Fire", "Dragon" }, moves={ "Burning Bulwark", "Dragon Claw" }, guids={ "ae5249" }, model_GUID="f1f02c", custom_scale=0.35, offset={x=0, y=0, z=-0.1} },
  { name="Raging Bolt",   level=7, types={ "Electric", "Dragon" }, moves={ "Dragon Hammer", "Thunderclap" }, guids={ "d32bf4" }, model_GUID="ce3c6a", custom_scale=0.45, offset={x=0, y=0, z=-0.06} }, 
  { name="Iron Boulder",  level=7, types={ "Rock", "Psychic" }, moves={ "Mighty Cleave", "Psycho Cut" }, guids={ "fa15fd" }, model_GUID="9536d0", custom_scale=0.8, offset={x=0, y=0.02, z=-0.03} }, 
  { name="Iron Crown",    level=7, types={ "Steel", "Psychic" }, moves={ "Tachyon Cutter", "Future Sight" }, guids={ "fae0a8" }, model_GUID="78a46a", offset={x=0, y=0.05, z=-0.03} },
  { name="Terapagos",     level=7, types={ "Normal" }, moves={ "Tera Starstorm", "Gyro Ball" }, guids={ "686877" }, model_GUID="433b69", offset={x=0, y=0.8, z=0} }, 
  { name="Pecharunt",     level=7, types={ "Poison", "Ghost" }, moves={ "Malignant Chain", "Shadow Ball" }, guids={ "114b25" }, model_GUID="673c38", offset={x=0, y=0.1, z=0}, custom_scale=2.0 }, 
  { name="Combat Paldean Tauros", level=4, types={ "Fighting" }, moves={ "Zen Headbutt", "Raging Bull Fighting" }, guids={ "16d4a9" }, model_GUID="000d15", custom_scale=0.85, offset={x=0, y=0.08, z=0}, ball=YELLOW },
  { name="Aqua Paldean Tauros", level=4, types={ "Water", "Fighting" }, moves={ "Double Kick", "Raging Bull Water" }, guids={ "e464b6" }, model_GUID="ef1964", custom_scale=0.85, offset={x=0, y=0.08, z=0}, ball=YELLOW }, -- Water -- Needs Model when available
  { name="Blaze Paldean Tauros", level=4, types={ "Fire", "Fighting" }, moves={ "Double Kick", "Raging Bull Fire" }, guids={ "723f82" }, model_GUID="e25ce6", custom_scale=0.85, offset={x=0, y=0.08, z=0}, ball=YELLOW },   -- Fire -- Needs Model when available
  { name="Paldean Wooper",level=1, types={ "Poison", "Ground" }, moves={ "Toxic Spikes", "Slam" }, guids={ "d95619" }, evoData={ { cost=2, ball=BLUE , gen=9, guids={ "9299e4" } } }, model_GUID="41ff5e" },

  -- Mega evolutions.
  { name="Mega Baxcalibur",        level=8,    types={ "Dragon", "Ice" },     moves={ "Dragon Tail", "Ice Fang" },           guids={ "50748d", "0a2a86" },         evoData={ { cost=0, ball=RED, gen=9, cycle=true, guids={ "1d7ffe", "1dad71", "805f61" }, model_GUID="54ea11" } } },  -- TODO: Needs model.
}

genData = { gen1PokemonData, gen2PokemonData, gen3PokemonData, gen4PokemonData, gen5PokemonData, gen6PokemonData, gen7PokemonData, gen8PokemonData, gen9PokemonData }

moveData =
{
    -- Bug
    {name="Attack Order",   power=2,      type="Bug",       dice=8, STAB=true   },
    {name="Bug Bite",       power=2,      type="Bug",       dice=6, STAB=true   },
    {name="Bug Buzz",       power=2,      type="Bug",       dice=6, STAB=true,  effects={{name="Advantage", target="Self", chance=6}} },
    {name="Defend Order",   power=0,      type="Bug",       dice=6, STAB=false, effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Fell Stinger",   power=1,      type="Bug",       dice=6, STAB=true,  effects={{name="Custom"}} },
    {name="First Impression",power=2,     type="Bug",       dice=6, STAB=true,  effects={{name="Priority", target="Self"}} },
    {name="Fury Cutter",    power=1,      type="Bug",       dice=6, STAB=true,  effects={{name="Custom"}} },
    {name="Infestation",    power=1,      type="Bug",       dice=4, STAB=true,  effects={{name="AddDice", target="Self", chance=4}}},
    {name="Leech Life",     power=2,      type="Bug",       dice=6, STAB=true,  effects={{name="LifeRecovery", target="Self"}} },
    {name="Lunge",          power=2,      type="Bug",       dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy"}}},
    {name="Megahorn",       power=3,      type="Bug",       dice=6, STAB=true   },
    {name="Pin Missile",    power=1,      type="Bug",       dice=4, STAB=true,  effects={{name="AddDice", target="Self", chance=4}} },
    {name="Pollen Puff",    power=2,      type="Bug",       dice=6, STAB=true   },
    {name="Quiver Dance",   power=0,      type="Bug",       dice=6, STAB=false, effects={{name="Advantage", target="Self"}, {name="Disadvantage", target="Enemy"}} },
    {name="Signal Beam",    power=2,      type="Bug",       dice=6, STAB=true,  effects={{name="Confuse", target="Enemy", chance=6}} },
    {name="Silk Trap",      power=0,      type="Bug",       dice=6, STAB=false, effects={{name="Protection", target="Self"}} },
    {name="Silver Wind",    power=2,      type="Bug",       dice=6, STAB=true,  effects={{name="Advantage", target="Self", chance=6}, {name="Disadvantage", target="Enemy", chance=6}} },
    {name="Steamroller",    power=2,      type="Bug",       dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="String Shot",    power=0,      type="Bug",       dice=6, STAB=false, effects={{name="Priority", target="Self"}} },
    {name="Struggle Bug",   power=1,      type="Bug",       dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy"}}},
    {name="Tail Glow",      power=0,      type="Bug",       dice=4, STAB=false, effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Twineedle",      power=1,      type="Bug",       dice=4, STAB=true,  effects={{name="Poison", target="Enemy", chance=5},{name="AddDice", target="Self"}} },
    {name="U-Turn",         power=2,      type="Bug",       dice=6, STAB=true,  effects={{name="Switch", target="Self"}} },
    {name="X-Scissor",      power=2,      type="Bug",       dice=6, STAB=true   },
    {name="Befuddle",       power=2,      type="Bug",       dice=6, STAB=true,  effects={{name="Custom"}} },
    {name="Flutterby",      power=3,      type="Bug",       dice=6, STAB=true,  effects={{name="Custom"}} },
    {name="Savage Spin-Out",power=4,      type="Bug",       dice=6, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="Pounce",         power=1,      type="Bug",       dice=6, STAB=true   },
    {name="Spider Web",     power=0,      type="Bug",       dice=6, STAB=false, effects={{name="Advantage", target="Self"}, {name="EscapePrevention", target="Enemy"}} },
    {name="Skitter Smack",  power=2,      type="Bug",       dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy"}}},
    
    -- Dark
    {name="Assurance",      power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Enraged", target="Self"}} },
    {name="Aura Wheel Dark",power=3,      type="Dark",      dice=6, STAB=true,  effects={{name="Custom"}}},
    {name="Beat Up",        power=0,      type="Dark",      dice=6, STAB=false },
    {name="Bite",           power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Brutal Swing",   power=2,      type="Dark",      dice=6, STAB=true },
    {name="Ceaseless Edge", power=2,      type="Dark",      dice=8, STAB=true,  effects={{name="Spikes"}} },
    {name="Crunch",         power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Advantage", target="Self", chance=6}} },
    {name="Darkest Lariat", power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy"}}},
    {name="Dark Pulse",     power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Embargo",        power=0,      type="Dark",      dice=6, STAB=false, effects={{name="KnockOff", target="Enemy"}} },
    {name="Fake Tears",     power=0,      type="Dark",      dice=6, STAB=false, effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Feint Attack",   power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Fiery Wrath",    power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Foul Play",      power=0,      type="Dark",      dice=6, STAB=false, effects={{name="Reversal", target="Self"}} },
    {name="Hone Claws",     power=0,      type="Dark",      dice=6, STAB=false, effects={{name="DoubleAdvantage", target="Self"}}},
    {name="Hyperspace Fury",power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Advantage", target="Self"}, {name="Recharge", target="Self"}} },
    {name="Jaw Lock",       power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="EscapePrevention", target="Enemy"}} },
    {name="Knock Off",      power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="KnockOff", target="Enemy"}} },
    {name="Kowtow Cleave",  power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Nasty Plot",     power=0,      type="Dark",      dice=6, STAB=false, effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Night Slash",    power=2,      type="Dark",      dice=8, STAB=true   },
    {name="Payback",        power=1,      type="Dark",      dice=6, STAB=true,  effects={{name="Custom"}} },
    {name="Pursuit",        power=1,      type="Dark",      dice=6, STAB=true,  effects={{name="Custom"}} }, 
    {name="Punishment",     power=3,      type="Dark",      dice=6, STAB=true,  effects={{name="Custom"}} }, 
    {name="Snarl",          power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy"}}},
    {name="Sucker Punch",   power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Priority", target="Self"}}},
    {name="Ruination",      power="Enemy",type="Dark",      dice=6, STAB=false },
    {name="Taunt",          power=0,      type="Dark",      dice=6, STAB=false, effects={{name="Custom"}} },
    {name="Thief",          power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Custom"}} },
    {name="Torment",        power=0,      type="Dark",      dice=6, STAB=false, effects={{name="Custom"}} },
    {name="Wicked Blow",    power=2,      type="Dark",      dice=8, STAB=true },
    {name="Wicked Torque",  power=2,      type="Dark",      dice=8, STAB=true,  effects={{name="Sleep", target="Enemy", chance=6}} },
    {name="Throat Chop",    power=2,      type="Dark",      dice=6, STAB=true },
    {name="Darkness",       power=4,      type="Dark",      dice=6, STAB=true,  effects={{name="Custom"} } },
    {name="Snooze",         power=2,      type="Dark",      dice=8, STAB=true,  effects={{name="Sleep", target="Enemy", chance=4}} },
    {name="One Blow",       power=3,      type="Dark",      dice=6, STAB=true,  effects={{name="Custom"} } },
    {name="Night Daze",     power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy"}}},
    {name="Snatch",         power=0,      type="Dark",      dice=6, STAB=false, effects={{name="Custom"} } },
    {name="Black Hole Eclipse",power=4,   type="Dark",      dice=6, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="Malicious Moonsault",power=5,  type="Dark",      dice=6, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="Dark Nova",      power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Enraged", target="Self"}} },
    {name="Baddy Bad",      power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy"}}},
    {name="Shadow Blast",   power=2,      type="Dark",      dice=8, STAB=true },
    {name="Switcheroo",     power=0,      type="Dark",      dice=6, STAB=false, effects={{name="Custom"} } },
    {name="Comeuppance",    power=0,      type="Dark",      dice=6, STAB=false, effects={{name="Reversal", target="Self"}} },
    {name="Obstruct",       power=0,      type="Dark",      dice=6, STAB=false, effects={{name="Advantage", target="Self", chance=4}, {name="Protection", target="Self"}} },
    {name="Lash Out",       power=2,      type="Dark",      dice=6, STAB=true,  effects={{name="Custom"}} },

    -- Dragon
    {name="Dynamax Cannon", power=2,      type="Dragon",    dice=6, STAB=true,  effects={{name="Custom"}}},
    {name="Dragon Claw",    power=2,      type="Dragon",    dice=6, STAB=true   },
    {name="Dragon Dance",   power=0,      type="Dragon",    dice=6, STAB=false, effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Dragon Darts",   power=1,      type="Dragon",    dice=4, STAB=true,  effects={{name="AddDice", target="Self"}} },
    {name="Dragon Breath",  power=2,      type="Dragon",    dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=5}} },
    {name="Dragon Energy",  power=3,      type="Dragon",    dice=6, STAB=true,  effects={{name="StatDown", target="Self"}} },
    {name="Dragon Hammer",  power=2,      type="Dragon",    dice=6, STAB=true   },
    {name="Dragon Pulse",   power=2,      type="Dragon",    dice=6, STAB=true   },
    {name="Dragon Rage",    power=4,      type="Dragon",    dice=4, STAB=false, effects={{name="Neutral", target="Self"}} },
    {name="Dragon Rush",    power=2,      type="Dragon",    dice=4, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Dragon Tail",    power=2,      type="Dragon",    dice=6, STAB=true,  effects={{name="Switch", target="Enemy"}} },
    {name="Dual Chop",      power=1,      type="Dragon",    dice=4, STAB=true,  effects={{name="AddDice", target="Self"}} },
    {name="Clanging Scales",power=3,      type="Dragon",    dice=6, STAB=true,  effects={{name="StatDown", target="Self"}} },
    {name="Fickle Beam",    power=2,      type="Dragon",    dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Glaive Rush",    power=3,      type="Dragon",    dice=6, STAB=true,  effects={{name="StatDown", target="Self"}} },
    {name="Order Up",       power=2,      type="Dragon",    dice=6, STAB=true,  effects={{name="Custom"}} },
    {name="Outrage",        power=3,      type="Dragon",    dice=6, STAB=true,  effects={{name="Confuse", target="Self", chance=5}} },
    {name="Roar of Time",   power=3,      type="Dragon",    dice=6, STAB=true,  effects={{name="Recharge", target="Self"}} },
    {name="Spacial Rend",   power=2,      type="Dragon",    dice=8, STAB=true   },
    {name="Twister",        power=1,      type="Dragon",    dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Breaking Swipe", power=2,      type="Dragon",    dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy"}} },
    {name="Wyrmwind",       power=3,      type="Dragon",    dice=6, STAB=true,  effects={{name="Custom"}}},
    {name="Eternabeam",     power=4,      type="Dragon",    dice=6, STAB=true,  effects={{name="Recharge", target="Self"}} },
    {name="Devastating Drake",power=4,    type="Dragon",    dice=6, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="Clangorous Soulblaze",power=5, type="Dragon",    dice=6, STAB=false, effects={{name="Recharge", target="Self"}, {name="Advantage", target="Self"}} },
    {name="Draco Meteor",   power=3,      type="Dragon",    dice=6, STAB=true,  effects={{name="StatDown", target="Self"}} },
    {name="Scale Shot",     power=1,      type="Dragon",    dice=4, STAB=true,  effects={{name="AddDice", target="Self", chance=4}} },
    {name="Core Enforcer",  power=2,      type="Dragon",    dice=6, STAB=true,  effects={{name="KnockOff", target="Enemy"}} },
    {name="Nihil Light",    power=4,      type="Dragon",    dice=6, STAB=true,  effects={{name="Custom"}} },

    -- Electric
    {name="Aura Wheel Electric",power=3,  type="Electric",  dice=6, STAB=true,  effects={{name="Custom"}}},
    {name="Bolt Strike",    power=3,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=6}} },
    {name="Charge",         power=0,      type="Electric",  dice=6, STAB=false, effects={{name="Advantage", target="Self"}} },
    {name="Charge Beam",    power=1,      type="Electric",  dice=6, STAB=true,  effects={{name="Advantage", target="Self", chance=3}} },
    {name="Discharge",      power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=5}} },
    {name="Electroweb",     power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Priority", target="Self"} }},
    {name="Electro Ball",   power="Self", type="Electric",  dice=6, STAB=false},
    {name="Electro Drift",  power=2,      type="Electric",  dice=6, STAB=true},
    {name="Electro Shot",   power=3,      type="Electric",  dice=6, STAB=true,  effects={{name="Advantage", target="Self"},{name="Recharge", target="Self"}}},
    {name="Fusion Bolt",    power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="AddDice", target="Self", chance=4}}},
    {name="Nuzzle",         power=1,      type="Electric",  dice=6, STAB=false, effects={{name="Paralyze", target="Enemy"}}},
    {name="Overdrive",      power=2,      type="Electric",  dice=6, STAB=true},
    {name="Plasma Fists",   power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Custom"}}},
    {name="Rev. Dance Electric",power=2,  type="Electric",  dice=6, STAB=true},
    {name="Shock Wave",     power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Spark",          power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=5}} },
    {name="Thunderbolt",    power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=6}} },
    {name="Thunderclap",    power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Priority", target="Self"} }},
    {name="Thunder",        power=3,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=6}} },
    {name="Thunder Cage",   power=2,      type="Electric",  dice=4, STAB=true,  effects={{name="AddDice", target="Self", chance=4}}},
    {name="Thunder Fang",   power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="ThunderFang", target="Enemy", chance=5}} },
    {name="Thunder Shock",  power=1,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=6}} },
    {name="Thunder Punch",  power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=6}} },
    {name="Thunder Wave",   power=0,      type="Electric",  dice=6, STAB=false, effects={{name="Paralyze", target="Enemy", chance=2}} },
    {name="Volt Swtich",    power=3,      type="Electric",  dice=6, STAB=true,  effects={{name="Switch", target="Self"}} },
    {name="Wild Charge",    power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=5}} },
    {name="Wildbolt Storm", power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=5}} },
    {name="Zap Cannon",     power=3,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=4}} },
    {name="Zing Zap",       power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Volt Tackle",    power=3,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=6}, {name="KO", target="Self", chance=6}} },
    {name="Volt Crash",     power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy"}} },
    {name="Stun Shock",     power=3,      type="Electric",  dice=6, STAB=true,  effects={{name="Custom"}}},
    {name="Gigavolt Havoc", power=4,      type="Electric",  dice=6, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="Catastropika",   power=5,      type="Electric",  dice=6, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="10MV Thunderbolt",power=5,     type="Electric",  dice=8, STAB=false, effects={{name="Recharge", target="Self"}, {name="Advantage", target="Self"}} },
    {name="Stoked Sparksurfer",power=4,   type="Electric",  dice=6, STAB=false, effects={{name="Recharge", target="Self"}, {name="Paralyze", target="Enemy", chance=5}} },
    {name="Volt Switch",    power=3,      type="Electric",  dice=6, STAB=false, effects={{name="Switch", target="Self"}} },
    {name="Eerie Impulse",  power=0,      type="Electric",  dice=6, STAB=false, effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Electric Terrain", power=0,    type="Electric",  dice=6, STAB=false, effects={{name="ElectricTerrain"}}},
    {name="Parabolic Charge", power=2,    type="Electric",  dice=6, STAB=true,  effects={{name="LifeRecovery", target="Self"}} },
    {name="Buzzy Buzz",     power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=4}} },
    {name="Bolt Beak",      power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="Advantage", target="Self", chance=4}} },
    {name="Supercell Slam", power=2,      type="Electric",  dice=6, STAB=true,  effects={{name="KO", target="Self", chance=6}} },

    -- Fairy
    {name="Baby-Doll Eyes", power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="Disadvantage", target="Enemy"}} },
    {name="Dazzling Gleam", power=2,      type="Fairy",     dice=6, STAB=true },
    {name="Charm",          power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Fairy Wind",     power=1,      type="Fairy",     dice=6, STAB=true},
    {name="Play Rough",     power=2,      type="Fairy",     dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Sweet Kiss",     power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="Confuse", target="Enemy", chance=2}} },
    {name="Decorate",       power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Disarming Voice",power=1,      type="Fairy",     dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Fleur Cannon",   power=3,      type="Fairy",     dice=6, STAB=true,  effects={{name="StatDown", target="Self"}}},
    {name="Misty Terrain",  power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="MistyTerrain"}} },
    {name="Nature's Madness",power="Enemy",type="Fairy",    dice=6, STAB=false },
    {name="Magical Torque", power=2,      type="Fairy",     dice=6, STAB=true,  effects={{name="Confuse", target="Enemy", chance=5}} },
    {name="Moonblast",      power=2,      type="Fairy",     dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Moonlight",      power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="LifeRecovery", target="Self"}} },
    {name="Spirit Break",   power=2,      type="Fairy",     dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy"}} },
    {name="Springtide Storm", power=2,    type="Fairy",     dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=6},{name="Advantage", target="Self", chance=6}} },
    {name="Strange Steam",  power=2,      type="Fairy",     dice=6, STAB=true,  effects={{name="Confuse", target="Enemy", chance=6}} },
    {name="Draining Kiss",  power=1,      type="Fairy",     dice=6, STAB=true,  effects={{name="LifeRecovery", target="Self"}} },
    {name="Smite",          power=2,      type="Fairy",     dice=6, STAB=true,  effects={{name="Confuse", target="Enemy"}} },
    {name="Starfall",       power=3,      type="Fairy",     dice=6, STAB=true,  effects={{name="MistyTerrain"}} },
    {name="Finale",         power=3,      type="Fairy",     dice=6, STAB=true,  effects={{name="Revival", target="Self"}} },
    {name="Twinkle Tackle", power=4,      type="Fairy",     dice=6, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="Let's Snuggle Forever", power=5, type="Fairy",   dice=6, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="Guardian of Alola", power="Enemy", type="Fairy", dice=8, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="Fairy Lock",     power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="EscapePrevention", target="Enemy"}} },
    {name="Aromatic Mist",  power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="Disadvantage", target="Enemy"}} },
    {name="Alluring Voice", power=2,      type="Fairy",     dice=6, STAB=true,  effects={{name="Confuse", target="Enemy", chance=6}} },
    {name="Crafty Shield",  power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="Safeguard", target="Self"}} },
    {name="Sparkly Swirl",  power=2,      type="Fairy",     dice=6, STAB=true,  effects={{name="StatusHeal", target="Self"}} },
    {name="Geomancy",       power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="DoubleAdvantage", target="Self"}, {name="DoubleDisadvantage", target="Enemy"}, {name="Recharge", target="Self"}} },
    {name="Floral Healing", power=0,      type="Fairy",     dice=6, STAB=false, effects={{name="Revival", target="Self"}} },
    {name="Light of Ruin",  power=3,      type="Fairy",     dice=6, STAB=true,  effects={{name="KO", target="Self", chance=6}} },
    
    -- Fighting
    {name="Aura Sphere",    power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Arm Thrust",     power=1,      type="Fighting",  dice=4, STAB=true,  effects={{name="AddDice", target="Self", chance=4}} },
    {name="Bulk Up",        power=0,      type="Fighting",  dice=6, STAB=false, effects={{name="Disadvantage", target="Enemy"},{name="Advantage", target="Self"}} },
    {name="Brick Break",    power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Custom"}} },
    {name="Body Press",     power=2,      type="Fighting",  dice=6, STAB=true },
    {name="Circle Throw",   power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Switch", target="Enemy"}} },
    {name="Counter",        power=0,      type="Fighting",  dice=6, STAB=false, effects={{name="Reversal", target="Self"}} },
    {name="Close Combat",   power=3,      type="Fighting",  dice=6, STAB=true,  effects={{name="StatDown", target="Self"}} },
    {name="Collision Course",power=2,     type="Fighting",  dice=6, STAB=true},
    {name="Combat Torque",  power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=5}} },
    {name="Cross Chop",     power=2,      type="Fighting",  dice=8, STAB=true},
    {name="Detect",         power=0,      type="Fighting",  dice=6, STAB=false, effects={{name="Protection", target="Self"}} },
    {name="Double Kick",    power=1,      type="Fighting",  dice=4, STAB=true,  effects={{name="AddDice", target="Self"}} },
    {name="Drain Punch",    power=2,      type="Fighting",  dice=4, STAB=true,  effects={{name="LifeRecovery", target="Self"}} },
    {name="Dynamic Punch",  power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Confuse", target="Enemy", chance=4}} },
    {name="Flying Press",   power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Custom"}}},
    {name="Focus Blast",    power=3,      type="Fighting",  dice=6, STAB=true,  effects={{name="Advantage", target="Self", chance=6}} },
    {name="Focus Punch",    power=3,      type="Fighting",  dice=6, STAB=true},
    {name="Force Palm",     power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Paralyze", target="Enemy", chance=5}} },
    {name="Hammer Arm",     power=2,      type="Fighting",  dice=6, STAB=true},
    {name="High Jump Kick", power=3,      type="Fighting",  dice=6, STAB=true,  effects={{name="KO", target="Self", chance=6}} },
    {name="Jump Kick",      power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="KO", target="Self", chance=6}} },
    {name="Karate Chop",    power=1,      type="Fighting",  dice=8, STAB=true},
    {name="Low Kick",       power=1,      type="Fighting",  dice=4, STAB=true},
    {name="Mach Punch",     power=1,      type="Fighting",  dice=6, STAB=true,  effects={{name="Priority", target="Self"}} },
    {name="No Retreat",     power=0,      type="Fighting",  dice=6, STAB=false, effects={{name="EscapePrevention", target="Self"}, {name="Advantage", target="Self"}, {name="Disadvantage", target="Enemy"}} },
    {name="Octolock",       power=0,      type="Fighting",  dice=6, STAB=false, effects={{name="EscapePrevention", target="Enemy"}, {name="DoubleAdvantage", target="Self"}} },
    {name="Power-Up Punch", power=1,      type="Fighting",  dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Raging Bull Fighting",power=2, type="Fighting",  dice=6, STAB=true},
    {name="Revenge",        power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Enraged", target="Self"}} },
    {name="Rock Smash",     power=1,      type="Fighting",  dice=6, STAB=true,  effects={{name="Advantage", target="Self", chance=4}} },
    {name="Sacred Sword",   power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Secret Sword",   power=2,      type="Fighting",  dice=6, STAB=true},
    {name="Seismic Toss",   power="Self", type="Fighting",  dice=6, STAB=false},
    {name="Sky Uppercut",   power=2,      type="Fighting",  dice=6, STAB=true},
    {name="Storm Throw",    power=3,      type="Fighting",  dice=8, STAB=true},
    {name="Submission",     power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="KO", target="Self", chance=6}} },
    {name="Superpower",     power=3,      type="Fighting",  dice=6, STAB=true,  effects={{name="StatDown", target="Self"}} },
    {name="Triple Arrows",  power=1,      type="Fighting",  dice=8, STAB=true,  effects={{name="Advantage", target="Self", chance=5}} },
    {name="Triple Kick",    power=-1,     type="Fighting",  dice=4, STAB=false, effects={{name="AddDice2", target="Self"}} },
    {name="Vital Throw",    power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Wake-Up Slap",   power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="ConditionBoost", target="Enemy"}} },
    {name="Rolling Kick",   power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Knuckle",        power=3,      type="Fighting",  dice=6, STAB=true,  effects={{name="Custom"}} },
    {name="All-Out Pummeling", power=4,   type="Fighting",  dice=6, STAB=false, effects={{name="Recharge", target="Self"} } },
    {name="Chi Strike",     power=2,      type="Fighting",  dice=8, STAB=true },
    {name="Reversal",       power="Self", type="Fighting",  dice=6, STAB=false},
    {name="Axe Kick",       power=3,      type="Fighting",  dice=6, STAB=true,  effects={{name="Confuse", target="Enemy", chance=5}, {name="KO", target="Self", chance=6}} },
    {name="Victory Dance",  power=0,      type="Fighting",  dice=6, STAB=false, effects={{name="Disadvantage", target="Enemy"},{name="Advantage", target="Self"}} },
    {name="Meteor Assault", power=3,      type="Fighting",  dice=6, STAB=true,  effects={{name="Recharge", target="Self"} } },
    {name="Thunderous Kick", power=2,     type="Fighting",  dice=6, STAB=true,  effects={{name="Advantage", target="Self"}} },
    {name="Upper Hand",     power=2,      type="Fighting",  dice=6, STAB=true,  effects={{name="Priority", target="Self"}} },
    {name="Vacuum Wave",    power=1,      type="Fighting",  dice=6, STAB=true,  effects={{name="Priority", target="Self"}} },

    -- Fire
    {name="Blaze Kick",     power=2,      type="Fire",    dice=8, STAB=true,    effects={{name="Burn", target="Enemy", chance=6}} },
    {name="Blazing Torque", power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=5}} },
    {name="Blue Flare",     power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=5}} },
    {name="Ember",          power=1,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=6}} },
    {name="Eruption",       power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="StatDown", target="Self"}}},
    {name="Fiery Dance",    power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Advantage", target="Self", chance=4}} },
    {name="Fire Fang",      power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="FireFang", target="Enemy", chance=5}} },
    {name="Fire Blast",     power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=6}} },
    {name="Fire Lash",      power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Fire Punch",     power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=6}} },
    {name="Fire Spin",      power=1,      type="Fire",    dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Flame Wheel",    power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=6}} },
    {name="Flame Burst",    power=2,      type="Fire",    dice=6, STAB=true},
    {name="Flame Charge",   power=1,      type="Fire",    dice=6, STAB=true,    effects={{name="Priority", target="Self"}}},
    {name="Flamethrower",   power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=6}} },
    {name="Flare Blitz",    power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="KO", target="Self", chance=6}} },
    {name="Fusion Flare",   power=2,      type="Fire",    dice=6, STAB=false,   effects={{name="AddDice", target="Self", chance=4}} },
    {name="Heat Crash",     power="Self", type="Fire",    dice=6, STAB=false},
    {name="Incinerate",     power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="KnockOff", target="Enemy"}} },
    {name="Inferno",        power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=4}} },
    {name="Ivy Cudgel Fire",power=2,      type="Fire",    dice=8, STAB=true},
    {name="Lava Plume",     power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=5}} },
    {name="Magma Storm",    power=2,      type="Fire",    dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Mind Blown",     power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="KO", target="Self", chance=6}} },
    {name="Mystical Fire",  power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy"}} },
    {name="Overheat",       power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="StatDown", target="Self"}} },
    {name="Pyro Ball",      power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=6}} },
    {name="Raging Bull Fire",power=2,     type="Fire",    dice=6, STAB=false},
    {name="Raging Fury",    power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="Confuse", target="Self", chance=5}} },
    {name="Rev. Dance Fire",power=2,      type="Fire",    dice=6, STAB=true},
    {name="Sacred Fire",    power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=4}} },
    {name="Searing Shot",   power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=5}} },
    {name="Torch Song",     power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Weather Ball Fire",power=2,    type="Fire",    dice=6, STAB=true},
    {name="Will-O-Wisp",    power=0,      type="Fire",    dice=6, STAB=false,   effects={{name="Burn", target="Enemy", chance=2}} },
    {name="Wildfire",       power=2,      type="Fire",    dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Fireball",       power=4,      type="Fire",    dice=6, STAB=true},
    {name="Flare",          power=4,      type="Fire",    dice=6, STAB=false,   effects={{name="HarshSunlight"}} },
    {name="Centiferno",     power=2,      type="Fire",    dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Inferno Overdrive", power=4,   type="Fire",    dice=6, STAB=false,   effects={{name="Recharge", target="Self"} } },
    {name="Blast Burn",     power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="Recharge", target="Self"} } },
    {name="Fire Pledge",    power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Heat Wave",      power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=6}} },
    {name="Bitter Blade",   power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="LifeRecovery", target="Self"}} },
    {name="Armour Cannon",  power=3,      type="Fire",    dice=6, STAB=true,    effects={{name="StatDown", target="Self"}} },
    {name="Sizzly Slide",   power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=4}} },
    {name="Lave Plume",     power=2,      type="Fire",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=5}} },
    {name="Sunny Day",      power=0,      type="Fire",    dice=8, STAB=false,   effects={{name="HarshSunlight"}} },
    {name="Burning Bulwark", power=0,     type="Fire",    dice=6, STAB=false,   effects={{name="Protection", target="Self"}, {name="Burn", target="Enemy", chance=4}} },
    {name="Burning Jealousy", power=2,    type="Fire",    dice=6, STAB=true,    effects={{name="Custom"}} },

    -- Flying
    {name="Aerial Ace",     power=2,      type="Flying",  dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Air Cutter",     power=2,      type="Flying",  dice=8, STAB=true},
    {name="Air Slash",      power=2,      type="Flying",  dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Aeroblast",      power=2,      type="Flying",  dice=8, STAB=true },
    {name="Beak Blast",     power=2,      type="Flying",  dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=4}} },
    {name="Bleakwind Storm",power=2,      type="Flying",  dice=6, STAB=true,    effects={{name="Freeze", target="Enemy", chance=5}} },
    {name="Bounce",         power=2,      type="Flying",  dice=6, STAB=true,    effects={{name="Paralyze", target="Enemy", chance=6}}},
    {name="Brave Bird",     power=3,      type="Flying",  dice=6, STAB=true,    effects={{name="KO", target="Self"}} },
    {name="Chatter",        power=2,      type="Flying",  dice=6, STAB=true,    effects={{name="Confuse", target="Enemy", chance=6}} },
    {name="Drill Peck",     power=2,      type="Flying",  dice=6, STAB=true},
    {name="Dual Wingbeat",  power=1,      type="Flying",  dice=4, STAB=true,    effects={{name="AddDice", target="Self"}} },
    {name="Gust",           power=1,      type="Flying",  dice=6, STAB=true},
    {name="Fly",            power=2,      type="Flying",  dice=6, STAB=true},
    {name="Feather Dance",  power=0,      type="Flying",  dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Hurricane",      power=3,      type="Flying",  dice=6, STAB=true,    effects={{name="Confuse", target="Enemy", chance=6}} },
    {name="Mirror Move",    power=0,      type="Flying",  dice=6, STAB=false,   effects={{name="Reversal", target="Self"}} },
    {name="Oblivion Wing",  power=2,      type="Flying",  dice=6, STAB=true,    effects={{name="LifeRecovery", target="Self"}} },
    {name="Peck",           power=1,      type="Flying",  dice=6, STAB=true},
    {name="Sky Attack",     power=3,      type="Flying",  dice=8, STAB=true,    effects={{name="Recharge", target="Self"}, {name="Disadvantage", target="Enemy", chance=5}} },
    {name="Wing Attack",    power=2,      type="Flying",  dice=6, STAB=true},
    {name="Airstream",      power=3,      type="Flying",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Supersonic Skystrike",power=4, type="Flying",  dice=6, STAB=false,   effects={{name="Recharge", target="Self"} } },
    {name="Wind Rage",      power=3,      type="Flying",  dice=6, STAB=true,    effects={{name="Custom"}, {name="FieldClear"}} },
    {name="Roost",          power=0,      type="Flying",  dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}} },
    {name="Pluck",          power=2,      type="Flying",  dice=6, STAB=true,    effects={{name="KnockOff", target="Enemy"}} },
    {name="Acrobatics",     power=2,      type="Flying",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Dragon Ascent",  power=3,      type="Flying",  dice=6, STAB=true,    effects={{name="StatDown", target="Self"}} },

    -- Ghost
    {name="Astral Barrage", power=3,      type="Ghost",   dice=6, STAB=true},
    {name="Astonish",       power=1,      type="Ghost",   dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Bitter Malice",  power=2,      type="Ghost",   dice=6, STAB=true,    effects={{name="Freeze", target="Enemy", chance=5}, {name="ConditionBoost", target="Enemy"}} },
    {name="Confuse Ray",    power=0,      type="Ghost",   dice=6, STAB=false,   effects={{name="Confuse", target="Enemy"}} },
    {name="Curse",          power=0,      type="Ghost",   dice=6, STAB=false,   effects={{name="KO", target="Self", chance=4},{name="Curse", target="Enemy"}} },
    {name="Hex",            power=2,      type="Ghost",   dice=6, STAB=true,    effects={{name="ConditionBoost", target="Enemy"}} },
    {name="Last Respects",  power=0,      type="Ghost",   dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Lick",           power=1,      type="Ghost",   dice=6, STAB=true,    effects={{name="Paralyze", target="Enemy", chance=5}} },
    {name="Moongeist Beam", power=2,      type="Ghost",   dice=6, STAB=true},
    {name="Night Shade",    power="Self", type="Ghost",   dice=6, STAB=false},
    {name="Ominous Wind",   power=2,      type="Ghost",   dice=6, STAB=true,    effects={{name="Advantage", target="Self", chance=6},{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Phantom Force",  power=2,      type="Ghost",   dice=6, STAB=true},
    {name="Rage Fist",      power=1,      type="Ghost",   dice=6, STAB=true,    effects={{name="Enraged", target="Self"}} },
    {name="Rev. Dance Ghost",power=2,     type="Ghost",   dice=6, STAB=true},
    {name="Shadow Ball",    power=2,      type="Ghost",   dice=6, STAB=true,    effects={{name="Advantage", target="Self", chance=6}}},
    {name="Shadow Bone",    power=2,      type="Ghost",   dice=6, STAB=true},
    {name="Shadow Claw",    power=2,      type="Ghost",   dice=8, STAB=true},
    {name="Shadow Force",   power=3,      type="Ghost",   dice=6, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Shadow Punch",   power=2,      type="Ghost",   dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Shadow Sneak",   power=1,      type="Ghost",   dice=6, STAB=true,    effects={{name="Priority", target="Self"}} },
    {name="Spectral Thief", power=2,      type="Ghost",   dice=6, STAB=true,    effects={{name="Custom"}}},
    {name="Spirit Shackle", power=2,      type="Ghost",   dice=6, STAB=true,    effects={{name="EscapePrevention", target="Enemy"}}},
    {name="Terror",         power=3,      type="Ghost",   dice=6, STAB=true,    effects={{name="EscapePrevention", target="Enemy"}}},
    {name="Never-Ending Nightmare", power=4,type="Ghost", dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Sinister Arrow Raid", power=5, type="Ghost",   dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Soul-Stealing 7* Strike",power=5, type="Ghost", dice=6, STAB=false,  effects={{name="Recharge", target="Self"}} },
    {name="Menacing Moonraze Maelstrom",power=4,type="Ghost", dice=6, STAB=false, effects={{name="Recharge", target="Self"}, {name="Priority", target="Self"}} },
    {name="Infernal Parade",power=2,     type="Ghost",    dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=5}, {name="ConditionBoost", target="Enemy"}} },
    {name="Poltergeist",    power=0,      type="Ghost",   dice=6, STAB=true},

    -- Grass
    {name="Absorb",         power=1,      type="Grass",   dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}} },
    {name="Apple Acid",     power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Aromatherapy",   power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="StatusHeal", target="Self"}} },
    {name="Branch Poke",    power=1,      type="Grass",   dice=6, STAB=true},
    {name="Bullet Seed",    power=1,      type="Grass",   dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Chloroblast",    power=3,      type="Grass",   dice=6, STAB=true,    effects={{name="KO", target="Self", chance=5}} },
    {name="Cotton Guard",   power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Cotton Spore",   power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="Priority", target="Self"}} },
    {name="Drum Beating",   power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Priority", target="Self"}} },
    {name="Energy Ball",    power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Advantage", target="Self", chance=6}} },
    {name="Flower Trick",   power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Giga Drain",     power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="LifeRecovery", target="Self"}} },
    {name="Grass Knot",     power="Enemy", type="Grass",  dice=6, STAB=false},
    {name="Grass Whistle",  power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="Sleep", target="Enemy", chance=4}} },
    {name="Grassy Terrain", power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="GrassyTerrain"}}},
    {name="Grav Apple",     power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Horn Leech",     power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="LifeRecovery", target="Self"}} },
    {name="Ivy Cudgel Grass",power=2,     type="Grass",   dice=8, STAB=true},
    {name="Jungle Healing", power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="Revival", target="Self"}, {name="StatusHeal", target="Self"}}},
    {name="Leafage",        power=1,      type="Grass",   dice=8, STAB=true},
    {name="Leaf Blade",     power=2,      type="Grass",   dice=8, STAB=true},
    {name="Leaf Storm",     power=3,      type="Grass",   dice=4, STAB=true,    effects={{name="StatDown", target="Self"}} },
    {name="Leaf Tornado",   power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=4}}},
    {name="Magical Leaf",   power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Matcha Gotcha",  power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=5}, {name="LifeRecovery", target="Self"}} },
    {name="Mega Drain",     power=1,      type="Grass",   dice=6, STAB=true,    effects={{name="LifeRecovery", target="Self"}} },
    {name="Needle Arm",     power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Petal Blizzard", power=2,      type="Grass",   dice=6, STAB=true},
    {name="Petal Dance",    power=3,      type="Grass",   dice=6, STAB=true,    effects={{name="Confuse", target="Self", chance=5}} },
    {name="Power Whip",     power=3,      type="Grass",   dice=6, STAB=true},
    {name="Razor Leaf",     power=2,      type="Grass",   dice=8, STAB=true},
    {name="Seed Bomb",      power=2,      type="Grass",   dice=6, STAB=true},
    {name="Seed Flare",     power=3,      type="Grass",   dice=6, STAB=true,    effects={{name="DoubleAdvantage", target="Self", chance=4}} },
    {name="Sleep Powder",   power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="Sleep", target="Enemy", chance=3}} },
    {name="Solar Beam",     power=3,      type="Grass",   dice=6, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Solar Blade",    power=3,      type="Grass",   dice=6, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Spicy Extract",  power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Spiky Shield",   power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="Protection", target="Self"}, {name="Enraged", target="Self"}} },
    {name="Spore",          power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="Sleep", target="Enemy"}} },
    {name="Stun Spore",     power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="Paralyze", target="Enemy", chance=3}} },
    {name="Syrup Bomb",     power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Priority", target="Self"}} },
    {name="Trailblaze",     power=1,      type="Grass",   dice=6, STAB=true,    effects={{name="Priority", target="Self"}}},
    {name="Trop Kick",      power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy"}}},
    {name="Vine Whip",      power=1,      type="Grass",   dice=6, STAB=true},
    {name="Wood Hammer",    power=3,      type="Grass",   dice=6, STAB=true,    effects={{name="KO", target="Self", chance=6}} },
    {name="Vine Lash",      power=2,      type="Grass",   dice=4, STAB=false,   effects={{name="AddDice", target="Self"}} },
    {name="Drum Solo",      power=4,      type="Grass",   dice=6, STAB=true},
    {name="Tartness",       power=3,      type="Grass",   dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Sweetness",      power=3,      type="Grass",   dice=6, STAB=true,    effects={{name="StatusHeal", target="Self"}} },
    {name="Bloom Doom",     power=4,      type="Grass",   dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Frenzy Plant",   power=3,      type="Grass",   dice=6, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Grass Pledge",   power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Leech Seed",     power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="Renewal"}} },
    {name="Ingrain",        power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="Renewal"}} },
    {name="Strength Sap",   power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}, {name="Disadvantage", target="Enemy"}} },
    {name="Synthesis",      power=0,      type="Grass",   dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}} },
    {name="Sappy Seed",     power=2,      type="Grass",   dice=6, STAB=true,    effects={{name="Renewal"}} },
    {name="Snap Trap",      power=1,      type="Grass",   dice=4, STAB=true,    effects={{name="AddDice", target="Self"}} },
    {name="Grassy Glide",   power=2,      type="Grass",   dice=6, STAB=true},

    -- Ground
    {name="Bone Club",      power=2,      type="Ground",  dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Bone Rush",      power=1,      type="Ground",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Bonemerang",     power=1,      type="Ground",  dice=4, STAB=true,    effects={{name="AddDice", target="Self"}} },
    {name="Bulldoze",       power=2,      type="Ground",  dice=6, STAB=true},
    {name="Dig",            power=2,      type="Ground",  dice=6, STAB=true},
    {name="Drill Run",      power=2,      type="Ground",  dice=8, STAB=true},
    {name="Earth Power",    power=2,      type="Ground",  dice=6, STAB=true,    effects={{name="Advantage", target="Self", chance=6}} },
    {name="Earthquake",     power=2,      type="Ground",  dice=6, STAB=true},
    {name="Fissure",        power=0,      type="Ground",  dice=6, STAB=false,   effects={{name="KO", target="Enemy", chance=5}} },
    {name="High Horsepower", power=2,      type="Ground",  dice=6, STAB=true},
    {name="Headlong Rush",  power=3,      type="Ground",  dice=6, STAB=true,    effects={{name="StatDown", target="Self"}} },
    {name="Land's Wrath",   power=3,      type="Ground",  dice=6, STAB=true},
    {name="Magnitude",      power=1,      type="Ground",  dice=6, STAB=true,    effects={{name="D4Dice", target="Self", chance=3}, {name="AddDice", target="Self", chance=5}}},
    {name="Mud Bomb",       power=2,      type="Ground",  dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Mud Shot",       power=2,      type="Ground",  dice=6, STAB=true},
    {name="Mud-Slap",       power=1,      type="Ground",  dice=6, STAB=false,   effects={{name="Disadvantage", target="Enemy"}} },
    {name="Sand Attack",    power=0,      type="Ground",  dice=6, STAB=false,   effects={{name="Disadvantage", target="Enemy"}} },
    {name="Sand Tomb",      power=1,      type="Ground",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Sandsear Storm", power=2,      type="Ground",  dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=5}} },
    {name="Spikes",         power=0,      type="Ground",  dice=6, STAB=false,   effects={{name="Spikes"}} },
    {name="Precipise Blades",power=3,     type="Ground",  dice=6, STAB=true},
    {name="Quake",          power=3,      type="Ground",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Tectonic Rage",  power=4,      type="Ground",  dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Stomping Tantrum",power=2,     type="Ground",  dice=6, STAB=true},
    {name="Thousand Waves", power=2,      type="Ground",  dice=6, STAB=true,    effects={{name="EscapePrevention", target="Enemy"}} },
    {name="Shore Up",       power=0,      type="Ground",  dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}} },
    {name="Scorching Sands", power=2,     type="Ground",  dice=6, STAB=true,    effects={{name="Burn", target="Enemy", chance=5}} },
    {name="Sandblast",      power=2,      type="Ground",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}}},
    {name="Earthquake (CO)", power=3,     type="Ground",  dice=6, STAB=true},

    -- Ice
    {name="Aurora Beam",    power=2,      type="Ice",     dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Avalanche",      power=2,      type="Ice",     dice=6, STAB=true,    effects={{name="Enraged", target="Self"}} },
    {name="Blizzard",       power=3,      type="Ice",     dice=6, STAB=true,    effects={{name="Freeze", target="Enemy", chance=6}} },
    {name="Freeze-Dry",     power=2,      type="Ice",     dice=6, STAB=true,    effects={{name="Freeze", target="Enemy", chance=6}} },
    {name="Glacial Lance",  power=3,      type="Ice",     dice=6, STAB=true},
    {name="Glaciate",       power=2,      type="Ice",     dice=6, STAB=true},
    {name="Hail",           power=0,      type="Ice",     dice=6, STAB=false,   effects={{name="Hail"}} },
    {name="Ice Beam",       power=2,      type="Ice",     dice=6, STAB=true,    effects={{name="Freeze", target="Enemy", chance=6}} },
    {name="Ice Fang",       power=2,      type="Ice",     dice=6, STAB=true,    effects={{name="IceFang", target="Enemy", chance=5}} },
    {name="Ice Hammer",     power=2,      type="Ice",     dice=6, STAB=true},
    {name="Ice Punch",      power=2,      type="Ice",     dice=6, STAB=true,    effects={{name="Freeze", target="Enemy", chance=6}} },
    {name="Ice Shard",      power=1,      type="Ice",     dice=6, STAB=true,    effects={{name="Priority", target="Self"}} },
    {name="Ice Spinner",    power=2,      type="Ice",     dice=6, STAB=true,    effects={{name="FieldClear"}} },
    {name="Icicle Crash",   power=2,      type="Ice",     dice=4, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Icicle Spear",   power=1,      type="Ice",     dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Icy Wind",       power=2,      type="Ice",     dice=6, STAB=true},
    {name="Mist",           power=0,      type="Ice",     dice=6, STAB=false,   effects={{name="Mist"}} },
    {name="Powder Snow",    power=1,      type="Ice",     dice=6, STAB=true,    effects={{name="Freeze", target="Enemy", chance=6}} },
    {name="Sheer Cold",     power=0,      type="Ice",     dice=6, STAB=false,   effects={{name="KO", target="Enemy", chance=5}} },
    {name="Weather Ball Ice",power=3,     type="Ice",     dice=6, STAB=true},
    {name="Resonance",      power=2,      type="Ice",     dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy"}} },
    {name="Subzero Slammer",power=4,      type="Ice",     dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Snowscape",      power=0,      type="Ice",     dice=6, STAB=false,   effects={{name="Hail"}} },
    {name="Frost Breath",   power=2,      type="Ice",     dice=8, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Triple Axel",    power=1,      type="Ice",     dice=4, STAB=true,    effects={{name="AddDice", target="Self"}} },
    {name="Haze",           power=0,      type="Ice",     dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Freezy Frost",   power=2,      type="Ice",     dice=8, STAB=true},
    {name="Mountain Gale",  power=2,      type="Ice",     dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },

    -- Normal
    {name="Attract",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Protection", target="Self", chance=4}} },
    {name="Barrage",        power=1,      type="Normal",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Body Slam",      power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Paralyze", target="Enemy", chance=5}} },
    {name="Bind",           power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Blood Moon",     power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Boomburst",      power=3,      type="Normal",  dice=6, STAB=true},
    {name="Camouflage",     power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Chip Away",      power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Priority", target="Self"}} },
    {name="Comet Punch",    power=1,      type="Normal",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Constrict",      power=1,      type="Normal",  dice=6, STAB=true},
    {name="Conversion",     power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Conversion2",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Covet",          power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Crush Claw",     power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Advantage", target="Self", chance=4}} },
    {name="Defense Curl",   power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Disadvantage", target="Enemy"}} },
    {name="Disable",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Dizzy Punch",    power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Confuse", target="Enemy", chance=5}} },
    {name="Double-Edge",    power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="KO", target="Self", chance=6}} },
    {name="Double Hit",     power=1,      type="Normal",  dice=4, STAB=true,    effects={{name="AddDice", target="Self"}} },
    {name="Double Slap",    power=1,      type="Normal",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Double Team",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Disadvantage", target="Enemy"}} },
    {name="Echoed Voice",   power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}}},
    {name="Egg Bomb",       power=2,      type="Normal",  dice=6, STAB=true},
    {name="Encore",         power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Explosion",      power=5,      type="Normal",  dice=6, STAB=true,    effects={{name="KO", target="Self"}} },
    {name="Extreme Speed",  power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Priority", target="Self"}} },
    {name="Facade",         power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Fake Out",       power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy"}} },
    {name="False Swipe",    power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Fillet Away",    power="Enemy",type="Normal",  dice=6, STAB=false },
    {name="Focus Energy",   power=0,      type="Normal",  dice=8, STAB=false },
    {name="Fury Attack",    power=1,      type="Normal",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Fury Swipes",    power=1,      type="Normal",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Giga Impact",    power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Glare",          power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Paralyze", target="Enemy"}} },
    {name="Growl",          power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Disadvantage", target="Enemy"}} },
    {name="Growth",         power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Guillotine",     power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="KO", target="Enemy", chance=5}} },
    {name="Harden",         power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Disadvantage", target="Enemy"}} },
    {name="Head Charge",    power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="KO", target="Self", chance=6}} },
    {name="Headbutt",       power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Heal Bell",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="StatusHeal", target="Self"}} },
    {name="Hidden Power",   power=2,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Horn Attack",    power=2,      type="Normal",  dice=6, STAB=true},
    {name="Horn Drill",     power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="KO", target="Enemy", chance=5}} },
    {name="Howl",           power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Advantage", target="Self"}} },
    {name="Hyper Beam",     power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Hyper Drill",    power=2,      type="Normal",  dice=6, STAB=true },
    {name="Hyper Fang",     power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Hyper Voice",    power=2,      type="Normal",  dice=6, STAB=true },
    {name="Judgement",      power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Leer",           power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Advantage", target="Self"}} },
    {name="Lovely Kiss",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Sleep", target="Enemy", chance=3}} },
    {name="Mean Look",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="EscapePrevention", target="Enemy"}} },
    {name="Me First",       power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Reversal", target="Self"}, {name="Advantage", target="Self"}} },
    {name="Mega Kick",      power=3,      type="Normal",  dice=6, STAB=true},
    {name="Mega Punch",     power=2,      type="Normal",  dice=6, STAB=true},
    {name="Metronome",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Mimic",          power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Minimize",       power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Disadvantage", target="Enemy"}} },
    {name="Multi-Attack",   power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Nature Power",   power=0,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Noble Roar",     power=0,      type="Normal",  dice=6, STAB=true,    effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Odor Sleuth",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Pay Day",        power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom", chance=6}} },
    {name="Perish Song",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Curse", target="Enemy"}} },
    {name="Play Nice",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Disadvantage", target="Enemy"}} },
    {name="Population Bomb", power=1,     type="Normal",  dice=6, STAB=true,    effects={{name="AddDice", target="Self", chance=2}}},
    {name="Pound",          power=1,      type="Normal",  dice=6, STAB=true},
    {name="Present",        power=2,      type="Normal",  dice=4, STAB=true,    effects={{name="AddDice2", target="Self", chance=3}} },
    {name="Protect",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Protection", target="Self"}} },
    {name="Quick Attack",   power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="Priority", target="Self"}} },
    {name="Rage",           power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="Enraged", target="Self"}} },
    {name="Relic Song",     power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Sleep", target="Enemy", chance=6}} },
    {name="Rapid Spin",     power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="FieldClear"}} },
    {name="Retaliate",      power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Revival Blessing",power=0,     type="Normal",  dice=6, STAB=false,   effects={{name="Revival", target="Self"}} },
    {name="Roar",           power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Switch", target="Enemy"}} },
    {name="Razor Wind",     power=2,      type="Normal",  dice=8, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Safeguard",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Safeguard", target="Self"}} },
    {name="Self-Destruct",  power=4,      type="Normal",  dice=6, STAB=true,    effects={{name="KO", target="Self"}} },
    {name="Scratch",        power=1,      type="Normal",  dice=6, STAB=true},
    {name="Screech",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Sharpen",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Advantage", target="Self"}} },
    {name="Shell Smash",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="DoubleAdvantage", target="Self"}, {name="StatDown", target="Self"}} },
    {name="Sing",           power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Sleep", target="Enemy", chance=4}} },
    {name="Sketch",         power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Skull Bash",     power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="Recharge", target="Self"}, {name="Enraged", target="Self"}} },
    {name="Slam",           power=2,      type="Normal",  dice=6, STAB=true},
    {name="Slash",          power=2,      type="Normal",  dice=8, STAB=true},
    {name="Smelling Salts", power=2,      type="Normal",  dice=6, STAB=false,   effects={{name="ConditionBoost", target="Enemy"}, {name="Custom"}} },
    {name="Smokescreen",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Disadvantage", target="Enemy"}} },
    {name="Sonic Boom",     power=2,      type="Normal",  dice=4, STAB=false,   effects={{name="Neutral", target="Self"}} },
    {name="Spike Cannon",   power=1,      type="Normal",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Spit Up",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Splash",         power=0,      type="Normal",  dice=6, STAB=false},
    {name="Stomp",          power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Stuff Cheeks",   power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Super Fang",     power="Enemy",type="Normal",  dice=6, STAB=false},
    {name="Supersonic",     power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Confuse", target="Enemy", chance=4}} },
    {name="Swagger",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Confuse", target="Enemy"}} },
    {name="Swift",          power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Swords Dance",   power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Tackle",         power=1,      type="Normal",  dice=6, STAB=true},
    {name="Tail Slap",      power=1,      type="Normal",  dice=4, STAB=false,   effects={{name="AddDice", target="Self", chance=4}} },
    {name="Tail Whip",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Advantage", target="Self"}} },
    {name="Take Down",      power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="KO", target="Self", chance=6}} },
    {name="Tearful Look",   power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Techno Blast",   power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="Confuse", target="Enemy"}} },
    {name="Tera Starstorm", power=4,      type="Normal",  dice=6, STAB=false,   effects={{name="Neutral", target="Self"}} },
    {name="Terrain Pulse",  power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Teeter Dance",   power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Confuse", target="Enemy"}} },
    {name="Thrash",         power=3,      type="Normal",  dice=6, STAB=true,    effects={{name="Confuse", target="Self", chance=5}} },
    {name="Transform",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Tri Attack",     power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom", chance=5}} },
    {name="Trump Card",     power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Uproar",         power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Vise Grip",      power=2,      type="Normal",  dice=6, STAB=true},
    {name="Whirlwind",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Switch", target="Enemy"}} },
    {name="Work Up",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="DoubleAdvantage", target="Self"}}},
    {name="Wrap",           power=1,      type="Normal",  dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Wring Out",      power="Enemy",type="Normal",  dice=6, STAB=false},
    {name="Yawn",           power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Captivate",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Rock Climb",     power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Confuse", target="Enemy", chance=5}} },
    {name="Strength",       power=2,      type="Normal",  dice=6, STAB=true},
    {name="Strike",         power=4,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Gold Rush",      power=3,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}, {name="Confuse", target="Enemy"} } },
    {name="Cuddle",         power=3,      type="Normal",  dice=6, STAB=false,   effects={{name="Safeguard", target="Self", chance=4}} },
    {name="Replenish",      power=3,      type="Normal",  dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Guard",          power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Protection", target="Self"}} },
    {name="Secret Power",   power=2,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Snore",          power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Breakneck Blitz", power=4,     type="Normal",  dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Extreme Evoboost", power=0,    type="Normal",  dice=6, STAB=true,    effects={{name="DoubleAdvantage", target="Self"}, {name="DoubleDisadvantage", target="Enemy"}} },
    {name="Pulverizing Pancake", power=5, type="Normal",  dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Soft-Boiled",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}} },
    {name="Recover",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}} },
    {name="Slack Off",      power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}} },
    {name="Milk Drink",     power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}} },
    {name="Morning Sun",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}} },
    {name="Tidy Up",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Advantage", target="Self"}, {name="FieldClear"}} },
    {name="Veevee Volley",  power=1,      type="Normal",  dice=6, STAB=true,    effects={{name="Advantage", target="Self"}}},
    {name="Raging Bull",    power=2,      type="Normal",  dice=6, STAB=true  },
    {name="Flail",          power="Self", type="Normal",  dice=6, STAB=false },
    {name="Copycat",        power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Reversal", target="Self"}} },
    {name="Acupressure",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Advantage", target="Self"}, {name="Disadvantage", target="Enemy"}} },
    {name="Tickle",         power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Advantage", target="Self"}, {name="Disadvantage", target="Enemy"}} },
    {name="Sweet Scent",    power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Advantage", target="Self"}} },
    {name="Crush Grip",     power="Enemy",type="Normal",  dice=6, STAB=false},
    {name="Pain Split",     power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Reversal", target="Self"}} },
    {name="Return",         power="Self", type="Normal",  dice=6, STAB=false },
    {name="Scary Face",     power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="Priority", target="Self"}} },
    {name="Belly Drum",     power=0,      type="Normal",  dice=6, STAB=false,   effects={{name="DoubleAdvantage", target="Self"}, {name="KO", target="Self", chance=5}}},
    {name="Endeavor",       power="Self", type="Normal",  dice=6, STAB=false },
    {name="Tera Blast",     power=3,      type="Normal",  dice=6, STAB=false},

    -- Poison
    {name="Acid",           power=1,      type="Poison",  dice=6, STAB=true,    effects={{name="Advantage", target="Self", chance=6}} },
    {name="Acid Armor",     power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Acid Spray",     power=1,      type="Poison",  dice=6, STAB=true,    effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Bane. Bunker",   power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="Protection", target="Self"},{name="Poison", target="Enemy", chance=4}} },
    {name="Clear Smog",     power=1,      type="Poison",  dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Cross Poison",   power=2,      type="Poison",  dice=8, STAB=true,    effects={{name="Poison", target="Enemy", chance=6}} },
    {name="Coil",           power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="Advantage", target="Self"},{name="Disadvantage", target="Enemy"}} },
    {name="Malignant Chain",power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=4}} },
    {name="Mortal Spin",    power=1,      type="Poison",  dice=6, STAB=true,    effects={{name="FieldClear"}, {name="Poison", target="Enemy"}} },
    {name="Noxious Torque", power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=5}} },
    {name="Poison Fang",    power=1,      type="Poison",  dice=8, STAB=true,    effects={{name="Poison", target="Enemy", chance=4}} },
    {name="Poison Gas",     power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="Poison", target="Enemy", chance=2}} },
    {name="Poison Jab",     power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=5}} },
    {name="Poison Powder",  power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="Poison", target="Enemy", chance=3}} },
    {name="Poison Sting",   power=1,      type="Poison",  dice=6, STAB=false,   effects={{name="Poison", target="Enemy", chance=5}} },
    {name="Poison Tail",    power=1,      type="Poison",  dice=8, STAB=true,    effects={{name="Poison", target="Enemy", chance=6}} },
    {name="Shell Side Arm", power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=6}} },
    {name="Smog",           power=1,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=5}} },
    {name="Sludge",         power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=5}} },
    {name="Sludge Bomb",    power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=5}} },
    {name="Sludge Wave",    power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=6}} },
    {name="Toxic",          power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="Poison", target="Enemy", chance=2}} },
    {name="Toxic Spikes",   power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="ToxicSpikes"}} },
    {name="Venom Drench",   power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Venoshock",      power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="ConditionBoost", target="Enemy"}} },
    {name="Ooze",           power=3,      type="Poison",  dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Acid Downpour",  power=4,      type="Poison",  dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Malador",        power=3,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy"}} },
    {name="Gunk Shot",      power=3,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=6}} },
    {name="Barb Barrage",   power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="Poison", target="Enemy", chance=5}, {name="ConditionBoost", target="Enemy"}} },
    {name="Purify",         power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}, {name="StatusHeal", target="Self"}} },
    {name="Toxic Thread",   power=0,      type="Poison",  dice=6, STAB=false,   effects={{name="Poison", target="Enemy"}, {name="Priority", target="Self"}} },
    {name="Dire Claw",      power=2,      type="Poison",  dice=6, STAB=true,    effects={{name="DireClaw", target="Enemy", chance=4}} },

    -- Psychic
    {name="Amnesia",        power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Barrier",        power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Calm Mind",      power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Advantage", target="Self"}, {name="Disadvantage", target="Enemy"}} },
    {name="Confusion",      power=1,      type="Psychic", dice=6, STAB=true,    effects={{name="Confuse", target="Enemy", chance=6}} },
    {name="Cosmic Power",   power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Dream Eater",    power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Sleep", target="Enemy", chance=4}, {name="LifeRecovery", target="Self", chance="Sleep"}} },
    {name="Eerie Spell",    power=2,      type="Psychic", dice=6, STAB=true     },
    {name="Esper Wing",     power=2,      type="Psychic", dice=8, STAB=true     },
    {name="Extrasensory",   power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Freezing Glare", power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Frozen", target="Enemy", chance=6}} },
    {name="Future Sight",   power=3,      type="Psychic", dice=6, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Healing Wish",   power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Custom"},{name="KO", target="Self"}} },
    {name="Heart Stamp",    power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Hyperspace Hole",power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Hypnosis",       power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Sleep", target="Enemy", chance=4}} },
    {name="Imprison",       power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Light Screen",   power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Lumina Crash",   power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Luster Purge",   power=3,      type="Psychic", dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=4}} },
    {name="Magic Coat",     power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Meditate",       power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Advantage", target="Self"}} },
    {name="Mirror Coat",    power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Reversal", target="Self"}} },
    {name="Mist Ball",      power=3,      type="Psychic", dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=4}} },
    {name="Photon Geyser",  power=3,      type="Psychic", dice=6, STAB=true     },
    {name="Prism. Laser",   power=3,      type="Psychic", dice=6, STAB=true     },
    {name="Psybeam",        power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Confuse", target="Enemy", chance=6}} },
    {name="Psyblade",       power=3,      type="Psychic", dice=6, STAB=true     },
    {name="Psywave",        power="Self", type="Psychic", dice=6, STAB=false    },
    {name="Psychic",        power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Advantage", target="Self", chance=6}} },
    {name="Psychic Fangs",  power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Psycho Boost",   power=3,      type="Psychic", dice=6, STAB=true,    effects={{name="StatDown", target="Self"}} },
    {name="Psycho Cut",     power=2,      type="Psychic", dice=8, STAB=true     },
    {name="Psyshield Bash", power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy"}}     },
    {name="Psyshock",       power=2,      type="Psychic", dice=6, STAB=true     },
    {name="Reflect",        power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Rev. Dance Psychic",power=2,   type="Psychic", dice=6, STAB=true},
    {name="Telekinesis",    power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Teleport",       power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Switch", target="Self"}} },
    {name="Twin Beam",      power=1,      type="Psychic", dice=4, STAB=true,    effects={{name="AddDice", target="Self"}} },
    {name="Zen Headbutt",   power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Psystrike",      power=2,      type="Psychic", dice=6, STAB=true},
    {name="Gravitas",       power=3,      type="Psychic", dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Mindstorm",      power=3,      type="Psychic", dice=6, STAB=true,    effects={{name="PsychicTerrain"}} },
    {name="Shattered Psyche", power=4,    type="Psychic", dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Genesis Supernova", power=4,   type="Psychic", dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Light That Burns The Sky", power=4, type="Psychic", dice=8, STAB=false, effects={{name="Recharge", target="Self"}} },
    {name="Magic Room",     power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="KnockOff", target="Enemy"}} },
    {name="Agility",        power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Priority", target="Self"}} },
    {name="Trick",          power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Psychic Terrain",power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="PsychicTerrain"}} },
    {name="Psycho Shift",   power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Custom"}} },
    {name="Take Heart",     power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}, {name="Disadvantage", target="Enemy"}, {name="Advantage", target="Self"}} },
    {name="Glitzy Glow",    power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy"}} },
    {name="Mystical Power", power=2,      type="Psychic", dice=6, STAB=true,    effects={{name="Advantage", target="Self"}} },
    {name="Lunar Blessing", power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Revival", target="Self"}, {name="StatusHeal", target="Self"}} },
    {name="Heal Pulse",     power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="Revival", target="Self"}} },
    {name="Rest",           power=0,      type="Psychic", dice=6, STAB=false,   effects={{name="LifeRecovery", target="Self"}, {name="Custom"}} },
    {name="Expanding Force",power=2,      type="Psychic", dice=6, STAB=true     },
    {name="Psychic Noise",  power=2,      type="Psychic", dice=6, STAB=true     },

    -- Rock
    {name="Accelerock",     power=1,      type="Rock",    dice=6, STAB=true,    effects={{name="Priority", target="Self"}} },
    {name="Ancient Power",  power=2,      type="Rock",    dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=6}, {name="Advantage", target="Self", chance=6}} },
    {name="Diamond Storm",  power=2,      type="Rock",    dice=6, STAB=true,    effects={{name="DoubleDisadvantage", target="Enemy", chance=4}} },
    {name="Head Smash",     power=3,      type="Rock",    dice=6, STAB=true,    effects={{name="KO", target="Self", chance=5}} },
    {name="Ivy Cudgel Rock",power=2,      type="Rock",    dice=8, STAB=true},
    {name="Mighty Cleave",  power=2,      type="Rock",    dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Power Gem",      power=2,      type="Rock",    dice=6, STAB=true},
    {name="Rock Polish",    power=0,      type="Rock",    dice=6, STAB=false,   effects={{name="Priority", target="Self"}} },
    {name="Rock Slide",     power=2,      type="Rock",    dice=6, STAB=true,    effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Rock Throw",     power=1,      type="Rock",    dice=6, STAB=true},
    {name="Rollout",        power=1,      type="Rock",    dice=6, STAB=true,    effects={{name="Custom"}} },
    {name="Rock Blast",     power=1,      type="Rock",    dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}}},
    {name="Rock Tomb",      power=2,      type="Rock",    dice=6, STAB=true},
    {name="Rock Wrecker",   power=3,      type="Rock",    dice=6, STAB=true,    effects={{name="KO", target="Self", chance=6}} },
    {name="Salt Cure",      power=1,      type="Rock",    dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}, {name="SaltCure", target="Self"}} },
    {name="Sandstorm",      power=0,      type="Rock",    dice=8, STAB=false,   effects={{name="Sandstorm"}} },
    {name="Stealth Rock",   power=0,      type="Rock",    dice=6, STAB=false,   effects={{name="StealthRock"}}},
    {name="Stone Axe",      power=2,      type="Rock",    dice=8, STAB=true,    effects={{name="StealthRock"}}},
    {name="Stone Edge",     power=2,      type="Rock",    dice=8, STAB=true},
    {name="Wide Guard",     power=0,      type="Rock",    dice=6, STAB=false,   effects={{name="Protection", target="Self" }} },
    {name="Volcalith",      power=3,      type="Rock",    dice=4, STAB=true,    effects={{name="AddDice", target="Self", chance=4}} },
    {name="Continental Crush", power=4,   type="Rock",    dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Splintered Stormshards", power=4, type="Rock", dice=6, STAB=false,   effects={{name="Recharge", target="Self"}} },
    {name="Meteor Beam",    power=3,      type="Rock",    dice=6, STAB=true,    effects={{name="Recharge", target="Self"}} },
    {name="Rock Throw (CO)", power=2,     type="Rock",    dice=6, STAB=true},
    
    -- Steel
    {name="Anchor Shot",    power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="EscapePrevention", target="Enemy"}} },
    {name="Autotomize",     power=0,      type="Steel",  dice=6, STAB=false,    effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Behemoth Bash",  power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Custom"}} },
    {name="Behemoth Blade", power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Custom"}} },
    {name="Doom Desire",    power=3,      type="Steel",  dice=6, STAB=true,     effects={{name="Recharge", target="Self"}} },
    {name="Dbl. Iron Bash", power=1,      type="Steel",  dice=4, STAB=true,     effects={{name="AddDice", target="Self"}, {name="Disadvantage", target="Enemy", chance=5}} },
    {name="Flash Cannon",   power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Advantage", target="Self", chance=6}} },
    {name="Gear Grind",     power=1,      type="Steel",  dice=4, STAB=true,     effects={{name="AddDice", target="Self"}} },
    {name="Gigaton Hammer", power=4,      type="Steel",  dice=4, STAB=true },
    {name="Gyro Ball",      power="Enemy", type="Steel", dice=6, STAB=false},
    {name="Heavy Slam",     power="Self", type="Steel",  dice=6, STAB=false},
    {name="Iron Defense",   power=0,      type="Steel",  dice=6, STAB=false,    effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Iron Head",      power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Iron Tail",      power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Advantage", target="Self", chance=5}} },
    {name="King's Shield",  power=0,      type="Steel",  dice=6, STAB=false,    effects={{name="Protection", target="Self"}, {name="Enraged", target="Self"}} },
    {name="Magnet Bomb",    power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Advantage", target="Self"}} },
    {name="Make It Rain",   power=3,      type="Steel",  dice=6, STAB=true,     effects={{name="StatDown", target="Self"}, {name="Custom"}} },
    {name="Metal Burst",    power=0,      type="Steel",  dice=6, STAB=false,    effects={{name="Reversal", target="Self"}} },
    {name="Metal Claw",     power=1,      type="Steel",  dice=6, STAB=true,     effects={{name="Advantage", target="Self", chance=6}} },
    {name="Metal Mash",     power=1,      type="Steel",  dice=6, STAB=true,     effects={{name="Advantage", target="Self", chance=6}} },
    {name="Metal Sound",    power=0,      type="Steel",  dice=6, STAB=false,    effects={{name="DoubleAdvantage", target="Self"}} },
    {name="Meteor Mash",    power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Advantage", target="Self", chance=6}} },
    {name="Mirror Shot",    power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Shift Gear",     power=0,      type="Steel",  dice=6, STAB=false,    effects={{name="Advantage", target="Self"}, {name="Priority", target="Self"}} },
    {name="Spin Out",       power=2,      type="Steel",  dice=6, STAB=true },
    {name="Steel Wing",     power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Sunsteel Strike",power=2,      type="Steel",  dice=6, STAB=true },
    {name="Smart Strike",   power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Advantage", target="Self"}} },
    {name="Tachyon Cutter", power=1,      type="Steel",  dice=4, STAB=true,     effects={{name="AddDice", target="Self"}} },
    {name="Steelspike",     power=3,      type="Steel",  dice=6, STAB=true,     effects={{name="Custom"}} },
    {name="Steelsurge",     power=3,      type="Steel",  dice=6, STAB=true,     effects={{name="Custom"}} },
    {name="Depletion",      power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="Custom"}} },
    {name="Corkscrew Crash", power=4,     type="Steel",  dice=6, STAB=false,    effects={{name="Recharge", target="Self"}} },
    {name="Searing Sunraze Smash", power=4, type="Steel", dice=6, STAB=false,   effects={{name="Recharge", target="Self"}, {name="Priority", target="Self"}} },
    {name="Meltdown",       power=3,      type="Steel",  dice=6, STAB=true,     effects={{name="Custom"}} },
    {name="Steel Roller",   power=0,      type="Steel",  dice=6, STAB=true,     effects={{name="Custom"}, {name="FieldClear"}} },
    {name="Bullet Punch",   power=1,      type="Steel",  dice=6, STAB=true,     effects={{name="Priority", target="Self"}} },
    {name="Hard Press",     power="Enemy", type="Steel", dice=6, STAB=false},
    {name="Shelter",        power=0,      type="Steel",  dice=6, STAB=false,    effects={{name="DoubleDisadvantage", target="Enemy"}} },
    {name="Steel Beam",     power=2,      type="Steel",  dice=6, STAB=true,     effects={{name="KO", target="Self", chance=5}} },

    -- Water
    {name="Aqua Jet",       power=1,      type="Water",  dice=6, STAB=true,     effects={{name="Priority", target="Self"}} },
    {name="Aqua Step",      power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Priority", target="Self"}} },
    {name="Aqua Tail",      power=2,      type="Water",  dice=6, STAB=true},
    {name="Brine",          power=2,      type="Water",  dice=6, STAB=true},
    {name="Bubble",         power=1,      type="Water",  dice=6, STAB=true},
    {name="Bubble Beam",    power=2,      type="Water",  dice=6, STAB=true},
    {name="Clamp",          power=1,      type="Water",  dice=4, STAB=true,     effects={{name="AddDice", target="Self", chance=4}} },
    {name="Crabhammer",     power=2,      type="Water",  dice=8, STAB=true},
    {name="Dive",           power=2,      type="Water",  dice=6, STAB=true},
    {name="Flip Turn",      power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Switch", target="Self"}}},
    {name="Hydro Pump",     power=3,      type="Water",  dice=6, STAB=true},
    {name="Ivy Cudgel Water",power=2,     type="Water",  dice=8, STAB=true},
    {name="Jet Punch",      power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Priority"}}},
    {name="Liquidation",    power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Advantage", target="Self", chance=5}} },
    {name="Muddy Water",    power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Disadvantage", target="Enemy", chance=5}} },
    {name="Octazooka",      power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Advantage", target="Enemy", chance=4}} },
    {name="Raging Bull Water",power=2,    type="Water",  dice=6, STAB=true},
    {name="Rain Dance",     power=0,      type="Water",  dice=6, STAB=false,    effects={{name="Rain"}} },
    {name="Razor Shell",    power=2,      type="Water",  dice=8, STAB=true},
    {name="Scald",          power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Burn", target="Enemy", chance=5}} },
    {name="Snipe Shot",     power=2,      type="Water",  dice=8, STAB=true},
    {name="Sparkling Aria", power=2,      type="Water",  dice=6, STAB=true,     effects={{name="StatusHeal", target="Self"}}},
    {name='Steam Eruption', power=3,      type="Water",  dice=6, STAB=true,     effects={{name="Burn", target="Enemy", chance=5}} },
    {name="Surf",           power=2,      type="Water",  dice=6, STAB=true},
    {name="Surging Strikes",power=2,      type="Water",  dice=4, STAB=true,     effects={{name="AddDice", target="Self"}}},
    {name="Triple Dive",    power=1,      type="Water",  dice=4, STAB=true,     effects={{name="AddDice", target="Self"}}},
    {name="Water Gun",      power=1,      type="Water",  dice=6, STAB=true},
    {name="Water Pulse",    power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Confuse", target="Enemy", chance=6}} },
    {name="Water Shuriken", power=1,      type="Water",  dice=4, STAB=true,     effects={{name="Priority", target="Self"},{name="AddDice", target="Self", chance=4}}},
    {name="Water Spout",    power=3,      type="Water",  dice=6, STAB=true,     effects={{name="StatDown", target="Self"}} },
    {name="Wave Crash",     power=3,      type="Water",  dice=6, STAB=true,     effects={{name="KO", target="Self", chance=6}} },
    {name="Waterfall",      power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Disadvantage", target="Enemy", chance=6}} },
    {name="Whirlpool",      power=1,      type="Water",  dice=6, STAB=true,     effects={{name="AddDice", target="Self", chance=4}} },
    {name="Withdraw",       power=0,      type="Water",  dice=6, STAB=false,    effects={{name="Disadvantage", target="Enemy"}} },
    {name="Weather Ball Water",power=2,   type="Water",  dice=6, STAB=true},
    {name="Origin Pulse",   power=3,      type="Water",  dice=6, STAB=true},
    {name="Cannonade",      power=2,      type="Water",  dice=4, STAB=true,     effects={{name="AddDice", target="Self", chance=4}} },
    {name="Foam Burst",     power=3,      type="Water",  dice=6, STAB=true,     effects={{name="Priority", target="Self"}} },
    {name="Hydro Snipe",    power=4,      type="Water",  dice=6, STAB=true},
    {name="Stonesurge",     power=3,      type="Water",  dice=6, STAB=true,     effects={{name="StealthRock"}} },
    {name="Rapid Flow",     power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Custom"}} },
    {name="Hydro Vortex",   power=4,      type="Water",  dice=6, STAB=false,    effects={{name="Recharge", target="Self"}} },
    {name="Oceanic Operetta", power=5,    type="Water",  dice=6, STAB=false,    effects={{name="Recharge", target="Self"}} },
    {name="Chilling Water", power=1,      type="Water",  dice=6, STAB=true,     effects={{name="Disadvantage", target="Enemy"}} },
    {name="Hydro Cannon",   power=3,      type="Water",  dice=6, STAB=true,     effects={{name="Recharge", target="Self"}} },
    {name="Aqua Ring",      power=0,      type="Water",  dice=6, STAB=false,    effects={{name="Renewal"}} },
    {name="Bouncy Bubble",  power=2,      type="Water",  dice=6, STAB=true,     effects={{name="LifeRecovery", target="Self"}} },
    {name="Life Dew",       power=0,      type="Water",  dice=6, STAB=false,    effects={{name="Renewal"}} },
    {name="Water Pledge",   power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Custom"}} },
    {name="Fishious Rend",  power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Advantage", target="Enemy", chance=4}} },
    {name="Hydro Steam",    power=2,      type="Water",  dice=6, STAB=true,     effects={{name="Custom"}} },
}

rivalData =
{
  -- Gen 1 Gary
  { 
    region = KANTO_REGION,
    trainerName = "Gary",
    pokemonData = {
      {
        guid = "2aab56",
        tier = PINK,
        pokemon = {
          { name="Pidgey", level=1, types={ "Flying", "Normal" }, moves={ "Gust", "Tackle", "Sand Attack" }, model_GUID="e042f9" },
          { name="Squirtle", level=2, types={ "Water" }, moves={ "Water Gun", "Rapid Spin", "Bite" }, model_GUID="a96b7f" } }
      },
      {
        guid = "b16705",
        tier = GREEN,
        pokemon = {
          { name="Eevee", level=2, types={ "Normal" }, moves={ "Take Down", "Baby-Doll Eyes", "Bite" }, model_GUID="b37bcd" },
          { name="Growlithe", level=3, types={ "Fire" }, moves={ "Ember", "Agility", "Bite" }, model_GUID="b8f54f" } }
      },
      {
        guid = "d0ce66",
        tier = BLUE,
        pokemon = {
          { name="Nidorino", level=3, types={ "Poison" }, moves={ "Poison Jab", "Double Kick", "Horn Attack" }, model_GUID="ebed42" },
          { name="Wartortle", level=4, types={ "Water" }, moves={ "Aqua Tail", "Shell Smash", "Protect" }, model_GUID="99fd39" } }
      },
      {
        guid = "5ad1aa",
        tier = YELLOW,
        pokemon = {
          { name="Umbreon", level=4, types={ "Dark" }, moves={ "Snarl", "Shadow Ball", "Alluring Voice" }, model_GUID="33d105" },
          { name="Arcanine", level=5, types={ "Fire" }, moves={ "Flame Wheel", "Extreme Speed", "Reversal" }, model_GUID="d89ae7", custom_scale=0.7 } }
      },
      {
        guid = "f52f2e",
        tier = RED,
        pokemon = {
          { name="Nidoking", level=5, types={ "Poison", "Ground" }, moves={ "Sludge", "Earthquake", "Megahorn" }, model_GUID="b038db" },
          { name="Blastoise", level=6, types={ "Water" }, moves={ "Hydro Pump", "Ice Beam", "Iron Defense" }, model_GUID="54ea11" } }
      },
    }
  },
  -- Gen 2 Silver
  {
    region = JOHTO_REGION,
    trainerName = "Silver",
    pokemonData = {
      {
        guid = "7358e9",
        tier = PINK,
        pokemon = {
          { name="Zubat", level=1, types={ "Poison", "Flying" }, moves={ "Absorb", "Supersonic", "Gust" }, model_GUID="6ce120", spawn_effect="Physical Attack" },
          { name="Totodile", level=2, types={ "Water" }, moves={ "Water Gun", "Scratch", "Bite" }, model_GUID="252f4b" },  }
      },
      {
        guid = "4362d9",
        tier = GREEN,
        pokemon = {
          { name="Sneasel", level=2, types={ "Dark", "Ice" }, moves={ "Ice Shard", "Fury Swipes", "Metal Claw" }, model_GUID="b0f068" },
          { name="Golbat", level=3, types={ "Poison", "Flying" }, moves={ "Air Slash", "Bite", "Poison Fang" }, model_GUID="9b980c" } }
      },
      {
        guid = "17492b",
        tier = BLUE,
        pokemon = {
          { name="Haunter", level=3, types={ "Ghost", "Poison" }, moves={ "Shadow Punch", "Curse", "Payback" }, model_GUID="13b866" },
          { name="Croconaw", level=4, types={ "Water" }, moves={ "Aqua Tail", "Crunch", "Thrash" }, model_GUID="4015b5" } }
      },
      {
        guid = "a0723e",
        tier = YELLOW,
        pokemon = {
          { name="Crobat", level=4, types={ "Poison", "Flying" }, moves={ "Wing Attack", "Cross Poison", "Leech Life" }, model_GUID="40d4cd" },
          { name="Feraligatr", level=5, types={ "Water" }, moves={ "Waterfall", "Ice Fang", "Slash" }, model_GUID="e93ead", spawn_effect="Status Attack", custom_scale=0.8, offset={x=0,y=0,z=-0.1} } }
      },
      {
        guid = "6a3ea1",
        tier = RED,
        pokemon = {
          { name="Alakazam", level=5, types={ "Psychic" }, moves={ "Psychic", "Tri Attack", "Focus Blast" }, model_GUID="c3804e" },
          { name="Gengar", level=6, types={ "Ghost", "Poison" }, moves={ "Hex", "Sludge Bomb", "Dark Pulse" }, model_GUID="4638bc" } }
      }
    }
  },  
  -- Gen 3 May
  {
    region = HOENN_REGION,
    trainerName = "May",
    pokemonData = {
      {
        guid = "c814e9",
        tier = PINK,
        pokemon = {
          { name="Skitty", level=1, types={ "Normal" }, moves={ "Fake Out", "Sing", "Payback" }, model_GUID="701147" },
          { name="Torchic", level=2, types={ "Fire" }, moves={ "Ember", "Scratch", "Sand Attack" }, model_GUID="215780", spawn_effect="Physical Attack" } }
      },
      {
        guid = "989c33",
        tier = GREEN,
        pokemon = {
          { name="Eevee", level=2, types={ "Normal" }, moves={ "Quick Attack", "Baby-Doll Eyes", "Bite" }, model_GUID="b37bcd" },
          { name="Beautifly", level=3, types={ "Bug", "Flying" }, moves={ "Bug Bite", "Gust", "Mega Drain" } , model_GUID="96fd4b" } }
      },
      {
        guid = "ccc700",
        tier = BLUE,
        pokemon = {
          { name="Wailmer", level=3, types={ "Water" }, moves={ "Water Pulse", "Rollout", "Bounce" }, model_GUID="b372d4", custom_scale=0.7 },
          { name="Combusken", level=4, types={ "Fire", "Fighting" }, moves={ "Flame Charge", "Double Kick", "Slash" }, model_GUID="87fbb3", spawn_effect="Physical Attack" } }
      },
      {
        guid = "f064fd",
        tier = YELLOW,
        pokemon = {
          { name="Ludicolo", level=4, types={ "Water", "Grass" }, moves={ "Energy Ball", "Bubble Beam", "Nature Power" }, model_GUID="bb247f" },
          { name="Tropius", level=5, types={ "Grass", "Flying" }, moves={ "Magical Leaf", "Air Slash", "Stomp" }, model_GUID="bdb162" } }
      },
      {
        guid = "d874b5",
        tier = RED,
        pokemon = {
          { name="Venusaur", level=5, types={ "Grass", "Poison" }, moves={ "Razor Leaf", "Double-Edge", "Sludge Bomb" }, model_GUID="452ac8", spawn_effect="Physical Attack", custom_scale=0.6, offset={x=0,y=0,z=-0.1} },
          { name="Blaziken", level=6, types={ "Fire", "Fighting" }, moves={ "Blaze Kick", "Detect", "Aerial Ace" }, model_GUID="868292", spawn_effect="Status Attack" } }
      }
    }
  },
  -- Gen 4 Barry
  {
    region = SINNOH_REGION,
    trainerName = "Barry",
    pokemonData = {
      {
        guid = "e844fb",
        tier = PINK,
        pokemon = {
          { name="Starly", level=1, types={ "Flying", "Normal" }, moves={ "Quick Attack", "Whirlwind", "Thief" }, model_GUID="befb97" },
          { name="Piplup", level=2, types={ "Water" }, moves={ "Water Gun", "Peck", "Pound" }, model_GUID="c9b643" } }
      },
      {
        guid = "076ca2",
        tier = GREEN,
        pokemon = {
          { name="Ponyta", level=2, types={ "Fire" }, moves={ "Flame Charge", "Stomp", "Agility" }, model_GUID="a1a9ce" },
          { name="Roselia", level=3, types={ "Grass", "Poison" }, moves={ "Mega Drain", "Toxic Spikes", "Grass Whistle" }, model_GUID="6b1bd7" } }
      },
      {
        guid = "a20fe4",
        tier = BLUE,
        pokemon = {
          { name="Heracross", level=3, types={ "Bug", "Fighting" }, moves={ "Arm Thrust", "Pin Missile", "Aerial Ace" }, model_GUID="11f35c" },
          { name="Prinplup", level=4, types={ "Water" }, moves={ "Bubble Beam", "Grass Knot", "Charm" }, model_GUID="7931f6" } }
      },
      {
        guid = "d6a506",
        tier = YELLOW,
        pokemon = {
          { name="Rapidash", level=4, types={ "Fire" }, moves={ "Flame Wheel", "Megahorn", "Poison Jab" }, model_GUID="20403e" },
          { name="Roserade", level=5, types={ "Grass", "Poison" }, moves={ "Venoshock", "Giga Drain", "Grassy Terrain" }, model_GUID="62a471", spawn_effect="Physical Attack" } }
      },
      {
        guid = "19067f",
        tier = RED,
        pokemon = {
          { name="Staraptor", level=5, types={ "Flying", "Normal" }, moves={ "Aerial Ace", "Close Combat", "Steel Wing" }, model_GUID="88b32f" },
          { name="Empoleon", level=6, types={ "Water", "Steel" }, moves={ "Hydro Pump", "Drill Peck", "Metal Claw" }, model_GUID="85b6c8", spawn_effect="Status Attack" } }
      }
    }
  },
  -- Gen 5 Bianca
  {
    region = UNOVA_REGION,
    trainerName = "Bianca",
    pokemonData = {
      {
        guid = "06f7a7",
        tier = PINK,
        pokemon = {
          { name="Lillipup", level=1, types={ "Normal" }, moves={ "Tackle", "Baby-Doll Eyes", "Roar" }, model_GUID="a3d331" },
          { name="Tepig", level=2, types={ "Fire" }, moves={ "Ember", "Tackle", "Smog" }, model_GUID="f8a647" } }
        },
      {
        guid = "1cccf2",
        tier = GREEN,
        pokemon = {
          { name="Musharna", level=2, types={ "Psychic" }, moves={ "Psybeam", "Moonlight", "Hypnosis" }, model_GUID="f742b2" },
          { name="Simisage", level=3, types={ "Grass" }, moves={ "Vine Whip", "Lick", "Bite" }, model_GUID="962b36" } }
      },
      {
        guid = "aa327a",
        tier = BLUE,
        pokemon = {
          { name="Minccino", level=3, types={ "Normal" }, moves={ "Slam", "Sing", "Charm" }, model_GUID="dccefe", spawn_effect="Physical Attack" },
          { name="Pignite", level=4, types={ "Fire", "Fighting" }, moves={ "Arm Thrust", "Rollout", "Flame Charge" }, model_GUID="1142b7" } }
      },
      {
        guid = "ca5c32",
        tier = YELLOW,
        pokemon = {
          { name="Escavalier", level=4, types={ "Bug", "Steel" }, moves={ "X-Scissor", "Iron Head", "Acid Spray" }, model_GUID="e4c099" },
          { name="Stoutland", level=5, types={ "Normal" }, moves={ "Retaliate", "Play Rough", "Reversal" }, model_GUID="eff43c", custom_scale=0.8 } }
      },
      {
        guid = "e9dd86",
        tier = RED,
        pokemon = {
          { name="Mienshao", level=5, types={ "Fighting" }, moves={ "Force Palm", "Wide Guard", "Bounce" }, model_GUID="afd151" },
          { name="Emboar", level=6, types={ "Fire", "Fighting" }, moves={ "Flare Blitz", "Head Smash", "Return" }, model_GUID="83bed3" } }
      }
    }
  },
  -- Gen 6 Serena
  {
    region = KALOS_REGION,
    trainerName = "Serena",
    pokemonData = {
      {
        guid = "ee60ff",
        tier = PINK,
        pokemon = {
          { name="Fletchling", level=1, types={ "Flying", "Normal" }, moves={ "Peck", "Growl", "Ember" }, model_GUID="1a27c7" },
          { name="Fennekin", level=2, types={ "Fire" }, moves={ "Ember", "Howl", "Will-O-Wisp" }, model_GUID="95501e", spawn_effect="Status Attack" } }
      },
      {
        guid = "fce167",
        tier = GREEN,
        pokemon = {
          { name="Espurr", level=2, types={ "Psychic" }, moves={ "Confusion", "Fake Out", "Covet" }, model_GUID="11f232" },
          { name="Pancham", level=3, types={ "Fighting" }, moves={ "Arm Thrust", "Ice Punch", "Dark Pulse" }, model_GUID="0c4abd" } }
      },
      {
        guid = "be14ed",
        tier = BLUE,
        pokemon = {
          { name="Meowstic (M)", level=3, types={ "Psychic" }, moves={ "Psybeam", "Disarming Voice", "Shadow Ball" }, model_GUID="c2df10" },
          { name="Braixen", level=4, types={ "Fire" }, moves={ "Psyshock", "Fire Spin", "Sunny Day" }, model_GUID="61a7d9" } }
      },
      {
        guid = "e141b4",
        tier = YELLOW,
        pokemon = {
          { name="Absol", level=4, types={ "Dark" }, moves={ "Slash", "Bite", "Detect" }, model_GUID="4f2184" },
          { name="Sylveon", level=5, types={ "Fairy" }, moves={ "Moonblast", "Swift", "Copycat" }, model_GUID="381a03" } }
      },
      {
        guid = "93edc7",
        tier = RED,
        pokemon = {
          { name="Altaria", level=5, types={ "Dragon", "Flying" }, moves={ "Dragon Pulse", "Dazzling Gleam", "Pluck" }, model_GUID="9a2210" },
          { name="Delphox", level=6, types={ "Fire", "Psychic" }, moves={ "Mystical Fire", "Psychic", "Shadow Ball" }, model_GUID="8879bd" } }
      }
    }
  },  
  -- Gen 7 Hau
  {
    region = ALOLA_REGION,
    trainerName = "Hau",
    pokemonData = {
      {
        guid = "9c35c9",
        tier = PINK,
        pokemon = {
          { name="Pichu", level=1, types={ "Electric" }, moves={ "Nuzzle", "Play Nice", "Charm" }, model_GUID="a3f444", spawn_effect="Physical Attack" },
          { name="Rowlet", level=2, types={ "Grass", "Flying" }, moves={ "Leafage", "Tackle", "Peck" }, model_GUID="494cbe" } }
      },
      {
        guid = "07312c",
        tier = GREEN,
        pokemon = {
          { name="Eevee", level=2, types={ "Normal" }, moves={ "Copycat", "Bite", "Baby-Doll Eyes" }, model_GUID="b37bcd" },
          { name="Pikachu", level=3, types={ "Electric" }, moves={ "Electro Ball", "Quick Attack", "Light Screen" }, model_GUID="813555", spawn_effect="Status Attack" } }
      },
      {
        guid = "1d3e0a",
        tier = BLUE,
        pokemon = {
          { name="Komala", level=3, types={ "Normal" }, moves={ "Earthquake", "Wood Hammer", "Shadow Claw" }, model_GUID="c45c5f", spawn_effect="Physical Attack" },
          { name="Dartrix", level=4, types={ "Grass", "Flying" }, moves={ "Razor Leaf", "Sucker Punch", "Feather Dance" }, model_GUID="7a6739" } }
      },
      {
        guid = "4db737",
        tier = YELLOW,
        pokemon = {
          { name="Alolan Raichu", level=4, types={ "Electric", "Psychic" }, moves={ "Spark", "Psychic", "Iron Tail" }, model_GUID="ac9e94", spawn_effect="Physical Attack" },
          { name="Vaporeon", level=5, types={ "Water" }, moves={ "Water Pulse", "Aurora Beam", "Acid Armor" }, model_GUID="b8e8a6" } }
      },
      {
        guid = "da5675",
        tier = RED,
        pokemon = {
          { name="Noivern", level=5, types={ "Dragon" }, moves={ "Dragon Pulse", "Air Slash", "Dark Pulse" }, model_GUID="212e94", spawn_effect="Status Attack" },
          { name="Decidueye", level=6, types={ "Grass", "Ghost" }, moves={ "Leaf Blade", "Spirit Shackle", "Pluck" }, model_GUID="d35cbf", spawn_effect="Status Attack" } }
      }
    }
  },
  -- Gen 8 Hop
  {
    region = GALAR_REGION,
    trainerName = "Hop",
    pokemonData = {
      {
        guid = "9ac62e",
        tier = PINK,
        pokemon = {
          { name="Rookidee", level=1, types={ "Flying" }, moves={ "Peck", "Fury Attack", "Taunt" }, model_GUID="581f48" },
          { name="Scorbunny", level=2, types={ "Fire" }, moves={ "Ember", "Tackle", "Agility" }, model_GUID="003ce3" } }
      },
      {
        guid = "7ec1fe",
        tier = GREEN,
        pokemon = {
          { name="Wooloo", level=2, types={ "Normal" }, moves={ "Tackle", "Double Kick", "Copycat" }, model_GUID="d2c51c" },
          { name="Cramorant", level=3, types={ "Flying", "Water" }, moves={ "Dive", "Fury Attack", "Peck" }, model_GUID="2b1b24" } }
      },
      {
        guid = "cd3781",
        tier = BLUE,
        pokemon = {
          { name="Corvisquire", level=3, types={ "Flying" }, moves={ "Drill Peck", "Hone Claws", "Fury Attack" }, model_GUID="b1809c" },
          { name="Raboot", level=4, types={ "Fire" }, moves={ "Flame Charge", "Headbutt", "Bounce" }, model_GUID="e1dd29" } }
      },
      {
        guid = "e9b2e1",
        tier = YELLOW,
        pokemon = {
          { name="Dubwool", level=4, types={ "Normal" }, moves={ "Headbutt", "Cotton Guard", "Reversal" }, model_GUID="d79f30" },
          { name="Snorlax", level=5, types={ "Normal" }, moves={ "Body Slam", "Heavy Slam", "Crunch" }, model_GUID="829f1b", spawn_effect="Physical Attack", custom_scale=0.8 } }
      },
      {
        guid = "0d8eff",
        tier = RED,
        pokemon = {
          { name="Corviknight", level=5, types={ "Flying", "Steel" }, moves={ "Brave Bird", "Steel Wing", "Swift" }, model_GUID="1515e6" },
          { name="Cinderace", level=6, types={ "Fire" }, moves={ "Pyro Ball", "Counter", "Gunk Shot" }, model_GUID="edbb96" } }
      },
    }
  },
  -- Gen 9 Nemona
  {
    region = PALDEA_REGION,
    trainerName = "Nemona",
    pokemonData = {
      {
        guid = "2793df",
        tier = PINK,
        pokemon = {
          { name="Pawmi", level=1, types={ "Electric" }, moves={ "Nuzzle", "Quick Attack", "Dig" }, model_GUID="61a3c8" },
          { name="Sprigatito", level=2, types={ "Grass" }, moves={ "Leafage", "Scratch", "Bite" }, model_GUID="01cef1"  } }
      },
      {
        guid = "a1dea7",
        tier = GREEN,
        pokemon = {
          { name="Rockruff", level=2, types={ "Rock" }, moves={ "Rock Throw", "Howl", "Bite" }, model_GUID="aaf680" },
          { name="Goomy", level=3, types={ "Dragon" }, moves={ "Water Pulse", "Flail", "Absorb" }, model_GUID="07df6f" } } --TODO: I think this is probably supposed to be a regional variant of Goomy but we do not have it *shrug*
      },
      {
        guid = "1cd459",
        tier = BLUE,
        pokemon = {
          { name="Pawmo", level=3, types={ "Electric", "Fighting" }, moves={ "Spark", "Arm Thrust", "Bite" }, model_GUID="ec93e5" },
          { name="Floragato", level=4, types={ "Grass" }, moves={ "Magical Leaf", "Play Rough", "Hone Claws" }, model_GUID="0f93b8" } }
      },
      {
        guid = "df0be9",
        tier = YELLOW,
        pokemon = {
          { name="Midday Lycanroc", level=4, types={ "Rock"}, moves={ "Accelerock", "Bite", "Drill Run" }, model_GUID="226b04" },
          { name="Goodra", level=5, types={ "Dragon" }, moves={ "Muddy Water", "Dragon Breath", "Ice Beam" }, model_GUID="35c5e9", spawn_effect="Status Attack" } }
      },
      {
        guid = "7af948",
        tier = RED,
        pokemon = {
          { name="Pawmot", level=5, types={ "Electric", "Fighting" }, moves={ "Discharge", "Close Combat", "Ice Punch" }, model_GUID="ebfa36" },
          { name="Meowscarada", level=6, types={ "Grass", "Dark" }, moves={ "Flower Trick", "Knock Off", "Slash" }, model_GUID="92bcf7" } }
      }
    }
  },
  -- Orange Islands Tracey
  {
    region = ORANGE_ISLANDS_REGION,
    trainerName = "Tracey",
    pokemonData = {
      {
        guid = "b8d5bc",
        tier = PINK,
        pokemon = {
          { name="Azurill", level=1, types={ "Normal", "Fairy" }, moves={ "Bubble Beam", "Tail Whip", "Charm" }, model_GUID="3c11df" },
          { name="Venonat", level=2, types={ "Bug", "Poison" }, moves={ "Confusion", "Tackle", "Sleep Powder" }, model_GUID="dd0526"  } }
      },
      {
        guid = "67c686",
        tier = GREEN,
        pokemon = {
          { name="Venonat", level=2, types={ "Bug", "Poison" }, moves={ "Psybeam", "Stun Spore", "Poison Fang" }, model_GUID="dd0526" },
          { name="Marill", level=3, types={ "Water", "Fairy" }, moves={ "Bubble Beam", "Bulldoze", "Ice Beam" }, model_GUID="c97a48"  } }
      },
      {
        guid = "904cf0",
        tier = BLUE,
        pokemon = {
          { name="Venomoth", level=3, types={ "Bug", "Poison" }, moves={ "Air Slash", "Bug Buzz", "Psychic" }, model_GUID="530c83" },
          { name="Marill", level=4, types={ "Water", "Fairy" }, moves={ "Bubble Beam", "Bulldoze", "Ice Beam" }, model_GUID="c97a48"  } }
      },
      {
        guid = "6a51e9",
        tier = YELLOW,
        pokemon = {
          { name="Dodrio", level=4, types={ "Flying", "Normal" }, moves={ "Drill Peck", "Tri Attack", "Knock Off" }, model_GUID="299ecd" },
          { name="Marill", level=5, types={ "Water", "Fairy" }, moves={ "Aqua Tail", "Blizzard", "Bounce" }, model_GUID="c97a48"  } }
      },
      {
        guid = "d11ddd",
        tier = RED,
        pokemon = {
          { name="Scyther", level=5, types={ "Bug", "Flying" }, moves={ "Air Slash", "Fury Cutter", "Brick Break" }, model_GUID="a98dea" },
          { name="Marill", level=6, types={ "Water", "Fairy" }, moves={ "Hydro Pump", "Play Rough", "Superpower" }, model_GUID="c97a48"  } }
      }
    },
  },
  --Ransei Hero
  {
    region = RANSEI_REGION,
    trainerName = "Hero",
    pokemonData = {
      {
        guid = "191af8",
        tier = PINK,
        pokemon = {
          { name="Eevee", level=1, types={ "Normal" }, moves={ "Bite", "Tackle", "Sand Attack" }, model_GUID="b37bcd" },
          { name="Bidoof", level=2, types={ "Normal" }, moves={ "Rollout", "Tackle", "Tackle" }, model_GUID="9cf4d2", spawn_effect="Physical Attack"  } }
      },
      {
        guid = "d19a2b",
        tier = GREEN,
        pokemon = {
          { name="Vaporeon", level=2, types={ "Water" }, moves={ "Water Gun", "Baby-Doll Eyes", "Aurora Beam" }, model_GUID="b8e8a6" },
          { name="Jolteon", level=3, types={ "Electric" }, moves={ "Thunder Shock", "Pin Missile", "Double Kick" }, model_GUID="c86032"  } }
      },
      {
        guid = "2c2d9f",
        tier = BLUE,
        pokemon = {
          { name="Flareon", level=3, types={ "Fire" }, moves={ "Lava Plume", "Bite", "Dig" }, model_GUID="323c42" },
          { name="Espeon", level=4, types={ "Psychic" }, moves={ "Psybeam", "Covet", "Power Gem" }, model_GUID="c8a52c"  } }
      },
      {
        guid = "ad9aa8",
        tier = YELLOW,
        pokemon = {
          { name="Umbreon", level=4, types={ "Dark" }, moves={ "Dark Pulse", "Swift", "Psychic" }, model_GUID="33d105" },
          { name="Leafeon", level=5, types={ "Grass" }, moves={ "Razor Leaf", "Copycat", "Aerial Ace" }, model_GUID="9f14e6"  } }
      },
      {
        guid = "a77018",
        tier = RED,
        pokemon = {
          { name="Glaceon", level=5, types={ "Ice" }, moves={ "Freeze-Dry", "Shadow Ball", "Water Pulse" }, model_GUID="8884ba" },
          { name="Arceus", level=6, types={ "Normal" }, moves={ "Extreme Speed", "Seismic Toss", "Earth Power" }, model_GUID="bf4818", custom_scale=0.65 } }
      }
    },
  },
  --Hisui Rei and Akari
  {
    region = HISUI_REGION,
    trainerName = "Rei and Akari",
    pokemonData = {
      {
        guid = "2ead0b",
        tier = PINK,
        pokemon = {
          { name="Mime Jr", level=1, types={ "Psychic", "Fairy" }, moves={ "Confusion", "Iron Defense", "Hypnosis" }, model_GUID="c86aff", spawn_effect="Physical Attack" },
          { name="Pikachu", level=2, types={ "Electric" }, moves={ "Quick Attack", "Thunder Shock", "Iron Tail" }, model_GUID="813555", spawn_effect="Status Attack" } }
      },
      {
        guid = "d5ae82",
        tier = GREEN,
        pokemon = {
          { name="Mr. Mime", level=2, types={ "Psychic", "Fairy" }, moves={ "Calm Mind", "Drain Punch", "Hypnosis" }, model_GUID="b25a93" },
          { name="Staravia", level=3, types={ "Flying", "Normal" }, moves={ "Quick Attack", "Roost", "Ominous Wind" }, model_GUID="2ea0b8", spawn_effect="Physical Attack" } }
      },
      {
        guid = "e0448e",
        tier = BLUE,
        pokemon = {
          { name="Prinplup", level=3, types={ "Water" }, moves={ "Baby-Doll Eyes", "Liquidation", "Ice Beam" }, model_GUID="7931f6" },
          { name="Monferno", level=4, types={ "Fire", "Fighting" }, moves={ "Flame Wheel", "Nasty Plot", "Thunder Punch" }, model_GUID="c2e9c2", spawn_effect="Physical Attack" } }
      },
      {
        guid = "dfe820",
        tier = YELLOW,
        pokemon = {
          { name="Clefairy", level=4, types={ "Fairy" }, moves={ "Psychic", "Moonblast", "Shadow Ball" }, model_GUID="782a2e" },
          { name="Pikachu", level=5, types={ "Electric" }, moves={ "Volt Tackle", "Play Rough", "Iron Tail" }, model_GUID="813555", spawn_effect="Status Attack" } }
      },
      {
        guid = "a660b4",
        tier = RED,
        pokemon = {
          { name="Empoleon", level=5, types={ "Water", "Steel" }, moves={ "Flash Cannon", "Hydro Pump", "Ice Beam" }, model_GUID="85b6c8", spawn_effect="Status Attack" },
          { name="Infernape", level=6, types={ "Fire", "Fighting" }, moves={ "Raging Fury", "Mach Punch", "Thunder Punch" }, model_GUID="b04364", offset={x=0, y=0, z=0.1}, custom_scale=0.85 } }
      }
    },
  }
}

gymData =
{
  -- GenI Team Rocket
  {
    guid = "0f87c4",
    trainerName = "Team Rocket",
    gen = 1,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Weezing", level=5,  types={ "Poison" }, moves={ "Smokescreen", "Self-Destruct", "Sludge" }, model_GUID="921e94" },
      { name="Arbok",   level=6,  types={ "Poison" }, moves={ "Screech", "Bite", "Acid" }, model_GUID="0df3c1" } 
    }
  },
  -- GenII Team Rocket
  {
    guid = "81131f",
    trainerName = "Team Rocket",
    gen = 2,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Kangaskhan", level=5, types={ "Normal" },           moves={ "Reversal", "Rage", "Thief" }, model_GUID="98bc9e", custom_scale=0.7 },
      { name="Nidoqueen",  level=6, types={ "Poison", "Ground" }, moves={ "Poison Fang", "Earthquake", "Bite" }, model_GUID="c91f41" }
    }
  },
  -- GenIII Team Rocket
  {
    guid = "d91038",
    trainerName = "Team Rocket",
    gen = 3,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Camerupt",   level=5, types={ "Fire", "Ground" },     moves={ "Fissure", "Lave Plume", "Rock Slide" }, model_GUID="f266b1", spawn_effect="Physical Attack", custom_scale=0.6, offset={x=0, y=0, z=-0.1} },
      { name="Sharpedo",   level=6, types={ "Water", "Dark" },      moves={ "Slash", "Aqua Jet", "Crunch" }, model_GUID="129bd7", spawn_effect="Physical Attack" }
    }
  },
  -- GenIV Team Rocket
  {
    guid = "25a357",
    trainerName = "Team Galactic",
    gen = 4,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Crobat",     level=5, types={ "Poison", "Flying" },   moves={ "Poison Fang", "Air Cutter", "Bite" }, model_GUID="40d4cd" },
      { name="Honchkrow",  level=6, types={ "Dark", "Flying" },     moves={ "Night Shade", "Drill Peck", "Feint Attack" }, model_GUID="67c739" }
    }
  },
  -- GenV Team Rocket
  {
    guid = "c6bb6e",
    trainerName = "Team Plasma",
    gen = 5,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Zoroark",    level=5, types={ "Dark" },               moves={ "Incinerate", "Aerial Ace", "Night Daze" }, model_GUID="fb10d4" },
      { name="Hydreigon",  level=6, types={ "Dark", "Dragon" },     moves={ "Tri Attack", "Assurance", "Dragon Breath" }, model_GUID="2621b5", spawn_effect="Status Attack" }
    }
  },
  -- GenVI Team Rocket
  {
    guid = "edb9ad",
    trainerName = "Team Flare",
    gen = 6,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Liepard",    level=5, types={ "Dark" },               moves={ "Shadow Claw", "Assurance", "Play Rough" }, model_GUID="0d58f0", custom_scale=0.8 },
      { name="Pyroar (M)", level=6, types={ "Fire", "Normal" },     moves={ "Hyper Beam", "Crunch", "Flamethrower" }, model_GUID="4b1422", custom_scale=0.85 }
    }
  },
  -- GenVII Team Rocket
  {
    guid = "85a301",
    trainerName = "Team Skull/Aether Foundation",
    gen = 7,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Golisopod",  level=5, types={ "Bug", "Water" },       moves={ "Sucker Punch", "Razor Shell", "First Impression" }, model_GUID="f4e89c" },
      { name="Bewear",     level=6, types={ "Normal", "Fighting" }, moves={ "Pain Split", "Zen Headbutt", "Drain Punch" }, model_GUID="7d4606", spawn_effect="Status Attack" }
    }
  },
  -- GenVIII Team Rocket
  {
    guid = "a5c540",
    trainerName = "Team Yell",
    gen = 8,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Linoone",    level=5, types={ "Dark", "Normal" },     moves={ "Night Slash", "Headbutt", "Pin Missile" }, model_GUID="af2407" },
      { name="Thievul",    level=6, types={ "Dark" },               moves={ "Thief", "Play Rough", "Shadow Claw" }, model_GUID="fdee2d" }
    }
  },
  -- GenIX Team Rocket
  {
    guid = "5bf887",
    trainerName = "Team Star",
    gen = 9,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Dachsbun",   level=5, types={ "Fairy" }, moves={ "Crunch", "Mud-Slap", "Play Rough" }, model_GUID="041d71" },
      { name="Revavroom",  level=6, types={ "Steel", "Poison" }, teraType="Fairy", teraActive=true, moves={ "Spin Out", "Smog", "Magical Torque" }, model_GUID="0c035d" }
    }
  },
  {
    guid = "d32942",
    trainerName = "Team Star",
    gen = 9,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Torkoal",    level=5, types={ "Fire" }, moves={ "Body Press", "Clear Smog", "Flame Wheel" }, model_GUID="ad6f78", spawn_effect="Physical Attack" },
      { name="Revavroom",  level=6, types={ "Steel", "Poison" }, teraType="Fire", teraActive=true, moves={ "Swift", "Shift Gear", "Blazing Torque" }, model_GUID="0c035d" }
    }
  },
  {
    guid = "7e5fa6",
    trainerName = "Team Star",
    gen = 9,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Pawniard",   level=5, types={ "Dark", "Steel" }, moves={ "Aerial Ace", "Metal Claw", "Stone Edge" }, model_GUID="4aa17e" },
      { name="Revavroom",  level=6, types={ "Steel", "Poison" }, teraType="Dark", teraActive=true, moves={ "Swift", "Metal Sound", "Wicked Torque" }, model_GUID="0c035d" }
    }
  },
  {
    guid = "148183",
    trainerName = "Team Star",
    gen = 9,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Annihilape", level=5, types={ "Fighting", "Ghost" }, moves={ "Rage Fist", "Fire Punch", "Ice Punch" }, model_GUID="8f89b1" },
      { name="Revavroom",  level=6, types={ "Steel", "Poison" }, teraType="Fighting", teraActive=true, moves={ "Spin Out", "High Horsepower", "Combat Torque" }, model_GUID="0c035d" }
    }
  },
  {
    guid = "908116",
    trainerName = "Team Star",
    gen = 9,
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Skuntank",   level=5, types={ "Poison", "Dark" }, moves={ "Sucker Punch", "Venoshock", "Fury Swipes" }, model_GUID="142926" },
      { name="Revavroom",  level=6, types={ "Steel", "Poison" }, teraType="Poison", teraActive=true, moves={ "Spin Out", "Flame Charge", "Noxious Torque" }, model_GUID="0c035d" }
    }
  },
  -- Ransei Team Rocket.
  {
    guid = "05f753",
    trainerName = "Ninja Team",
    gen = 10,       -- Signifies Ransei.
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Spiritomb",  level=5, types={ "Ghost", "Dark" },    moves={ "Shadow Sneak", "Dark Pulse", "Dream Eater" }, model_GUID="0a6f0d" },
      { name="Weavile",    level=6, types={ "Dark", "Ice" },  moves={ "Night Slash", "Ice Shard", "Slash" }, model_GUID="ded7dd", spawn_effect="Physical Attack" }
    }
  },
  -- Hisui Team Rocket.
  {
    guid = "e845b1",
    trainerName = "The Miss Fortunes",
    gen = 11,       -- Signifies Hisui.
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Rhydon",     level=5, types={ "Ground", "Rock" },   moves={ "Stealth Rock", "Bulldoze", "Rock Slide" }, model_GUID="2c20b7", custom_scale=0.8 },
      { name="Gengar",     level=6, types={ "Ghost", "Poison" },  moves={ "Hypnosis", "Hex", "Venoshock" }, model_GUID="4638bc" }
    }
  },
  {
    guid = "e2cd5b",
    trainerName = "The Miss Fortunes",
    gen = 11,       -- Signifies Hisui.
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Abomasnow",  level=5, types={ "Grass", "Ice" }, moves={ "Ingrain", "Ice Shard", "Energy Ball" }, model_GUID="c003e7", custom_scale=0.8 },
      { name="Toxicroak",  level=6, types={ "Poison", "Fighting" },  moves={ "Poison Jab", "Rock Smash", "Mud Bomb" }, model_GUID="8604f0" }
    }
  },
  -- Orange Islands Team Rocket
  {
    guid = "d83040",
    trainerName = "Team Rocket",
    gen = 12,       -- Signifies Orange Islands.
    gymTier = 11,   -- Signifies Team Rocket
    pokemon = {
      { name="Raticate",   level=5, types={ "Normal" },             moves={ "Super Fang", "Dig", "Bite" }, model_GUID="2539f9" },
      { name="Drowzee",    level=6, types={ "Psychic" },            moves={ "Metronome", "Mega Punch", "Psychic" }, model_GUID="2ceecd" }
    }
  },

  -- Gen I
  -- Gym Leaders
  {
    guid = "5ad999",
    trainerName = "Brock",
    gen = 1,
    gymTier = 1,
    pokemon = {
      { name="Geodude", level=2, types={ "Rock", "Ground" }, moves={ "Defense Curl", "Tackle", "Rock Throw" }, model_GUID="df4771", spawn_effect="Physical Attack" },
      { name="Onix",    level=2, types={ "Rock", "Ground" }, moves={ "Screech", "Bind", "Rock Throw" }, model_GUID="f5b6ad", custom_scale=0.7, offset={x=0,y=0,z=0.2} } }
  },
  {
    guid = "7e7d23",
    trainerName = "Misty",
    gen = 1,
    gymTier = 2,
    pokemon = {
      { name="Staryu",  level=3, types={ "Water" }, moves={ "Recover", "Confuse Ray", "Water Gun" }, model_GUID="792e94", spawn_effect="Physical Attack" },
      { name="Starmie", level=3, types={ "Water", "Psychic" }, moves={ "Psywave", "Rapid Spin", "Water Pulse" }, model_GUID="1072a5" } }
  },
  {
    guid = "e87599",
    trainerName = "Lt. Surge",
    gen = 1,
    gymTier = 3,
    pokemon = {
      { name="Voltorb", level=3, types={ "Electric" }, moves={ "Screech", "Sonic Boom", "Shock Wave" }, model_GUID="37bc9d", spawn_effect="Physical Attack" },
      { name="Raichu",  level=4, types={ "Electric" }, moves={ "Quick Attack", "Mega Kick", "Shock Wave" }, model_GUID="ce46d3" } }
  },
  {
    guid = "e251b8",
    trainerName = "Erika",
    gen = 1,
    gymTier = 4,
    pokemon = {
      { name="Tangela",   level=4, types={ "Grass" },           moves={ "Wring Out", "Ingrain", "Vine Whip" }, model_GUID="9ff5ec" },
      { name="Vileplume", level=4, types={ "Grass", "Poison" }, moves={ "Acid", "Sleep Powder", "Petal Dance" }, model_GUID="588b3f" } }
  },
  {
    guid = "10246c",
    trainerName = "Koga",
    gen = 1,
    gymTier = 5,
    pokemon = {
      { name="Weezing", level=5, types={ "Poison" }, moves={ "Toxic", "Self-Destruct", "Sludge" }, model_GUID="921e94" },
      { name="Muk",     level=6, types={ "Poison" }, moves={ "Protect", "Moonblast", "Venoshock" }, model_GUID="813b8b", custom_scale=0.5 } }
  },
  {
    guid = "26c22d",
    trainerName = "Sabrina",
    gen = 1,
    gymTier = 6,
    pokemon = {
      { name="Mr. Mime", level=5, types={ "Psychic", "Fairy" }, moves={ "Barrier", "Psybeam", "Dazzling Gleam" }, model_GUID="b25a93" },
      { name="Alakazam", level=6, types={ "Psychic" }, moves={ "Reflect", "Psybeam", "Night Shade" }, model_GUID="c3804e" } }
  },
  {
    guid = "cca8ed",
    trainerName = "Blaine",
    gen = 1,
    gymTier = 7,
    pokemon = {
      { name="Rapidash", level=7, types={ "Fire" }, moves={ "Bounce", "Smart Strike", "Inferno" }, model_GUID="20403e", custom_scale=0.7 },
      { name="Arcanine", level=7, types={ "Fire" }, moves={ "Outrage", "Crunch", "Flare Blitz" }, model_GUID="d89ae7", custom_scale=0.7 } }
  },
  {
    guid = "7cda88",
    trainerName = "Giovanni",
    gen = 1,
    gymTier = 8,
    pokemon = {
      { name="Dugtrio",  level=8, types={ "Ground" }, moves={ "Sucker Punch", "Slash", "Dig" }, model_GUID="b4d340", custom_scale=0.8 },
      { name="Nidoking", level=8, types={ "Poison", "Ground" }, moves={ "Megahorn", "Poison Jab", "Earth Power" }, model_GUID="b038db" } }
  },

  -- Elite Four + Champion
  {
    guid = "bd572f",
    trainerName = "Lorelei",
    gen = 1,
    gymTier = 9,
    pokemon = {
      { name="Cloyster", level=9, types={ "Water", "Ice" }, moves={ "Protect", "Hydro Pump", "Aurora Beam" }, model_GUID="73e384" },
      { name="Lapras",   level=10, types={ "Water", "Ice" }, moves={ "Thunder", "Hydro Pump", "Blizzard" }, model_GUID="ae0d8f", custom_scale=0.8, offset={x=0, y=0.2, z=-0.1} } }
  },
  {
    guid = "ec4724",
    trainerName = "Bruno",
    gen = 1,
    gymTier = 9,
    pokemon = {
      { name="Hitmonlee", level=9, types={ "Fighting" }, moves={ "Blaze Kick", "Rolling Kick", "High Jump Kick" }, model_GUID="d821ab", spawn_effect="Physical Attack" },
      { name="Machamp",   level=10, types={ "Fighting" }, moves={ "Cross Chop", "Wide Guard", "Submission" }, model_GUID="94b0de", spawn_effect="Physical Attack" } }
  },
  {
    guid = "0a1c4c",
    trainerName = "Agatha",
    gen = 1,
    gymTier = 9,
    pokemon = {
      { name="Arbok",  level=9, types={ "Poison" }, moves={ "Thunder Fang", "Poison Jab", "Crunch" }, model_GUID="0df3c1" },
      { name="Gengar", level=10, types={ "Ghost", "Poison" },  moves={ "Dream Eater", "Venoshock", "Shadow Ball" }, model_GUID="4638bc" } }
  },
  {
    guid = "9e7552",
    trainerName = "Lance",
    gen = 1,
    gymTier = 9,
    pokemon = {
      { name="Gyarados",  level=9, types={ "Water", "Flying" },  moves={ "Flail", "Dragon Rage", "Hydro Pump" }, model_GUID="bb17bd", custom_scale=0.75 },
      { name="Dragonite", level=10, types={ "Dragon", "Flying" }, moves={ "Blizzard", "Outrage", "Fire Blast" }, model_GUID="fa47e5" } }
  },

  {
    guid = "5686a8",
    trainerName = "Gary",
    gen = 1,
    gymTier = 10,
    pokemon = {
      { name="Arcanine", level=10,  types={ "Fire" }, moves={ "Fire Fang", "Iron Tail", "Thunder Fang" }, model_GUID="d89ae7", custom_scale=0.7 },
      { name="Venusaur", level=11,  types={ "Grass", "Poison" }, moves={ "Venoshock", "Razor Leaf", "Solar Beam" }, model_GUID="452ac8", spawn_effect="Physical Attack", custom_scale=0.6 } }
  },
  {
    guid = "f0b286",
    trainerName = "Gary",
    gen = 1,
    gymTier = 10,
    pokemon = {
      { name="Pidgeot",   level=10,  types={ "Flying", "Normal" }, moves={ "Mirror Move", "Steel Wing", "Sky Attack" }, model_GUID="831415" },
      { name="Blastoise", level=11, types={ "Water" },             moves={ "Flash Cannon", "Blizzard", "Hydro Pump" }, model_GUID="54ea11" } }
  },
  {
    guid = "874b94",
    trainerName = "Gary",
    gen = 1,
    gymTier = 10,
    pokemon = {
      { name="Alakazam",  level=10,  types={ "Psychic" },       moves={ "Focus Blast", "Shadow Ball", "Future Sight" }, model_GUID="c3804e"  },
      { name="Charizard", level=11, types={ "Fire", "Flying" }, moves={ "Slash", "Fire Blast", "Aerial Ace" }, model_GUID="27261b", spawn_effect="Status Attack" } }
  },

  -- Gen II
  -- Gym Leaders
  {
    guid = "d9713f",
    trainerName = "Falkner",
    gen = 2,
    gymTier = 1,
    pokemon = {
      { name="Pidgey",    level=2, types={ "Flying", "Normal" }, moves={ "Sand Attack", "Tackle", "Peck" }, model_GUID="e042f9" },
      { name="Pidgeotto", level=2, types={ "Flying", "Normal" }, moves={ "Mud-Slap", "Tackle", "Gust" }, model_GUID="47d87b", spawn_effect="Physical Attack" } }
  },
  {
    guid = "78fe04",
    trainerName = "Bugsy",
    gen = 2,
    gymTier = 2,
    pokemon = {
      { name="Kakuna",  level=3, types={ "Bug", "Poison" }, moves={ "String Shot", "Harden", "Poison Sting" }, model_GUID="b46efe" },
      { name="Scyther", level=3, types={ "Bug", "Flying" }, moves={ "Fury Cutter", "Quick Attack", "Wing Attack" }, model_GUID="a98dea" } }
  },
  {
    guid = "932ee1",
    trainerName = "Whitney",
    gen = 2,
    gymTier = 3,
    pokemon = {
      { name="Clefairy", level=3, types={ "Fairy" },  moves={ "Mimic", "Metronome", "Moonblast" }, model_GUID="782a2e" },
      { name="Miltank",  level=4, types={ "Normal" }, moves={ "Rollout", "Stomp", "Play Rough" }, model_GUID="cd7e0e", spawn_effect="Physical Attack" } }
  },
  {
    guid = "6c22b9",
    trainerName = "Morty",
    gen = 2,
    gymTier = 4,
    pokemon = {
      { name="Haunter", level=4, types={ "Ghost", "Poison" }, moves={ "Mimic", "Hypnosis", "Night Shade" }, model_GUID="13b866" },
      { name="Gengar",  level=4, types={ "Ghost", "Poison" }, moves={ "Sucker Punch", "Dream Eater", "Shadow Ball" }, model_GUID="4638bc" } }
  },
  {
    guid = "1297c5",
    trainerName = "Chuck",
    gen = 2,
    gymTier = 5,
    pokemon = {
      { name="Primeape",  level=5, types={ "Fighting" },          moves={ "Earthquake", "Rock Slide", "Karate Chop" }, model_GUID="2b471e", spawn_effect="Physical Attack" },
      { name="Poliwrath", level=6, types={ "Water", "Fighting" }, moves={ "Hypnosis", "Surf", "Dynamic Punch" }, model_GUID="24f90c", custom_scale=0.8 } }
  },
  {
    guid = "9d44d1",
    trainerName = "Jasmine",
    gen = 2,
    gymTier = 6,
    pokemon = {
      { name="Magnemite", level=5, types={ "Electric", "Steel" }, moves={ "Thunder Wave", "Swift", "Thunderbolt" }, model_GUID="947e98" },
      { name="Steelix",   level=6, types={ "Steel", "Ground" },   moves={ "Earthquake", "Fire Fang", "Iron Tail" }, model_GUID="a4d334", custom_scale=0.7 } }
  },
  {
    guid = "a713db",
    trainerName = "Pryce",
    gen = 2,
    gymTier = 7,
    pokemon = {
      { name="Dewgong",   level=7, types={ "Water", "Ice" },  moves={ "Safeguard", "Dive", "Aurora Beam" }, model_GUID="6fa3a7", spawn_effect="Physical Attack" },
      { name="Piloswine", level=7, types={ "Ice", "Ground" }, moves={ "Mud Bomb", "Ice Fang", "Rock Slide" }, model_GUID="3aabb9" } }
  },
  {
    guid = "9846bd",
    trainerName = "Clair",
    gen = 2,
    gymTier = 8,
    pokemon = {
      { name="Dragonair", level=8, types={ "Dragon" },          moves={ "Aqua Tail", "Fire Blast", "Dragon Breath" }, model_GUID="a88377" },
      { name="Kingdra",   level=8, types={ "Water", "Dragon" }, moves={ "Waterfall", "Ice Beam", "Dragon Pulse" }, model_GUID="fd04bb" } }
  },

  -- Elite Four + Champion
  {
    guid = "746880",
    trainerName = "Will",
    gen = 2,
    gymTier = 9,
    pokemon = {
      { name="Jynx", level=9, types={ "Ice", "Psychic" },    moves={ "Lovely Kiss", "Ice Punch", "Psychic" }, model_GUID="43c517", custom_scale=0.9 },
      { name="Xatu", level=10, types={ "Psychic", "Flying" }, moves={ "Ominous Wind", "Aerial Ace", "Psychic" }, model_GUID="a72b40" } }
  },
  {
    guid = "9447fd",
    trainerName = "Koga",
    gen = 2,
    gymTier = 9,
    pokemon = {
      { name="Forretress", level=9, types={ "Bug", "Steel" },     moves={ "Spikes", "Gyro Ball", "Protect" }, model_GUID="6fe49a" },
      { name="Crobat",     level=10, types={ "Poison", "Flying" }, moves={ "Cross Poison", "Bite", "Wing Attack" }, model_GUID="40d4cd" } }
  },
  {
    guid = "d99872",
    trainerName = "Bruno",
    gen = 2,
    gymTier = 9,
    pokemon = {
      { name="Hitmontop", level=9, types={ "Fighting" }, moves={ "Triple Kick", "Gyro Ball", "Triple Axel" }, model_GUID="f2168b", spawn_effect="Physical Attack" },
      { name="Machamp",   level=10, types={ "Fighting" }, moves={ "Stone Edge", "Vital Throw", "Earthquake" }, model_GUID="94b0de", spawn_effect="Physical Attack" } }
  },
  {
    guid = "d55f10",
    trainerName = "Karen",
    gen = 2,
    gymTier = 9,
    pokemon = {
      { name="Umbreon",  level=9,  types={ "Dark" },         moves={ "Psychic", "Shadow Ball", "Feint Attack" }, model_GUID="33d105" },
      { name="Houndoom", level=10, types={ "Dark", "Fire" }, moves={ "Incinerate", "Sludge Bomb", "Foul Play" }, model_GUID="875a93" } }
  },

  {
    guid = "6601cb",
    trainerName = "Red",
    gen = 2,
    gymTier = 10,
    pokemon = {
      { name="Pikachu", level=10,  types={ "Electric" }, moves={ "Iron Tail", "Brick Break", "Volt Tackle" }, model_GUID="813555", spawn_effect="Status Attack" },
      { name="Snorlax", level=11, types={ "Normal" },   moves={ "Counter", "Blizzard", "Giga Impact" }, model_GUID="829f1b", spawn_effect="Physical Attack", custom_scale=0.8 } }
  },
  {
    guid = "4cddc6",
    trainerName = "Lance",
    gen = 2,
    gymTier = 10,
    pokemon = {
      { name="Charizard",  level=10, types={ "Fire", "Flying" }, moves={ "Shadow Claw", "Air Slash", "Fire Fang" }, model_GUID="27261b", spawn_effect="Status Attack" },
      { name="Aerodactyl", level=11, types={ "Rock", "Flying" }, moves={ "Thunder Fang", "Aerial Ace", "Ancient Power" }, model_GUID="ba21f7" } }
  },
  {
    guid = "6178d5",
    trainerName = "Lance",
    gen = 2,
    gymTier = 10,
    pokemon = {
      { name="Gyarados",  level=10,  types={ "Water", "Flying" }, moves={ "Ice Fang", "Waterfall", "Dragon Rage" }, model_GUID="bb17bd", custom_scale=0.75 },
      { name="Dragonite", level=11, types={ "Dragon", "Flying" }, moves={ "Dragon Breath", "Blizzard", "Thunder" }, model_GUID="fa47e5" } }
  },

  -- Gen III
  -- Gym Leaders
  {
    guid = "a12ffa",
    trainerName = "Roxanne",
    gen = 3,
    gymTier = 1,
    pokemon = {
      { name="Geodude",  level=2, types={ "Rock", "Ground" }, moves={ "Defense Curl", "Tackle", "Magnitude" }, model_GUID="df4771", spawn_effect="Physical Attack" },
      { name="Nosepass", level=2, types={ "Rock" }, moves={ "Protect", "Thunder Wave", "Rock Throw" }, model_GUID="ef03a1" } }
  },
  {
    guid = "300c55",
    trainerName = "Brawly",
    gen = 3,
    gymTier = 2,
    pokemon = {
      { name="Meditite",   level=3, types={ "Fighting", "Psychic" }, moves={ "Bulk Up", "Reflect", "Acupressure" }, model_GUID="da149f" },
      { name="Makuhita", level=3, types={ "Fighting" }, moves={ "Sand Attack", "Arm Thrust", "Knock Off" }, model_GUID="b12e69" } }
  },
  {
    guid = "fc6195",
    trainerName = "Wattson",
    gen = 3,
    gymTier = 3,
    pokemon = {
      { name="Voltorb",   level=3, types={ "Electric" }, moves={ "Rollout", "Spark", "Self-Destruct" }, model_GUID="37bc9d", spawn_effect="Physical Attack" },
      { name="Manectric", level=4, types={ "Electric" }, moves={ "Quick Attack", "Shock Wave", "Bite" }, model_GUID="27ca2d", custom_scale=0.9 } }
  },
  {
    guid = "7fab48",
    trainerName = "Flannery",
    gen = 3,
    gymTier = 4,
    pokemon = {
      { name="Slugma",  level=4, types={ "Fire" }, moves={ "Light Screen", "Rock Slide", "Flamethrower" }, model_GUID="964d48" },
      { name="Torkoal", level=4, types={ "Fire" }, moves={ "Protect", "Earthquake", "Overheat" }, model_GUID="ad6f78", spawn_effect="Physical Attack", custom_scale=1.3 } }
  },
  {
    guid = "1e64be",
    trainerName = "Norman",
    gen = 3,
    gymTier = 5,
    pokemon = {
      { name="Spinda", level=5, types={ "Normal" }, moves={ "Teeter Dance", "Psybeam", "Facade" }, model_GUID="e3708f" },
      { name="Slaking",  level=6, types={ "Normal" }, moves={ "Feint Attack", "Counter", "Facade" }, model_GUID="66bcca" } }
  },
  {
    guid = "7fd11d",
    trainerName = "Winona",
    gen = 3,
    gymTier = 6,
    pokemon = {
      { name="Pelipper", level=5, types={ "Water", "Flying" },  moves={ "Protect", "Water Pulse", "Aerial Ace" }, model_GUID="dff0ed" },
      { name="Altaria",  level=6, types={ "Dragon", "Flying" }, moves={ "Earthquake", "Dragon Breath", "Aerial Ace" }, model_GUID="9a2210" } }
  },
  {
    guid = "f07fbc",
    trainerName = "Tate & Liza",
    gen = 3,
    gymTier = 7,
    pokemon = {
      { name="Lunatone", level=7, types={ "Rock", "Psychic" }, moves={ "Psychic", "Signal Beam", "Hypnosis" }, model_GUID="de6094" },
      { name="Solrock",  level=7, types={ "Rock", "Psychic" }, moves={ "Psychic", "Rock Slide", "Solar Beam" }, model_GUID="12e752" } }
  },
  {
    guid = "02fd5e",
    trainerName = "Wallace",
    gen = 3,
    gymTier = 8,
    pokemon = {
      { name="Whiscash", level=8, types={ "Water", "Ground" }, moves={ "Amnesia", "Earthquake", "Water Pulse" }, model_GUID="08dca8" },
      { name="Milotic",  level=8, types={ "Water" }, moves={ "Dragon Tail", "Blizzard", "Water Pulse" },  model_GUID="ab980b", spawn_effect="Physical Attack", offset={x=0, y=1.0, z=0} } }
  },

  -- Elite Four
  {
    guid = "c20862",
    trainerName = "Phoebe",
    gen = 3,
    gymTier = 9,
    pokemon = {
      { name="Sableye",  level=9, types={ "Dark", "Ghost" },  moves={ "Psychic", "Shadow Ball", "Feint Attack" }, model_GUID="184d06", spawn_effect="Physical Attack"  },
      { name="Dusclops", level=10, types={ "Ghost" }, moves={ "Future Sight", "Shadow Ball", "Ice Beam" }, model_GUID="24a945" } }
  },
  {
    guid = "e7052f",
    trainerName = "Drake",
    gen = 3,
    gymTier = 9,
    pokemon = {
      { name="Flygon",    level=9, types={ "Ground", "Dragon" }, moves={ "Flamethrower", "Dig", "Dragon Breath" }, model_GUID="c8d0b6" },
      { name="Salamence", level=10, types={ "Dragon", "Flying" }, moves={ "Fly", "Thunder Fang", "Dragon Rush" }, model_GUID="32c729" } }
  },
  {
    guid = "0d0d9f",
    trainerName = "Glacia",
    gen = 3,
    gymTier = 9,
    pokemon = {
      { name="Glalie",  level=9, types={ "Ice" }, moves={ "Hail", "Protect", "Freeze-Dry" }, model_GUID="95fc87" },
      { name="Walrein", level=10, types={ "Ice", "Water" }, moves={ "Sheer Cold", "Surf", "Blizzard" }, model_GUID="74dec1", custom_scale=0.75 } }
  },
  {
    guid = "1d1aa1",
    trainerName = "Sidney",
    gen = 3,
    gymTier = 9,
    pokemon = {
      { name="Sharpedo", level=9, types={ "Water", "Dark" }, moves={ "Slash", "Surf", "Crunch" }, model_GUID="129bd7", spawn_effect="Physical Attack" },
      { name="Absol",    level=10, types={ "Dark" },  moves={ "Psycho Cut", "Aerial Ace", "Night Slash" }, model_GUID="4f2184" } }
  },
  -- Champion
  {
    guid = "857b59",
    trainerName = "Steven",
    gen = 3,
    gymTier = 10,
    pokemon = {
      { name="Claydol", level=10,  types={ "Ground", "Psychic" }, moves={ "Earthquake", "Ancient Power", "Extrasensory" }, model_GUID="af6fb3", spawn_effect="Physical Attack" },
      { name="Aggron",  level=11, types={ "Steel", "Rock" },  moves={ "Solar Beam", "Stone Edge", "Iron Tail" }, model_GUID="ce1109", custom_scale=0.8 } }
  },
  {
    guid = "9b5e32",
    trainerName = "Steven",
    gen = 3,
    gymTier = 10,
    pokemon = {
      { name="Skarmory", level=10,  types={ "Steel", "Flying" }, moves={ "Spikes", "Aerial Ace", "Steel Wing" }, model_GUID="790101", spawn_effect="Physical Attack" },
      { name="Armaldo",  level=11, types={ "Rock", "Bug" },  moves={ "Slash", "X-Scissor", "Ancient Power" }, model_GUID="812ce0" } }
  },
  {
    guid = "f7b21f",
    trainerName = "Steven",
    gen = 3,
    gymTier = 10,
    pokemon = {
      { name="Cradily",   level=10,  types={ "Rock", "Grass" },  moves={ "Sandstorm", "Giga Drain", "Ancient Power" }, model_GUID="a8c907" },
      { name="Metagross", level=11, types={ "Steel", "Psychic" }, moves={ "Zen Headbutt", "Meteor Mash", "Earthquake" }, model_GUID="69d7a3", spawn_effect="Status Attack", custom_scale=0.5 } }
  },

  -- Gen IV
  -- Gym Leaders
  {
    guid = "837e35",
    trainerName = "Roark",
    gen = 4,
    gymTier = 1,
    pokemon = {
      { name="Onix",     level=2, types={ "Rock", "Ground" }, moves={ "Screech", "Stealth Rock", "Rock Throw" }, model_GUID="f5b6ad", custom_scale=0.7, offset={x=0,y=0,z=0.2} },
      { name="Cranidos", level=2, types={ "Rock" }, moves={ "Bulldoze", "Rock Smash", "Headbutt" }, model_GUID="c3204c", spawn_effect="Physical Attack" } }
  },
  {
    guid = "e2826d",
    trainerName = "Gardenia",
    gen = 4,
    gymTier = 2,
    pokemon = {
      { name="Cherubi",  level=3, types={ "Grass" }, moves={ "Safeguard", "Dazzling Gleam", "Grass Knot" }, model_GUID="a6957e" },
      { name="Roserade", level=3, types={ "Grass", "Poison" }, moves={ "Shadow Ball", "Poison Sting", "Magical Leaf" }, model_GUID="62a471", spawn_effect="Physical Attack" } }
  },
  {
    guid = "5b3c49",
    trainerName = "Maylene",
    gen = 4,
    gymTier = 3,
    pokemon = {
      { name="Meditite", level=3, types={ "Fighting", "Psychic" }, moves={ "Detect", "Confusion", "Drain Punch" }, model_GUID="da149f" },
      { name="Lucario",  level=4, types={ "Fighting", "Steel" }, moves={ "Metal Claw", "Bone Rush", "Force Palm" }, model_GUID="6f7542" } }
  },
  {
    guid = "2c12d2",
    trainerName = "Crasher Wake",
    gen=4,
    gymTier = 4,
    pokemon = {
      { name="Quagsire", level=4, types={ "Water", "Ground" }, moves={ "Rock Tomb", "Mud Bomb", "Water Pulse" }, model_GUID="59c07d", custom_scale=0.9 },
      { name="Floatzel", level=4, types={ "Water" }, moves={ "Swift", "Ice Fang", "Aqua Jet" }, model_GUID="136547" } }
  },
  {
    guid = "a6e3cb",
    trainerName = "Fantina",
    gen=4,
    gymTier = 5,
    pokemon = {
      { name="Drifblim", level=5, types={ "Ghost", "Flying" }, moves={ "Will-O-Wisp", "Ominous Wind", "Silver Wind" }, model_GUID="6fb952", spawn_effect="Physical Attack" },
      { name="Mismagius", level=6, types={ "Ghost" }, moves={ "Magical Leaf", "Shadow Ball", "Psybeam" }, model_GUID="a81efd", spawn_effect="Physical Attack" } }
  },
  {
    guid = "25c52f",
    trainerName = "Byron",
    gen=4,
    gymTier = 6,
    pokemon = {
      { name="Bronzor",   level=5, types={ "Steel", "Psychic" }, moves={ "Flash Cannon", "Hypnosis", "Extrasensory" }, model_GUID="f3570a", spawn_effect="Physical Attack" },
      { name="Bastiodon", level=6, types={ "Rock", "Steel" },  moves={ "Thunderbolt", "Stone Edge", "Metal Burst" }, model_GUID="9d8d6d", custom_scale=0.7 } }
  },
  {
    guid = "3069f3",
    trainerName = "Candice",
    gen=4,
    gymTier = 7,
    pokemon = {
      { name="Abomasnow", level=7, types={ "Grass", "Ice" }, moves={ "Avalanche", "Focus Blast", "Wood Hammer" }, model_GUID="c003e7", custom_scale=0.8 },
      { name="Froslass",  level=7, types={ "Ice", "Ghost" },   moves={ "Blizzard", "Psychic", "Shadow Ball" }, model_GUID="21d87a" } }
  },
  {
    guid = "f14c62",
    trainerName = "Volkner",
    gen=4,
    gymTier = 8,
    pokemon = {
      { name="Luxray",     level=8, types={ "Electric" }, moves={ "Ice Fang", "Fire Fang", "Thunder Fang" }, model_GUID="2fe437" },
      { name="Electivire", level=8, types={ "Electric" }, moves={ "Cross Chop", "Giga Impact", "Thunder Punch" }, model_GUID="15ad3d", custom_scale=0.8 } }
  },

  -- Elite Four
  {
    guid = "9244aa",
    trainerName = "Lucian",
    gen=4,
    gymTier = 9,
    pokemon = {
      { name="Bronzong", level=9, types={ "Steel", "Psychic" },   moves={ "Earthquake", "Gyro Ball", "Psychic" }, model_GUID="422285" },
      { name="Gallade",  level=10, types={ "Psychic", "Fighting" }, moves={ "Leaf Blade", "Drain Punch", "Psycho Cut" }, model_GUID="04f582" } }
  },
  {
    guid = "547ba3",
    trainerName = "Flint",
    gen=4,
    gymTier = 9,
    pokemon = {
      { name="Infernape", level=9, types={ "Fire", "Fighting" }, moves={ "Mach Punch", "Thunder Punch", "Fire Punch" }, model_GUID="b04364", offset={x=0, y=0, z=0.1}, custom_scale=0.85 },
      { name="Magmortar", level=10, types={ "Fire" }, moves={ "Solar Beam", "Focus Blast", "Fire Blast" }, model_GUID="1ba6f9", offset={x=0, y=0, z=0.1} } }
  },
  {
    guid = "38ec9f",
    trainerName = "Bertha",
    gen=4,
    gymTier = 9,
    pokemon = {
      { name="Hippowdon", level=9, types={ "Ground" }, moves={ "Ice Fang", "Earthquake", "Stone Edge" }, model_GUID="b43ee9", spawn_effect="Physical Attack", custom_scale=0.4 },
      { name="Rhyperior", level=10, types={ "Ground", "Rock" }, moves={ "Avalanche", "Earthquake", "Rock Wrecker" }, model_GUID="860bbc", spawn_effect="Physical Attack", custom_scale=0.65 } }
  },
  {
    guid = "af0b4e",
    trainerName = "Aaron",
    gen=4,
    gymTier = 9,
    pokemon = {
      { name="Heracross", level=9, types={ "Bug", "Fighting" }, moves={ "Close Combat", "Night Slash", "Megahorn" }, model_GUID="11f35c" },
      { name="Drapion",   level=10, types={ "Poison", "Dark" }, moves={ "Aerial Ace", "Night Slash", "Cross Poison" }, model_GUID="5178e7", custom_scale=0.8 } }
  },
  -- Champion
  {
    guid = "2648b8",
    trainerName = "Cynthia",
    gen=4,
    gymTier = 10,
    pokemon = {
      { name="Togekiss", level=10,  types={ "Fairy", "Flying" },    moves={ "Aura Sphere", "Dazzling Gleam", "Air Slash" }, model_GUID="94ed87" },
      { name="Lucario",  level=11, types={ "Fighting", "Steel" }, moves={ "Stone Edge", "Aura Sphere", "Flash Cannon" }, model_GUID="6f7542" } }
  },
  {
    guid = "d10e0c",
    trainerName = "Cynthia",
    gen=4,
    gymTier = 10,
    pokemon = {
      { name="Roserade", level=10,  types={ "Grass", "Poison" }, moves={ "Dazzling Gleam", "Energy Ball", "Sludge Bomb" }, model_GUID="62a471", spawn_effect="Physical Attack" },
      { name="Milotic",  level=11, types={ "Water" }, moves={ "Mirror Coat", "Scald", "Blizzard" }, model_GUID="ab980b", spawn_effect="Physical Attack", offset={x=0, y=1.0, z=0} } }
  },
  {
    guid = "25281e",
    trainerName = "Cynthia",
    gen=4,
    gymTier = 10,
    pokemon = {
      { name="Spiritomb", level=10,  types={ "Ghost", "Dark" },  moves={ "Silver Wind", "Shadow Ball", "Dark Pulse" }, model_GUID="0a6f0d" },
      { name="Garchomp",  level=11, types={ "Dragon", "Ground" }, moves={ "Earthquake", "Dragon Rush", "Stone Edge" }, model_GUID="232447", spawn_effect="Status Attack", custom_scale=0.8 } }
  },

  -- Gen V
  -- Gym Leaders
  {
    guid = "4ad822",
    trainerName = "Cheren",
    gen=5,
    gymTier = 1,
    pokemon = {
      { name="Patrat",   level=2, types={ "Normal" }, moves={ "Work Up", "Tackle", "Bite" }, model_GUID="95e22a" },
      { name="Lillipup", level=2, types={ "Normal" }, moves={ "Work Up", "Quick Attack", "Bite" }, model_GUID="a3d331" } }
  },
  {
    guid = "f01b5f",
    trainerName = "Roxie",
    gen=5,
    gymTier = 2,
    pokemon = {
      { name="Koffing",    level=3, types={ "Poison" },        moves={ "Smog", "Tackle", "Assurance" }, model_GUID="b853ca" },
      { name="Whirlipede", level=3, types={ "Bug", "Poison" }, moves={ "Venoshock", "Protect", "Rollout" }, model_GUID="0f9af9", spawn_effect="Physical Attack", custom_scale=0.8 } }
  },
  {
    guid = "d5fe45",
    trainerName = "Burgh",
    gen=5,
    gymTier = 3,
    pokemon = {
      { name="Dwebble",  level=3, types={ "Bug", "Rock" }, moves={ "Rock Polish", "Struggle Bug", "Feint Attack" }, model_GUID="553572" },
      { name="Leavanny", level=4, types={ "Bug", "Grass" }, moves={ "Protect", "Struggle Bug", "Razor Leaf" }, model_GUID="788aa1" } }
  },
  {
    guid = "098cee",
    trainerName = "Elesa",
    gen=5,
    gymTier = 4,
    pokemon = {
      { name="Emolga",    level=4, types={ "Electric", "Flying" }, moves={ "Aerial Ace", "Quick Attack", "Thunder Shock" }, model_GUID="dad8a0", spawn_effect="Physical Attack" },
      { name="Zebstrika", level=4, types={ "Electric" }, moves={ "Flame Charge", "Stomp", "Shock Wave" }, model_GUID="1f6bb5", spawn_effect="Physical Attack" } }
  },
  {
    guid = "de22b0",
    trainerName = "Clay",
    gen=5,
    gymTier = 5,
    pokemon = {
      { name="Krokorok",  level=5, types={ "Ground", "Dark" }, moves={ "Sandstorm", "Sand Tomb", "Crunch" }, model_GUID="4cf233" },
      { name="Excadrill", level=6, types={ "Ground", "Steel" }, moves={ "Slash", "Bulldoze", "Metal Claw" }, model_GUID="dccc9b", spawn_effect="Status Attack"  } }
  },
  {
    guid = "22f826",
    trainerName = "Skyla",
    gen=5,
    gymTier = 6,
    pokemon = {
      { name="Swoobat", level=5, types={ "Psychic", "Flying" }, moves={ "Air Slash", "Assurance", "Heart Stamp" }, model_GUID="97b4e6" },
      { name="Swanna",  level=6, types={ "Water", "Flying" },   moves={ "Air Slash", "Scald", "Ice Beam" }, model_GUID="653e11" } }
  },
  {
    guid = "9414b7",
    trainerName = "Drayden",
    gen=5,
    gymTier = 7,
    pokemon = {
      { name="Druddigon", level=7, types={ "Dragon" }, moves={ "Dragon Tail", "Fire Fang", "Revenge" }, model_GUID="e0e534", custom_scale=0.8 },
      { name="Haxorus",   level=7, types={ "Dragon" }, moves={ "Dragon Tail", "Assurance", "Brick Break" }, model_GUID="18b97d" } }
  },
  {
    guid = "052a06",
    trainerName = "Marlon",
    gen=5,
    gymTier = 8,
    pokemon = {
      { name="Carracosta", level=8, types={ "Water", "Rock" }, moves={ "Crunch", "Rock Slide", "Scald" }, model_GUID="212e44", offset={x=0, y=0, z=0.1} },
      { name="Jellicent (M)",  level=8, types={ "Water", "Ghost" }, moves={ "Ominous Wind", "Energy Ball", "Scald" }, model_GUID="b219d0", spawn_effect="Physical Attack" } }
  },

  -- Elite Four
  {
    guid = "254e2b",
    trainerName = "Shauntal",
    gen=5,
    gymTier = 9,
    pokemon = {
      { name="Golurk",     level=9, types={ "Ground", "Ghost" }, moves={ "Brick Break", "Shadow Punch", "Earthquake" }, model_GUID="002dc3", custom_scale=0.8 },
      { name="Chandelure", level=10, types={ "Ghost", "Fire" },  moves={ "Energy Ball", "Shadow Ball", "Fire Blast" },  model_GUID="de2e80" } }
  },
  {
    guid = "9bec87",
    trainerName = "Marshal",
    gen=5,
    gymTier = 9,
    pokemon = {
      { name="Mienshao",   level=9, types={ "Fighting" }, moves={ "Wide Guard", "Acrobatics", "High Jump Kick" }, model_GUID="afd151" },
      { name="Conkeldurr", level=10, types={ "Fighting" }, moves={ "Stone Edge", "Hammer Arm", "Grass Knot" }, model_GUID="04bed2" } }
  },
  {
    guid = "1aa293",
    trainerName = "Grimsley",
    gen=5,
    gymTier = 9,
    pokemon = {
      { name="Scrafty", level=9, types={ "Dark", "Fighting" }, moves={ "Poison Jab", "Brick Break", "Crunch" }, model_GUID="b9d27b", spawn_effect="Physical Attack" },
      { name="Bisharp", level=10, types={ "Dark", "Steel" }, moves={ "Iron Head", "Aerial Ace", "Night Slash" }, model_GUID="753f92" } }
  },
  {
    guid = "d181f2",
    trainerName = "Caitlin",
    gen=5,
    gymTier = 9,
    pokemon = {
      { name="Sigilyph",   level=9, types={ "Psychic", "Flying" }, moves={ "Ice Beam", "Air Slash", "Psychic" }, model_GUID="71ed95" },
      { name="Gothitelle", level=10, types={ "Psychic" }, moves={ "Thunderbolt", "Foul Play", "Psychic" }, model_GUID="e6fa75" } }
  },
  -- Champion
  {
    guid = "c17cfd",
    trainerName = "Iris",
    gen=5,
    gymTier = 10,
    pokemon = {
      { name="Druddigon", level=10, types={ "Dragon" }, moves={ "Thunder Punch", "Focus Blast", "Dragon Tail" }, model_GUID="e0e534", custom_scale=0.8 },
      { name="Hydreigon", level=11,  types={ "Dark", "Dragon" }, moves={ "Fire Blast", "Focus Blast", "Dragon Pulse" }, model_GUID="2621b5", spawn_effect="Status Attack" } }
  },
  {
    guid = "9d2a12",
    trainerName = "Iris",
    gen=5,
    gymTier = 10,
    pokemon = {
      { name="Archeops", level=10,  types={ "Rock", "Flying" },   moves={ "Dragon Claw", "Stone Edge", "Acrobatics" }, model_GUID="e52be5", spawn_effect="Physical Attack" },
      { name="Haxorus",  level=11, types={ "Dragon" }, moves={ "Guillotine", "Assurance", "Outrage" }, model_GUID="18b97d" } }
  },
  {
    guid = "346c48",
    trainerName = "Alder",
    gen=5,
    gymTier = 10,
    pokemon = {
      { name="Conkeldurr", level=10,  types={ "Fighting" },   moves={ "Stone Edge", "Poison Jab", "Dynamic Punch" }, model_GUID="04bed2", custom_scale=0.65 },
      { name="Volcarona",  level=11, types={ "Bug", "Fire" }, moves={ "Heat Wave", "Silver Wind", "Psychic" }, model_GUID="c9ed3b" } }
  },

  -- Gen VI
  -- Gym Leaders
  {
    guid = "c49242",
    trainerName = "Viola",
    gen=6,
    gymTier = 1,
    pokemon = {
      { name="Surskit", level=2, types={ "Bug", "Water" }, moves={ "Quick Attack", "Bubble", "Infestation" }, model_GUID="15b02f" },
      { name="Vivillon", level=2, types={ "Bug", "Flying" }, moves={ "Harden", "Gust", "Infestation" }, model_GUID="4ea111" } }
  },
  {
    guid = "c3ba0b",
    trainerName = "Grant",
    gen=6,
    gymTier = 2,
    pokemon = {
      { name="Amaura", level=3, types={ "Rock", "Ice" }, moves={ "Thunder Wave", "Powder Snow", "Rock Tomb" }, model_GUID="73d866"  },
      { name="Tyrunt", level=3, types={ "Rock", "Dragon" }, moves={ "Bite", "Stomp", "Rock Tomb" }, model_GUID="f6e97c" } }
  },
  {
    guid = "75edd9",
    trainerName = "Korrina",
    gen=6,
    gymTier = 3,
    pokemon = {
        { name="Hawlucha", level=3, types={ "Fighting", "Flying" }, moves={ "Hone Claws", "X-Scissor", "Flying Press" }, model_GUID="c7140e", spawn_effect="Status Attack" },
        { name="Lucario", level=4, types={ "Fighting", "Steel" }, moves={ "Metal Sound", "Bone Rush", "Power-Up Punch" }, model_GUID="6f7542"  } }
  },
  {
    guid = "ba6bd1",
    trainerName = "Ramos",
    gen=6,
    gymTier = 4,
    pokemon = {
      { name="Jumpluff", level=4, types={ "Grass", "Flying" }, moves={ "Leech Seed", "Dazzling Gleam", "Grass Knot" }, model_GUID="08d23f", spawn_effect="Physical Attack" },
      { name="Gogoat", level=4, types={ "Grass" }, moves={ "Bulk Up", "Bulldoze", "Horn Leech" }, model_GUID="88d0b0", spawn_effect="Status Attack" } }
  },
  {
    guid = "170341",
    trainerName = "Clemont",
    gen=6,
    gymTier = 5,
    pokemon = {
      { name="Magneton", level=5, types={ "Electric", "Steel" }, moves={ "Electric Terrain", "Mirror Shot", "Thunderbolt" }, model_GUID="f82ef9" },
      { name="Heliolisk", level=6, types={ "Electric", "Normal" }, moves={ "Quick Attack", "Focus Blast", "Thunderbolt" }, model_GUID="7d0f27" } }
  },
  {
    guid = "ecfb59",
    trainerName = "Valerie",
    gen=6,
    gymTier = 6,
    pokemon = {
      { name="Mawile", level=5, types={ "Steel", "Fairy" }, moves={ "Iron Defense", "Crunch", "Play Rough" }, model_GUID="71f869" },
      { name="Sylveon", level=6, types={ "Fairy" }, moves={ "Light Screen", "Swift", "Moonblast" }, model_GUID="381a03" } }
  },
  {
    guid = "3e6766",
    trainerName = "Olympia",
    gen=6,
    gymTier = 7,
    pokemon = {
      { name="Slowking", level=7, types={ "Water", "Psychic" }, moves={ "Water Pulse", "Power Gem", "Psychic" }, model_GUID="bcb9f2", custom_scale=0.85 },
      { name="Meowstic (F)", level=7, types={ "Psychic" }, moves={ "Thunderbolt", "Sucker Punch", "Psychic" }, model_GUID="3357e1" } }
  },
  {
    guid = "f47073",
    trainerName = "Wulfric",
    gen=6,
    gymTier = 8,
    pokemon = {
      { name="Cryogonal",level=8, types={ "Ice" }, moves={ "Hail", "Solar Beam", "Ice Beam" }, model_GUID="37b1ac", spawn_effect="Physical Attack" },
      { name="Avalugg",  level=8, types={ "Ice" }, moves={ "Skull Bash", "Gyro Ball", "Ice Fang" }, model_GUID="fc938c", spawn_effect="Status Attack", custom_scale=0.5 } }
  },

  -- Elite Four
  {
    guid = "970078",
    trainerName = "Wikstrom",
    gen=6,
    gymTier = 9,
    pokemon = {
      { name="Klefki", level=9, types={ "Steel", "Fairy" }, moves={ "Spikes", "Dazzling Gleam", "Flash Cannon" }, model_GUID="4b6f52", spawn_effect="Physical Attack" },
      { name="Blade Aegislash", level=10, types={ "Steel", "Ghost" }, moves={ "Shadow Claw", "Sacred Sword", "Iron Head" }, model_GUID="a6b120", spawn_effect="Blade Stance" } }
  },
  {
    guid = "dfa5a5",
    trainerName = "Siebold",
    gen=6,
    gymTier = 9,
    pokemon = {
      { name="Clawitzer",  level=9, types={ "Water" }, moves={ "Dark Pulse", "Aura Sphere", "Water Pulse" }, model_GUID="3bdfca" },
      { name="Barbaracle", level=10, types={ "Rock", "Water" }, moves={ "Stone Edge", "X-Scissor", "Razor Shell" }, model_GUID="7acdd8" } }
  },
  {
    guid = "3c4256",
    trainerName = "Drasna",
    gen=6,
    gymTier = 9,
    pokemon = {
      { name="Dragalge", level=9, types={ "Poison", "Dragon" }, moves={ "Thunderbolt", "Sludge Bomb", "Dragon Tail" }, model_GUID="2c5c3c" },
      { name="Noivern", level=10, types={ "Flying", "Dragon" }, moves={ "Super Fang", "Air Slash", "Dragon Pulse" }, model_GUID="212e94", spawn_effect="Status Attack"  } }
  },
  {
    guid = "c4d767",
    trainerName = "Malva",
    gen=6,
    gymTier = 9,
    pokemon = {
      { name="Pyroar (F)", level=9, types={ "Fire", "Normal" }, moves={ "Echoed Voice", "Crunch", "Incinerate" }, model_GUID="122f4c" },
      { name="Talonflame",  level=10, types={ "Fire", "Flying" }, moves={ "Me First", "Acrobatics", "Flame Charge" }, model_GUID="efd523", spawn_effect="Physical Attack" } }
  },
  -- Champion
  {
    guid = "a20a02",
    trainerName = "Diantha",
    gen=6,
    gymTier = 10,
    pokemon = {
      { name="Goodra", level=10, types={ "Dragon" }, moves={ "Focus Blast", "Fire Blast", "Dragon Pulse" }, model_GUID="35c5e9", spawn_effect="Status Attack" },
      { name="Mega Gardevoir", level=11, types={ "Psychic", "Fairy" }, moves={ "Thunderbolt", "Psychic", "Moonblast" }, model_GUID="17dce9", spawn_effect="Mega Evolve" } }
  },
  {
    guid = "4e871f",
    trainerName = "Diantha",
    gen=6,
    gymTier = 10,
    pokemon = {
      { name="Gourgeist", level=10, types={ "Ghost", "Grass" }, moves={ "Pain Split", "Shadow Claw", "Seed Bomb" }, model_GUID="16c782" },
      { name="Aurorus", level=11, types={ "Rock", "Ice" }, moves={ "Ancient Power", "Thunder", "Blizzard" }, model_GUID="17494e", spawn_effect="Physical Attack" } }
  },
  {
    guid = "e9ea83",
    trainerName = "Diantha",
    gen=6,
    gymTier = 10,
    pokemon = {
      { name="Hawlucha", level=10, types={ "Fighting", "Flying" }, moves={ "X-Scissor", "Poison Jab", "Flying Press" }, model_GUID="c7140e", spawn_effect="Status Attack" },
      { name="Tyrantrum", level=11, types={ "Rock", "Dragon" }, moves={ "Crunch", "Dragon Tail", "Ancient Power" }, model_GUID="e8c337", spawn_effect="Status Attack", custom_scale=0.65 } }
  },

  -- Gen VII
  -- Gym Leaders
  {
    guid = "9d2d79",
    trainerName = "Totem",
    gen=7,
    gymTier = 1,
    pokemon = {
      { name="Yungoos", level=2, types={ "Normal" }, moves={ "Super Fang", "Sand Attack", "Bite" },  model_GUID="d77420" },
      { name="Gumshoos", level=2, types={ "Normal" }, moves={ "Work Up", "Mud-Slap", "Bite" }, model_GUID="902af6" } }
  },
  {
    guid = "18bfc2",
    trainerName = "Totem",
    gen=7,
    gymTier = 1,
    pokemon = {
      { name="Rattata", level=2, types={ "Dark", "Normal" }, moves={ "Torment", "Focus Energy", "Quick Attack" }, model_GUID="53c2a4" },
      { name="Raticate", level=2, types={ "Dark", "Normal" }, moves={ "Embargo", "Tackle", "Bite" }, model_GUID="905fd9" } }
  },
  {
    guid = "bc4cea",
    trainerName = "Hala",
    gen=7,
    gymTier = 2,
    pokemon = {
        { name="Makuhita", level=3, types={ "Fighting" }, moves={ "Fake Out", "Sand Attack", "Arm Thrust" }, model_GUID="b12e69" },
        { name="Crabrawler", level=3, types={ "Fighting" }, moves={ "Vise Grip", "Payback", "Power-Up Punch" }, model_GUID="cc10c3" } }
  },
  {
    guid = "f67255",
    trainerName = "Totem",
    gen=7,
    gymTier = 3,
    pokemon = {
      { name="Salazzle", level=3, types={ "Poison", "Fire" }, moves={ "Flame Burst", "Poison Fang", "Captivate" }, model_GUID="29570d" },
      { name="Marowak", level=4, types={ "Fire", "Ghost" }, moves={ "Flame Wheel", "Hex", "Detect" }, model_GUID="245f21" } }
  },
  {
    guid = "2abaeb",
    trainerName = "Totem",
    gen=7,
    gymTier = 3,
    pokemon = {
      { name="Comfey", level=3, types={ "Fairy" }, moves={ "Grassy Terrain", "Draining Kiss", "Magical Leaf" }, model_GUID="91d031" },
      { name="Lurantis", level=4, types={ "Grass" }, moves={ "X-Scissor", "Leaf Blade", "Slash" }, model_GUID="8cd3d5", spawn_effect="Physical Attack" } }
  },
  {
    guid = "dd267b",
    trainerName = "Totem",
    gen=7,
    gymTier = 3,
    pokemon = {
      { name="Salandit", level=3, types={ "Poison", "Fire" }, moves={ "Smog", "Ember", "Dragon Pulse" }, model_GUID="b90790" },
      { name="Salazzle", level=4, types={ "Poison", "Fire" }, moves={ "Venoshock", "Flamethrower", "Nasty Plot" }, model_GUID="29570d" } }
  },
  {
    guid = "913644",
    trainerName = "Totem",
    gen=7,
    gymTier = 3,
    pokemon = {
      { name="Masquerain", level=3, types={ "Bug", "Flying" }, moves={ "Bug Bite", "Ominous Wind", "Air Slash" }, model_GUID="f71175" },
      { name="Araquanid", level=4, types={ "Water", "Bug" }, moves={ "Leech Life", "Bubble", "Aurora Beam" }, model_GUID="049687", spawn_effect="Physical Attack" } }
  },
  {
    guid = "b09f56",
    trainerName = "Totem",
    gen=7,
    gymTier = 3,
    pokemon = {
      { name="Alomomola", level=3, types={ "Water" }, moves={ "Aqua Ring", "Wake-Up Slap", "Brine" }, model_GUID="987107" },
      { name="Wishiwashi", level=4, types={ "Water" }, moves={ "Endeavor", "Feint Attack", "Brine" },  model_GUID="ec2225" } }
  },
  {
    guid = "294927",
    trainerName = "Olivia",
    gen=7,
    gymTier = 4,
    pokemon = {
      { name="Lileep", level=4, types={ "Rock", "Grass" }, moves={ "Giga Drain", "Ancient Power", "Brine" }, model_GUID="77fdf5" },
      { name="Midnight Lycanroc", level=4, types={ "Rock" }, moves={ "Bite", "Rock Tomb", "Counter" }, model_GUID="5e3a9d" } }
  },
  {
    guid = "59c455",
    trainerName = "Totem",
    gen=7,
    gymTier = 5,
    pokemon = {
      { name="Banette", level=5, types={ "Ghost" }, moves={ "Will-O-Wisp", "Feint Attack", "Hex" }, model_GUID="36b0e4" },
      { name="Mimikyu", level=6, types={ "Ghost", "Fairy" }, moves={ "Mimic", "Play Rough", "Shadow Claw" }, model_GUID="48082a" } }
  },
  {
    guid = "890b4e",
    trainerName = "Totem",
    gen=7,
    gymTier = 5,
    pokemon = {
      { name="Dedenne", level=5, types={ "Electric", "Fairy" }, moves={ "Charm", "Charge Beam", "Super Fang" }, model_GUID="f90863" },
      { name="Togedemaru", level=6, types={ "Electric", "Steel" }, moves={ "Iron Head", "Bounce", "Zing Zap" }, model_GUID="e7484b" } }
  },
  {
    guid = "922673",
    trainerName = "Totem",
    gen=7,
    gymTier = 5,
    pokemon = {
      { name="Charjabug", level=5, types={ "Bug", "Electric" }, moves={ "Iron Defense", "Bug Bite", "Spark" }, model_GUID="f5e6f0" },
      { name="Vikavolt", level=6, types={ "Bug", "Electric" }, moves={ "Air Slash", "Bug Bite", "Spark" }, model_GUID="d539ed" } }
  },
  {
    guid = "75f2f1",
    trainerName = "Nanu",
    gen=7,
    gymTier = 6,
    pokemon = {
      { name="Krokorok", level=5, types={ "Ground", "Dark" }, moves={ "Aerial Ace", "Earthquake", "Assurance" }, model_GUID="4cf233" },
      { name="Persian", level=6, types={ "Dark" }, moves={ "Slash", "Thunderbolt", "Black Hole Eclipse" }, model_GUID="0684cc", custom_scale=0.9 } }
  },
  {
    guid = "d0c8e0",
    trainerName = "Totem",
    gen=7,
    gymTier = 7,
    pokemon = {
      { name="Hakamo-o", level=7, types={ "Dragon", "Fighting" }, moves={ "Poison Jab", "Drain Punch", "Thunder Punch" }, model_GUID="54dfcc" },
      { name="Kommo-o", level=7, types={ "Dragon", "Fighting" }, moves={ "Flash Cannon", "Drain Punch", "Clanging Scales" }, model_GUID="cbb201" } }
  },
  {
    guid = "b74bcc",
    trainerName = "Totem",
    gen=7,
    gymTier = 7,
    pokemon = {
      { name="Blissey", level=7, types={ "Normal" }, moves={ "Psychic", "Hyper Beam", "Alluring Voice" }, model_GUID="7c05e0", spawn_effect="Status Attack" },
      { name="Ribombee", level=7, types={ "Bug", "Fairy" }, moves={ "Solar Beam", "Dazzling Gleam", "Bug Buzz" }, model_GUID="a1c941", spawn_effect="Physical Attack" } }
  },
  {
    guid = "8baab3",
    trainerName = "Hapu",
    gen=7,
    gymTier = 8,
    pokemon = {
      { name="Flygon", level=8, types={ "Ground", "Dragon" }, moves={ "Dragon Breath", "Rock Slide", "Earth Power" }, model_GUID="c8d0b6" },
      { name="Mudsdale", level=8, types={ "Ground" }, moves={ "Rock Slide", "Heavy Slam", "Tectonic Rage" }, model_GUID="28b051", spawn_effect="Physical Attack", custom_scale=0.6 } }
   },
  
  -- Elite Four
  {
    guid = "7c12f8",
    trainerName = "Olivia",
    gen=7,
    gymTier = 9,
    pokemon = {
      { name="Alolan Golem", level=9, types={ "Rock", "Electric" }, moves={ "Stone Edge", "Thunder Punch", "Heavy Slam" }, model_GUID="18e42a", spawn_effect="Physical Attack" },
      { name="Midnight Lycanroc", level=10, types={ "Rock" }, moves={ "Fire Punch", "Counter", "Splintered Stormshards" }, model_GUID="5e3a9d" } }
  },
  {
    guid = "c34329",
    trainerName = "Molayne",
    gen=7,
    gymTier = 9,
    pokemon = {
      { name="Bisharp",  level=9, types={ "Dark", "Steel" }, moves={ "Night Slash", "Iron Head", "Poison Jab" }, model_GUID="753f92" },
      { name="Alolan Dugtrio", level=10, types={ "Ground", "Steel" }, moves={ "Stone Edge", "Corkscrew Crash", "Earth Power" }, model_GUID="461e52" } }
  },
  {
    guid = "504061",
    trainerName = "Kahili",
    gen=7,
    gymTier = 9,
    pokemon = {
      { name="Baile Oricorio", level=9, types={ "Fire", "Flying" }, moves={ "Reversal", "Air Cutter", "Rev. Dance Fire" }, model_GUID="f5fc3a", spawn_effect="Physical Attack" },
      { name="Toucannon", level=10, types={ "Flying", "Normal" }, moves={ "Gunk Shot", "Swift", "Supersonic Skystrike" }, model_GUID="2c6bc3" } }
  },
  {
    guid = "b9bd0e",
    trainerName = "Acerola",
    gen=7,
    gymTier = 9,
    pokemon = {
      { name="Dhelmise", level=9, types={ "Ghost", "Grass" }, moves={ "Heavy Slam", "Energy Ball", "Shadow Ball" }, model_GUID="af1f36", spawn_effect="Physical Attack" },
      { name="Palossand", level=10, types={ "Ghost", "Ground" }, moves={ "Giga Drain", "Earth Power", "Never-Ending Nightmare" }, model_GUID="d2d150", offset={x=0, y=0, z=-0.15} } }
  },
  {
    guid = "0bc60c",
    trainerName = "Hala",
    gen=7,
    gymTier = 9,
    pokemon = {
      { name="Poliwrath", level=9, types={ "Water", "Fighting" }, moves={ "Earth Power", "Waterfall", "Dynamic Punch" }, model_GUID="24f90c", custom_scale=0.8 },
      { name="Crabominable", level=10, types={ "Fighting", "Ice" }, moves={ "Stone Edge", "Ice Hammer", "All-Out Pummeling" }, model_GUID="bd1445" } }
  },
  -- Champion
  {
    guid = "94f594",
    trainerName = "Kukui",
    gen=7,
    gymTier = 10,
    pokemon = {
      { name="Alolan Ninetales", level=10, types={ "Ice" }, moves={ "Safeguard", "Dazzling Gleam", "Blizzard" }, model_GUID="654f90" },
      { name="Incineroar", level=11, types={ "Fire", "Dark" }, moves={ "Cross Chop", "Fire Fang", "Malicious Moonsault" }, model_GUID="bc10fb" } }
  },
  {
    guid = "7faa66",
    trainerName = "Kukui",
    gen=7,
    gymTier = 10,
    pokemon = {
      { name="Magnezone", level=10, types={ "Electric", "Steel" }, moves={ "Thunderbolt", "Flash Cannon", "Mirror Coat" }, model_GUID="e901bd" },
      { name="Primarina", level=11, types={ "Water", "Fairy" }, moves={ "Blizzard", "Moonblast", "Oceanic Operetta" }, model_GUID="bd9d9f" } }
  },
  {
    guid = "12326f",
    trainerName = "Hau",
    gen=7,
    gymTier = 10,
    pokemon = {
      { name="Alolan Raichu", level=10, types={ "Electric", "Psychic" }, moves={ "Thunderbolt", "Psychic", "Focus Blast" }, model_GUID="ac9e94", spawn_effect="Physical Attack" },
      { name="Decidueye", level=11, types={ "Grass", "Ghost" }, moves={ "Pluck", "Leaf Blade", "Sinister Arrow Raid" }, model_GUID="d35cbf", spawn_effect="Status Attack", offset={x=0, y=0.115, z=0} } }
  },

  -- Gen VIII
  -- Gym Leaders
  {
    guid = "182d74",
    trainerName = "Milo",
    gen=8,
    gymTier = 1,
    pokemon = {
      { name="Gossifleur", level=2, types={ "Grass" }, moves={ "Rapid Spin", "Sing", "Leafage" }, model_GUID="2f875e"  },
      { name="Eldegoss", level=2, types={ "Grass" }, moves={ "Hyper Voice", "Aromatherapy", "Leafage" }, model_GUID="227ab8" } }
  },
  {
    guid = "c087f9",
    trainerName = "Nessa",
    gen=8,
    gymTier = 2,
    pokemon = {
      { name="Arrokuda", level=3, types={ "Water" }, moves={ "Fury Attack", "Bite", "Aqua Jet" }, model_GUID="95b4b0" },
      { name="Drednaw", level=3, types={ "Water", "Rock" }, moves={ "Headbutt", "Bite", "Razor Shell" }, model_GUID="0ab337", custom_scale=0.9 } }
  },
  {
    guid = "08b1a8",
    trainerName = "Kabu",
    gen=8,
    gymTier = 3,
    pokemon = {
      { name="Arcanine", level=3, types={ "Fire" }, moves={ "Extreme Speed", "Bite", "Flame Wheel" }, model_GUID="d89ae7", custom_scale=0.7 },
      { name="Centiskorch", level=4, types={ "Fire", "Bug" }, moves={ "Coil", "Bug Bite", "Flame Wheel" }, model_GUID="a1917b"  } }
  },
  {
    guid = "4f251c",
    trainerName = "Bea",
    gen=8,
    gymTier = 4,
    pokemon = {
        { name="Sirfetch'd", level=4, types={ "Fighting" }, moves={ "Slam", "Leaf Blade", "Detect" }, model_GUID="158014" },
        { name="Machamp", level=4, types={ "Fighting" }, moves={ "Strength", "Knock Off", "Revenge" }, model_GUID="94b0de", spawn_effect="Physical Attack" } }
  },
  {
    guid = "cad1a8",
    trainerName = "Allister",
    gen=8,
    gymTier = 4,
    pokemon = {
        { name="Cursola", level=4, types={ "Ghost" }, moves={ "Strength Sap", "Ancient Power", "Hex" }, model_GUID="b8f109" },
        { name="Gengar", level=4, types={ "Ghost", "Poison" }, moves={ "Hypnosis", "Venoshock", "Hex" }, model_GUID="4638bc" } }
  },
  {
    guid = "7749a1",
    trainerName = "Opal",
    gen=8,
    gymTier = 5,
    pokemon = {
      { name="Galarian Weezing", level=5, types={ "Poison", "Fairy" }, moves={ "Protect", "Sludge", "Strange Steam" }, model_GUID="e96342" },
      { name="Alcremie", level=6, types={ "Fairy" }, moves={ "Psychic", "Drain Punch", "Draining Kiss" }, model_GUID="44047f" } }
  },
  {
    guid = "3ec0f8",
    trainerName = "Melony",
    gen=8,
    gymTier = 6,
    pokemon = {
      { name="Galarian Darmanitan", level=5, types={ "Ice" }, moves={ "Icicle Crash", "Fire Fang", "Headbutt" }, model_GUID="d9be07" },
      { name="Lapras", level=6, types={ "Water", "Ice" }, moves={ "Ice Beam", "Surf", "Sing" }, model_GUID="ae0d8f", custom_scale=0.8, offset={x=0, y=0.2, z=-0.1} } }
  },
  {
    guid = "889940",
    trainerName = "Gordie",
    gen=8,
    gymTier = 6,
    pokemon = {
      { name="Stonjourner", level=5, types={ "Rock" }, moves={ "Stealth Rock", "Body Slam", "Rock Tomb" }, model_GUID="317554" },
      { name="Coalossal", level=6, types={ "Rock", "Fire" }, moves={ "Earthquake", "Heat Crash", "Rock Tomb" }, model_GUID="e7e32a" } }
  },
  {
    guid = "519731",
    trainerName = "Piers",
    gen=8,
    gymTier = 7,
    pokemon = {
      { name="Scrafty", level=7, types={ "Dark", "Fighting" }, moves={ "Headbutt", "Brick Break", "Payback" }, model_GUID="b9d27b", spawn_effect="Physical Attack" },
      { name="Obstagoon", level=7, types={ "Dark", "Normal" }, moves={ "Counter", "Shadow Claw", "Obstruct" }, model_GUID="89cdcd" } }
  },
  {
    guid = "1752ad",
    trainerName = "Raihan",
    gen=8,
    gymTier = 8,
    pokemon = {
      { name="Sandaconda", level=8, types={ "Ground" }, moves={ "Protect", "Fire Fang", "Earth Power" }, model_GUID="d15ad0"},
      { name="Duraludon", level=8, types={ "Steel", "Dragon" }, moves={ "Stone Edge", "Iron Head", "Breaking Swipe" }, model_GUID="397452" } }
  },

  -- Elite Four
  {
    guid = "5c28d7",
    trainerName = "Hop",
    gen=8,
    gymTier = 9,
    pokemon = {
      { name="Corviknight", level=9, types={ "Flying", "Steel" }, moves={ "Reversal", "Steel Wing", "Pluck" }, model_GUID="1515e6" },
      { name="Crowned Sword Zacian", level=10, types={ "Fairy", "Steel" }, moves={ "Sacred Sword", "Behemoth Bash", "Play Rough" }, model_GUID="6dccb4", custom_scale=0.6 } }
  },
  {
    guid = "cb76dc",
    trainerName = "Marnie",
    gen=8,
    gymTier = 9,
    pokemon = {
      { name="Full Belly Morpeko", level=9, types={ "Electric", "Dark" }, moves={ "Seed Bomb", "Bite", "Thunder" }, model_GUID="6393df" },
      { name="Grimmsnarl", level=10, types={ "Dark", "Fairy" }, moves={ "Hammer Arm", "Darkest Lariat", "Spirit Break" }, model_GUID="3db539" } }
  },
  {
    guid = "6af720",
    trainerName = "Hop",
    gen=8,
    gymTier = 9,
    pokemon = {
      { name="Dubwool", level=9, types={ "Normal" }, moves={ "Zen Headbutt", "Headbutt", "Reversal" }, model_GUID="d79f30" },
      { name="Crowned Shield Zamazenta", level=10, types={ "Fighting", "Steel" }, moves={ "Wide Guard", "Behemoth Bash", "Reversal" }, model_GUID="37f3aa", custom_scale=0.6 } }
  },
  {
    guid = "7ed3ee",
    trainerName = "Bede",
    gen=8,
    gymTier = 9,
    pokemon = {
      { name="Galarian Rapidash", level=9, types={ "Psychic", "Fairy" }, moves={ "Smart Strike", "Zen Headbutt", "Dazzling Gleam" }, model_GUID="725893", custom_scale=0.7 },
      { name="Hatterene",  level=10, types={ "Psychic", "Fairy" }, moves={ "Mystical Fire", "Psychic", "Dazzling Gleam" }, model_GUID="9ac795" } }
  },
  {
    guid = "fb0b8c",
    trainerName = "Avery",
    gen=8,
    gymTier = 9,
    pokemon = {
      { name="Alakazam", level=9, types={ "Psychic" }, moves={ "Psycho Cut", "Shadow Ball", "Focus Blast" }, model_GUID="c3804e" },
      { name="Galarian Slowking",  level=10, types={ "Poison", "Psychic" }, moves={ "Scald", "Future Sight", "Blizzard" }, model_GUID="eab949" } }
  },
  {
    guid = "4e725f",
    trainerName = "Klara",
    gen=8,
    gymTier = 9,
    pokemon = {
      { name="Scolipede", level=9, types={ "Bug", "Poison" }, moves={ "Smart Strike", "Poison Jab", "Megahorn" }, model_GUID="6b8b44", spawn_effect="Physical Attack" },
      { name="Galarian Slowbro", level=10, types={ "Poison", "Psychic" }, moves={ "Focus Blast", "Psychic", "Shell Side Arm" }, model_GUID="0db618" } }
  },

  -- Champion
  {
    guid = "cf8621",
    trainerName = "Leon",
    gen=8,
    gymTier = 10,
    pokemon = {
      { name="Cinderace", level=10, types={ "Fire" }, moves={ "Bounce", "Focus Blast", "Pyro Ball" }, model_GUID="edbb96" },
      { name="Blade Aegislash", level=11, types={ "Steel", "Ghost" }, moves={ "King's Shield", "Reversal", "Flash Cannon" }, model_GUID="a6b120", spawn_effect="Blade Stance" } }
  },
  {
    guid = "cbea60",
    trainerName = "Leon",
    gen=8,
    gymTier = 10,
    pokemon = {
      { name="Rillaboom", level=10, types={ "Grass" }, moves={ "Knock Off", "Endeavor", "Drum Beating" }, model_GUID="2a352f" },
      { name="Dragapult", level=11, types={ "Dragon", "Ghost" }, moves={ "Thunderbolt", "Shadow Ball", "Dragon Breath" }, model_GUID="1f4890" } }
  },
  {
    guid = "f0b4c9",
    trainerName = "Leon",
    gen=8,
    gymTier = 10,
    pokemon = {
      { name="Inteleon", level=10, types={ "Water" }, moves={ "Blizzard", "Shadow Ball", "Snipe Shot" }, model_GUID="289431" },
      { name="Charizard", level=11, types={ "Fire", "Flying" }, moves={ "Solar Beam", "Air Slash", "Fire Blast" }, model_GUID="27261b", spawn_effect="Status Attack" } }
  },

  -- Gen IX
  -- Gym Leaders
  {
    guid = "45dc59",
    trainerName = "Katy",
    gen=9,
    gymTier = 1,
    pokemon = {
      { name="Tarountula",level=2, types={ "Bug" }, moves={ "Toxic Spikes", "Assurance", "String Shot" }, model_GUID="155fcd" },
      { name="Teddiursa", level=2, types={ "Normal" }, teraType="Bug", teraActive=true, moves={ "Baby-Doll Eyes", "Fury Swipes", "Fury Cutter" }, model_GUID="729770" } }
  },
  {
    guid = "ad920b",
    trainerName = "Brassius",
    gen=9,
    gymTier = 2,
    pokemon = {
      { name="Smoliv",  level=3, types={ "Grass", "Normal" }, moves={ "Tackle", "Leech Seed", "Strength Sap" }, model_GUID="477ca3" },
      { name="Sudowoodo", level=3, types={ "Rock" }, teraType="Grass", teraActive=true, moves={ "Counter", "Rock Throw", "Trailblaze" }, model_GUID="b0f59f", spawn_effect="Physical Attack" } }
  },
  {
    guid = "7875a3",
    trainerName = "Iono",
    gen=9,
    gymTier = 3,
    pokemon = {
      { name="Bellibolt", level=3, types={ "Electric" },  moves={ "Water Gun", "Mud-Slap", "Spark" }, model_GUID="0f5e65" },
      { name="Mismagius",  level=4, types={ "Ghost" }, teraType="Electric", teraActive=true, moves={ "Dazzling Gleam", "Hex", "Charge Beam" }, model_GUID="a81efd", spawn_effect="Physical Attack" } }
  },
  {
    guid = "68208c",
    trainerName = "Kofu",
    gen=9,
    gymTier = 4,
    pokemon = {
      { name="Wugtrio", level=4, types={ "Water" }, moves={ "Headbutt", "Mud-Slap", "Water Pulse" }, model_GUID="1a8eb6", offset={x=0, y=0.5, z=0} },
      { name="Crabominable",  level=4, types={ "Fighting", "Ice" }, teraType="Water", teraActive=true, moves={ "Slam", "Rock Smash", "Crabhammer" }, model_GUID="bd1445" } }
  },
  {
    guid = "51d9fc",
    trainerName = "Larry",
    gen=9,
    gymTier = 5,
    pokemon = {
      { name="Dudunsparce",  level=5, types={ "Normal" }, moves={ "Glare", "Drill Run", "Hyper Drill" }, model_GUID="fdfb3e", offset={x=0, y=0.08, z=0} },
      { name="Staraptor", level=6, types={ "Flying", "Normal" }, teraType="Normal", teraActive=true, moves={ "Thief", "Aerial Ace", "Facade" }, model_GUID="88b32f" } }
  },
  {
    guid = "e99877",
    trainerName = "Ryme",
    gen=9,
    gymTier = 6,
    pokemon = {
      { name="Houndstone", level=5, types={ "Ghost" }, moves={ "Play Rough", "Crunch", "Phantom Force" }, model_GUID="ecd2d3" },
      { name="Toxtricity",   level=6, types={ "Electric", "Poison" }, teraType="Ghost", teraActive=true, moves={ "Boomburst", "Discharge", "Hex" }, model_GUID="4d9bff" } }
  },
  {
    guid = "8a4bc5",
    trainerName = "Tulip",
    gen=9,
    gymTier = 7,
    pokemon = {
      { name="Farigiraf",   level=7, types={ "Normal", "Psychic" },  moves={ "Stomp", "Zen Headbutt", "Crunch" }, model_GUID="2a59bc" },
      { name="Florges", level=7, types={ "Fairy" }, teraType="Psychic", teraActive=true, moves={ "Moonblast", "Psychic", "Giga Drain" }, model_GUID="b2407e", spawn_effect="Physical Attack" } }
  },
  {
    guid = "808b43",
    trainerName = "Grusha",
    gen=9,
    gymTier = 8,
    pokemon = {
      { name="Cetitan", level=8, types={ "Ice" }, moves={ "Bounce", "Liquidation", "Ice Spinner" }, model_GUID="88f64b", custom_scale=0.5 },
      { name="Altaria", level=8, types={ "Dragon", "Flying" }, teraType="Ice", teraActive=true, moves={ "Dragon Pulse", "Hurricane", "Ice Beam" }, model_GUID="9a2210" } }
  },

  -- Elite Four + Champion
  {
    guid = "47ed30",
    trainerName = "Larry",
    gen=9,
    gymTier = 9,
    pokemon = {
      { name="Tropius", level=9, types={ "Grass", "Flying" }, moves={ "Dragon Pulse", "Solar Beam", "Air Slash" }, model_GUID="bdb162"  },
      { name="Flamigo", level=10, types={ "Flying", "Fighting" }, teraType="Flying", teraActive=true, moves={ "Liquidation", "Upper Hand", "Brave Bird" }, model_GUID="de429c" } }
  },
  {
    guid = "7b612c",
    trainerName = "Hassel",
    gen=9,
    gymTier = 9,
    pokemon = {
      { name="Dragalge", level=9, types={ "Poison", "Dragon" }, moves={ "Sludge Bomb", "Dragon Pulse", "Hydro Pump" }, model_GUID="2c5c3c"  },
      { name="Baxcalibur", level=10, types={ "Dragon", "Ice" }, teraType="Dragon", teraActive=true, moves={ "Iron Head", "Glaive Rush", "Icicle Crash" }, model_GUID="f2322d" } }
  },
  {
    guid = "e625ec",
    trainerName = "Rika",
    gen=9,
    gymTier = 9,
    pokemon = {
      { name="Camerupt", level=9, types={ "Fire", "Ground" }, moves={ "Flash Cannon", "Earth Power", "Fire Blast" }, model_GUID="f266b1", spawn_effect="Physical Attack", custom_scale=0.6, offset={x=0, y=0, z=-0.1} },
      { name="Clodsire",   level=10, types={ "Poison", "Ground" }, teraType="Ground", teraActive=true, moves={ "Protect", "Earthquake", "Poison Jab" }, model_GUID="f82830" } }
  },
  {
    guid = "49c164",
    trainerName = "Poppy",
    gen=9,
    gymTier = 9,
    pokemon = {
      { name="Bronzong",  level=9, types={ "Steel", "Psychic" }, moves={ "Ice Spinner", "Zen Headbutt", "Iron Head" }, model_GUID="422285"  },
      { name="Tinkaton", level=10, types={ "Steel", "Fairy" }, teraType="Steel", teraActive=true, moves={ "Play Rough", "Gigaton Hammer", "Stone Edge" }, model_GUID="f645b8" } }
  },
  {
    guid = "d2e704",
    trainerName = "Geeta",
    gen=9,
    gymTier = 10,
    pokemon = {
      { name="Avalugg", level=10,  types={ "Ice" }, moves={ "Protect", "Wide Guard", "Avalanche" }, model_GUID="fc938c", spawn_effect="Status Attack", custom_scale=0.5 },
      { name="Veluza", level=11, types={ "Water", "Psychic" }, moves={ "Psycho Cut", "Liquidation", "Ice Fang" }, model_GUID="a8b807" } }
  },
  {
    guid = "971eca",
    trainerName = "Geeta",
    gen=9,
    gymTier = 10,
    pokemon = {
      { name="Gogoat",  level=10,  types={ "Grass" }, moves={ "Leech Seed", "Aerial Ace", "Horn Leech" }, model_GUID="88d0b0", spawn_effect="Status Attack" },
      { name="Kingambit", level=11, types={ "Dark", "Steel" }, moves={ "Stone Edge", "Kowtow Cleave", "Iron Head" }, model_GUID="3568ce" } }
  },
  {
    guid = "275bc9",
    trainerName = "Geeta",
    gen=9,
    gymTier = 10,
    pokemon = {
      { name="Espathra", level=10,  types={ "Psychic" }, moves={ "Lumina Crash", "Dazzling Gleam", "Protect" }, model_GUID="e8259b" },
      { name="Glimmora", level=11, types={ "Rock", "Poison" }, teraType="Rock", teraActive=true, moves={ "Tera Blast", "Sludge Wave", "Spiky Shield" }, model_GUID="163a13"  } }
  },

  -- Ransei
  -- Gym Leaders
  {
    guid = "68b3fc",
    trainerName = "Hideyoshi",
    gen=10,
    gymTier = 1,
    pokemon = {
      { name="Pansear", level=2, types={ "Fire" }, moves={ "Flame Charge", "Bite", "Yawn" }, model_GUID="790b25" },
      { name="Monferno", level=2, types={ "Fire", "Fighting" }, moves={ "Ember", "Mach Punch", "Fury Swipes" }, model_GUID="c2e9c2", spawn_effect="Physical Attack" } }
  },
  {
    guid = "a49a60",
    trainerName = "Motochika",
    gen=10,
    gymTier = 1,
    pokemon = {
      { name="Panpour", level=2, types={ "Water" }, moves={ "Water Gun", "Bite", "Lick" }, model_GUID="446aff" },
      { name="Dewott", level=2, types={ "Water" }, moves={ "Water Gun", "Swords Dance", "Fury Cutter" }, model_GUID="4544f3", spawn_effect="Physical Attack" } }
  },
  {
    guid = "141299",
    trainerName = "Motonari",
    gen=10,
    gymTier = 1,
    pokemon = {
      { name="Pansage", level=2, types={ "Grass" }, moves={ "Vine Whip", "Bite", "Leech Seed" }, model_GUID="0febb6" },
      { name="Servine", level=2, types={ "Grass" }, moves={ "Vine Whip", "Coil", "Slam" }, model_GUID="cb1ef6", offset={x=0, y=0, z=0.1} } }
  },
  {
    guid = "dd2426",
    trainerName = "Yoshimoto",
    gen=10,
    gymTier = 2,
    pokemon = {
      { name="Pineco", level=3, types={ "Bug" }, moves={ "Bug Bite", "Rollout", "Protect" }, model_GUID="75f82e", spawn_effect="Physical Attack" },
      { name="Anorith", level=3, types={ "Rock", "Bug" }, moves={ "Fury Cutter", "Rock Blast", "Brine" }, model_GUID="5b5bf7" } }
  },
  {
    guid = "6781d6",
    trainerName = "Shingen",
    gen=10,
    gymTier = 3,
    pokemon = {
      { name="Wooper", level=3, types={ "Water", "Ground" }, moves={ "Aqua Tail", "Earthquake", "Slam" }, model_GUID="5a0e02" },
      { name="Rhyhorn", level=4, types={ "Ground", "Rock" }, moves={ "Rock Blast", "Earthquake", "Megahorn" }, model_GUID="99c208" } }
  },
  {
    guid = "af7d3a",
    trainerName = "Kotarō",
    gen=10,
    gymTier = 4,
    pokemon = {
      { name="Zweilous", level=4, types={ "Dark", "Dragon" }, moves={ "Assurance", "Dragon Pulse", "Headbutt" }, model_GUID="bbc115", spawn_effect="Physical Attack" },
      { name="Zoroark", level=4, types={ "Dark" }, moves={ "Night Daze", "Brick Break", "Shadow Claw" }, model_GUID="fb10d4" } }
  },
  {
    guid = "8d9be6",
    trainerName = "Masamune",
    gen=10,
    gymTier = 5,
    pokemon = {
      { name="Scyther", level=5, types={ "Bug", "Flying" }, moves={ "Air Slash", "Fury Cutter", "Slash" }, model_GUID="a98dea" },
      { name="Braviary", level=6, types={ "Normal", "Flying" }, moves={ "Aerial Ace", "Superpower", "Crush Claw" }, model_GUID="a5fe68" } }
  },
  {
    guid = "9247d1",
    trainerName = "Nene",
    gen=10,
    gymTier = 5,
    pokemon = {
      { name="Croagunk", level=5, types={ "Poison", "Fighting" }, moves={ "Poison Jab", "Low Kick", "Sucker Punch" }, model_GUID="924639" },
      { name="Crobat", level=6, types={ "Poison", "Flying" }, moves={ "Venoshock", "Air Slash", "Leech Life" }, model_GUID="40d4cd" } }
  },
  {
    guid = "507164",
    trainerName = "Mitsuhide",
    gen=10,
    gymTier = 6,
    pokemon = {
      { name="Lapras", level=5, types={ "Water", "Ice" }, moves={ "Ice Beam", "Water Pulse", "Hail" }, model_GUID="ae0d8f", custom_scale=0.9, offset={x=0, y=0.2, z=-0.1} },
      { name="Articuno", level=6, types={ "Ice", "Flying" }, moves={ "Ice Beam", "Air Cutter", "Ancient Power" }, model_GUID="fd860a" } }
  },
  {
    guid = "1271dc",
    trainerName = "Ieyasu",
    gen=10,
    gymTier = 7,
    pokemon = {
      { name="Aggron", level=7, types={ "Steel", "Rock" }, moves={ "Iron Head", "Rock Slide", "Earth Power" }, model_GUID="ce1109", custom_scale=0.9 },
      { name="Registeel", level=7, types={ "Steel" }, moves={ "Flash Cannon", "Zap Cannon", "Superpower" }, model_GUID="7a9464", spawn_effect="Status Attack" } }
  },
  {
    guid = "54bd2c",
    trainerName = "Nō",
    gen=10,
    gymTier = 8,
    pokemon = {
      { name="Chandelure", level=8, types={ "Ghost", "Fire" }, moves={ "Shadow Ball", "Inferno", "Pain Split" }, model_GUID="de2e80" },
      { name="Mismagius", level=8, types={ "Ghost" }, moves={ "Hex", "Mystical Fire", "Magical Leaf" }, model_GUID="a81efd", spawn_effect="Physical Attack" } }
  },

  -- Elite Four
  {
    guid = "ca9dbd",
    trainerName = "Keiji",
    gen=10,
    gymTier = 9,
    pokemon = {
      { name="Bastiodon", level=9, types={ "Rock", "Steel" }, moves={ "Ancient Power", "Heavy Slam", "Avalanche" }, model_GUID="9d8d6d", custom_scale=0.7 },
      { name="Terrakion", level=10, types={ "Rock", "Fighting" }, moves={ "Rock Slide", "Sacred Sword", "Aerial Ace" }, model_GUID="f48c6a", custom_scale=0.65 } }
  },
  {
    guid = "394dfd",
    trainerName = "Kiyomasa",
    gen=10,
    gymTier = 9,
    pokemon = {
      { name="Tyranitar", level=9, types={ "Rock", "Dark" }, moves={ "Stone Edge", "Crunch", "Fire Fang" }, model_GUID="46679d" },
      { name="Haxorus", level=10, types={ "Dragon" }, moves={ "Breaking Swipe", "Assurance", "Focus Blast" }, model_GUID="18b97d" } }
  },
  {
    guid = "514f43",
    trainerName = "Masanori",
    gen=10,
    gymTier = 9,
    pokemon = {
      { name="Drapion", level=9, types={ "Poison", "Dark" }, moves={ "Night Slash", "Venoshock", "Ice Fang" }, model_GUID="5178e7", custom_scale=0.8 },
      { name="Krookodile", level=10, types={ "Ground", "Dark" }, moves={ "Knock Off", "Scorching Sands", "Fire Fang" }, model_GUID="1455fe" } }
  },
  {
    guid = "215b28",
    trainerName = "Mitsunari",
    gen=10,
    gymTier = 9,
    pokemon = {
      { name="Scizor", level=9, types={ "Bug", "Steel" }, moves={ "Flash Cannon", "Lunge", "Air Cutter" }, model_GUID="334cc6", spawn_effect="Status Attack" },
      { name="Bisharp", level=10, types={ "Dark", "Steel" }, moves={ "Iron Head", "Night Slash", "Guillotine" }, model_GUID="753f92" } }
  },
  -- Champion
  {
    guid = "fbd798",
    trainerName = "Nobunaga",
    gen=10,
    gymTier = 10,
    pokemon = {
      { name="Zekrom", level=10, types={ "Dragon", "Electric" }, moves={ "Dragon Breath", "Bolt Strike", "Shadow Claw" }, model_GUID="463700", spawn_effect="Status Attack", offset={x=0, y=1.0, z=0}, idle_effect="Run" },
      { name="Rayquaza", level=11, types={ "Dragon", "Flying" }, moves={ "Breaking Swipe", "Hurricane", "Focus Blast" }, model_GUID="ec9902" } }
  },
  {
    guid = "856fd3",
    trainerName = "Oichi",
    gen=10,
    gymTier = 10,
    pokemon = {
      { name="Espeon", level=10, types={ "Psychic" }, moves={ "Future Sight", "Alluring Voice", "Grass Knot" }, model_GUID="c8a52c" },
      { name="Wigglytuff", level=11, types={ "Normal", "Fairy" }, moves={ "Covet", "Play Rough", "Gyro Ball" }, model_GUID="499574", spawn_effect="Physical Attack" } }
  },
  {
    guid = "5de99c",
    trainerName = "Ranmaru",
    gen=10,
    gymTier = 10,
    pokemon = {
      { name="Dragonite", level=10, types={ "Dragon", "Flying" }, moves={ "Dragon Rush", "Hurricane", "Stone Edge" }, model_GUID="fa47e5" },
      { name="Lucario", level=11, types={ "Fighting", "Steel" }, moves={ "Aura Sphere", "Meteor Mash", "Stone Edge" }, model_GUID="6f7542" } }
  },

  -- Hisui
  -- Gym Leaders
  {
    guid = "2cc508",
    trainerName = "Mai",
    gen=11,
    gymTier = 1,
    pokemon = {
      { name="Munchlax", level=2, types={ "Normal" }, moves={ "Tackle", "Rollout", "Lick" }, model_GUID="7315d0", spawn_effect="Physical Attack" },
      { name="Wyrdeer",  level=2, types={ "Normal", "Psychic" }, moves={ "Tackle", "Calm Mind", "Astonish" }, model_GUID="91a281", offset={x=0, y=0.05, z=0} } }
  },
  {
    guid = "c03171",
    trainerName = "Lian",
    gen=11,
    gymTier = 1,
    pokemon = {
      { name="Goomy", level=2, types={ "Dragon" }, moves={ "Bubble", "Acid Armor", "Absorb" }, model_GUID="07df6f" },
      { name="Kleavor", level=2, types={ "Bug", "Rock" }, moves={ "Aerial Ace", "Double Hit", "X-Scissor" }, model_GUID="21f652", offset={x=0, y=0.1, z=0} } }
  },
  {
    guid = "ecf8e9",
    trainerName = "Arezu",
    gen=11,
    gymTier = 2,
    pokemon = {
      { name="Bronzor", level=3, types={ "Steel", "Psychic" }, moves={ "Hex", "Confusion", "Iron Defense" }, model_GUID="f3570a", spawn_effect="Physical Attack" },
      { name="Hisuian Lilligant", level=3, types={ "Grass", "Fighting" }, moves={ "Victory Dance", "Poison Jab", "Energy Ball" }, model_GUID="365d50", offset={x=0, y=0.03, z=-0.09} } }
  },
  {
    guid = "7db392",
    trainerName = "Calaba",
    gen=11,
    gymTier = 3,
    pokemon = {
      { name="Bibarel", level=3, types={ "Normal", "Water" }, moves={ "Water Gun", "Rollout", "Crunch" }, model_GUID="8d4c2c" },
      { name="Ursaluna", level=4, types={ "Ground", "Normal" }, moves={ "Bulldoze", "Play Rough", "Fury Swipes" }, model_GUID="38ea2d", custom_scale=0.7, offset={x=0, y=0.8, z=0} } }
  },
  {
    guid = "c1c966",
    trainerName = "Palina",
    gen=11,
    gymTier = 4,
    pokemon = {
      { name="Hisuian Growlithe", level=4, types={ "Fire", "Rock" }, moves={ "Ember", "Play Rough", "Snarl" }, model_GUID="c7e078", offset={x=0, y=0.3, z=-0.05} },
      { name="Hisuian Arcanine", level=4, types={ "Fire", "Rock" }, moves={ "Fire Fang", "Wild Charge", "Rock Slide" }, model_GUID="9428fb", offset={x=0, y=0.04, z=-0.10} } }
  },
  {
    guid = "064893",
    trainerName = "Iscan",
    gen=11,
    gymTier = 4,
    pokemon = {
      { name="Hisuian Basculin", level=4, types={ "Water" }, moves={ "Aqua Jet", "Zen Headbutt", "Ice Fang" }, model_GUID="27803e" },
      { name="Basculegion", level=4, types={ "Water", "Ghost" }, moves={ "Aqua Jet", "Bite", "Hex" }, model_GUID="252ffe", offset={x=0, y=0.6, z=0} } }
  },
  {
    guid = "466f3b",
    trainerName = "Ingo",
    gen=11,
    gymTier = 5,
    pokemon = {
      { name="Gliscor", level=5, types={ "Ground", "Flying" }, moves={ "Aerial Ace", "Mud Bomb", "Poison Jab" }, model_GUID="0389d0" },
      { name="Sneasler", level=6, types={ "Fighting", "Poison" }, moves={ "Slash", "Rock Smash", "Poison Jab" }, model_GUID="ce5036" } }
  },
  {
    guid = "6d7999",
    trainerName = "Melli",
    gen=11,
    gymTier = 6,
    pokemon = {
      { name="Skuntank", level=5, types={ "Poison", "Dark" }, moves={ "Poison Jab", "Flamethrower", "Night Slash" }, model_GUID="142926" },
      { name="Hisuian Electrode", level=6, types={ "Electric", "Grass" }, moves={ "Energy Ball", "Charge Beam", "Swift" }, model_GUID="27cb49", offset={x=0, y=0.2, z=-0.09} } }
  },
  {
    guid = "420839",
    trainerName = "Sabi",
    gen=11,
    gymTier = 7,
    pokemon = {
      { name="Rhyperior", level=7, types={ "Ground", "Rock" }, moves={ "Rock Slide", "High Horsepower", "Megahorn" }, model_GUID="860bbc", spawn_effect="Physical Attack", custom_scale=0.65 },
      { name="Hisuian Braviary", level=7, types={ "Psychic", "Flying" }, moves={ "Esper Wing", "Air Slash", "Shadow Claw" }, model_GUID="706683", offset={x=0, y=0.1, z=-0.07}, custom_scale=0.6 } }
  },
  {
    guid = "3ac394",
    trainerName = "Gaeric",
    gen=11,
    gymTier = 8,
    pokemon = {
      { name="Froslass", level=8, types={ "Ice", "Ghost" }, moves={ "Ice Shard", "Shadow Ball", "Thunderbolt" }, model_GUID="21d87a" },
      { name="Hisuian Avalugg", level=8, types={ "Ice", "Rock" }, moves={ "Stone Edge", "Mountain Gale", "Iron Head" }, model_GUID="9c5c23", custom_scale=0.45, offset={x=0, y=0.03, z=-0.15} } }
  },

  -- Elite Four
  {
    guid = "3fe5f8",
    trainerName = "Zisu",
    gen=11,
    gymTier = 9,
    pokemon = {
      { name="Infernape", level=9, types={ "Fire", "Fighting" }, moves={ "Raging Fury", "Mach Punch", "Stone Edge" }, model_GUID="b04364", custom_scale=0.85 },
      { name="Hisuian Zoroark", level=10, types={ "Normal", "Ghost" }, moves={ "Bitter Malice", "Swift", "Dark Pulse" }, model_GUID="5f7ab8", offset={x=0, y=0.03, z=-0.09} } }
  },
  {
    guid = "365ed7",
    trainerName = "Kamado",
    gen=11,
    gymTier = 9,
    pokemon = {
      { name="Hisuian Braviary", level=9, types={ "Psychic", "Flying" }, moves={ "Esper Wing", "Air Slash", "Shadow Claw" }, model_GUID="706683", offset={x=0, y=0.1, z=-0.07}, custom_scale=0.6 },
      { name="Ursaluna", level=10, types={ "Ground", "Normal" }, moves={ "Headlong Rush", "Slash", "Ice Punch" }, model_GUID="38ea2d", custom_scale=0.7, offset={x=0, y=0.8, z=0} } }
  },
  {
    guid = "2e4416",
    trainerName = "Irida",
    gen=11,
    gymTier = 9,
    pokemon = {
      { name="Glaceon", level=9, types={ "Ice" }, moves={ "Ice Beam", "Mimic", "Mirror Coat" }, model_GUID="8884ba" },
      { name="Flareon", level=10, types={ "Fire" }, moves={ "Fire Blast", "Mimic", "Iron Tail" }, model_GUID="323c42" } }
  },
  {
    guid = "818746",
    trainerName = "Adaman",
    gen=11,
    gymTier = 9,
    pokemon = {
      { name="Leafeon", level=9, types={ "Grass" }, moves={ "Leaf Blade", "Mimic", "Iron Tail" }, model_GUID="9f14e6" },
      { name="Vaporeon", level=10, types={ "Water" }, moves={ "Scald", "Mimic", "Blizzard" }, model_GUID="b8e8a6" } }
  },
  -- Champion
  {
    guid = "924e73",
    trainerName = "Volo",
    gen=11,
    gymTier = 10,
    pokemon = {
      { name="Spiritomb", level=10, types={ "Ghost", "Dark" }, moves={ "Dream Eater", "Shadow Ball", "Dark Pulse" }, model_GUID="0a6f0d" },
      { name="Hisuian Arcanine", level=11, types={ "Fire", "Rock" }, moves={ "Raging Fury", "Rock Slide", "Reversal" }, model_GUID="9428fb", offset={x=0, y=0.04, z=-0.10} } }
  },
  {
    guid = "198d27",
    trainerName = "Volo",
    gen=11,
    gymTier = 10,
    pokemon = {
      { name="Togekiss", level=10, types={ "Fairy", "Flying" }, moves={ "Moonblast", "Air Slash", "Future Sight" }, model_GUID="94ed87" },
      { name="Garchomp", level=11, types={ "Dragon", "Ground" }, moves={ "Dragon Claw", "Earth Power", "Fire Blast" }, model_GUID="232447", spawn_effect="Status Attack", custom_scale=0.8, offset={x=0, y=0, z=-0.05} } }
  },
  {
    guid = "36dccd",
    trainerName = "Volo",
    gen=11,
    gymTier = 10,
    pokemon = {
      { name="Roserade", level=10, types={ "Grass", "Poison" }, moves={ "Poison Jab", "Petal Dance", "Spikes" }, model_GUID="62a471", spawn_effect="Physical Attack" },
      { name="Lucario", level=11, types={ "Fighting", "Steel" }, moves={ "Aura Sphere", "Bullet Punch", "Protect" }, model_GUID="6f7542" } }
  },

  -- Orange Islands
  -- Gym Leaders
  {
    guid = "e2f50e",
    trainerName = "Cissy",
    gen=12,
    gymTier = 1,
    pokemon = {
      { name="Seadra", level=2,  types={ "Water" },  moves={ "Water Gun", "Smokescreen", "Swift" }, model_GUID="9c2ba7" },
      { name="Blastoise", level=3, types={ "Water" }, moves={ "Water Gun", "Bite", "Body Slam" }, model_GUID="54ea11" } }
  },
  {
    guid = "73ae15",
    trainerName = "Danny",
    gen=12,
    gymTier = 3,
    pokemon = {
      { name="Nidoqueen", level=4,  types={ "Poison", "Ground" }, moves={ "Ice Beam", "Earthquake", "Body Slam" }, model_GUID="c91f41" },
      { name="Scyther", level=5, types={ "Bug", "Flying" }, moves={ "Fury Cutter", "Wing Attack", "Slash" }, model_GUID="a98dea" } }
  },
  {
    guid = "304dc9",
    trainerName = "Rudy",
    gen=12,
    gymTier = 5,
    pokemon = {
      { name="Exeggutor", level=5,  types={ "Grass", "Psychic" }, moves={ "Psychic", "Mega Drain", "Stomp" }, model_GUID="cc6a34" },
      { name="Starmie", level=6, types={ "Water", "Psychic" }, moves={ "Psychic", "Bubble Beam", "Thunderbolt" }, model_GUID="1072a5" } }
  },
  {
    guid = "fc3786",
    trainerName = "Luana",
    gen=12,
    gymTier = 7,
    pokemon = {
      { name="Alakazam", level=7,  types={ "Psychic" }, moves={ "Psychic", "Hyper Beam", "Dynamic Punch" }, model_GUID="c3804e" },
      { name="Marowak", level=8, types={ "Ground" }, moves={ "Bonemerang", "Thrash", "Counter" }, model_GUID="c9b2ac" } }
  },

  -- Elite Four + Champion
  {
    guid = "fa7b5d",
    trainerName = "Drake",
    gen=12,
    gymTier = 10,
    pokemon = {
      { name="Onix", level=8,  types={ "Rock", "Ground" }, moves={ "Skull Bash", "Rock Slide", "Dig" }, model_GUID="f5b6ad", custom_scale=0.7, offset={x=0,y=0,z=0.3} },
      { name="Gengar", level=9, types={ "Ghost", "Poison" }, moves={ "Sludge Bomb", "Dream Eater", "Night Shade" }, model_GUID="4638bc" } }
  },
  {
    guid = "f75d9e",
    trainerName = "Drake",
    gen=12,
    gymTier = 10,
    pokemon = {
      { name="Venusaur", level=8,  types={ "Grass", "Poison" }, moves={ "Sludge Bomb", "Razor Leaf", "Earthquake" }, model_GUID="452ac8", spawn_effect="Physical Attack", custom_scale=0.6, offset={x=0,y=0,z=-0.1} },
      { name="Electabuzz", level=9, types={ "Electric" }, moves={ "Hyper Beam", "Counter", "Thunder" }, model_GUID="ad494f" } }
  },
  {
    guid = "ac191c",
    trainerName = "Drake",
    gen=12,
    gymTier = 10,
    pokemon = {
      { name="Ditto", level=8,  types={ "Normal" }, moves={ "Transform", "Transform", "Transform" }, model_GUID="babb44" },
      { name="Dragonite", level=9, types={ "Dragon", "Flying" }, moves={ "Thunder", "Ice Beam", "Dragon Rage" }, model_GUID="fa47e5" } }
  },
}

titanData = 
{
  {
    guid = "7564fb",
    gen=9,
    gymTier = 12,
    name="Titan Klawf",
    level=5, 
    types={ "Rock" },
    moves={ "Vise Grip", "Rock Smash", "Rock Tomb" },
    model_GUID="54bceb",
    custom_scale = 2.5
  },
  {
    guid = "3795a8",
    gen=9,
    gymTier = 12,
    name="Titan Tatsugiri",
    level=5, 
    types={ "Dragon", "Water" },
    moves={ "Icy Wind", "Muddy Water", "Dragon Pulse" },
    model_GUID="ef9424",
    custom_scale = 12.0
  },
  {
    guid = "07a6ab",
    gen=9,
    gymTier = 12,
    name="Titan Bombirdier",
    level=5, 
    types={ "Flying", "Dark" },
    moves={ "Payback", "Pluck", "Rock Slide" },
    model_GUID="207148",
    custom_scale = 2.5
  },
  {
    guid = "ad1ecd",
    gen=9,
    gymTier = 12,
    name="Titan Great Tusk",
    level=5, 
    types={ "Ground", "Fighting" },
    moves={ "Brick Break", "Iron Head", "Knock Off" },
    model_GUID="177723",
    custom_scale = 1.2
  },
  {
    guid = "a48265",
    gen=9,
    gymTier = 12,
    name="Titan Iron Treads",
    level=5, 
    types={ "Ground", "Steel" },
    moves={ "Stomping Tantrum", "Iron Head", "Knock Off" },
    model_GUID="128a66",
    custom_scale = 2.5
  },
  {
    guid = "68b218",
    gen = 9,
    gymTier = 12,
    name="Titan Orthworm",
    level=5, 
    types={ "Steel" },
    moves={ "Sandstorm", "Iron Tail", "Headbutt" },
    model_GUID="968aa9",
    custom_scale = 2.5
  }
}

typeData =
{
  { name = "Bug",      effective = { "Grass", "Psychic", "Dark" },                    weak = { "Fire", "Flying", "Fighting", "Poison", "Ghost", "Fairy", "Steel" } },
  { name = "Dark",     effective = { "Ghost", "Psychic" },                            weak = { "Fighting", "Dark", "Fairy" } },
  { name = "Dragon",   effective = { "Dragon" },                                      weak = { "Steel", "Fairy" } },
  { name = "Electric", effective = { "Water", "Flying" },                             weak = { "Electric", "Grass", "Dragon", "Ground" } },
  { name = "Fairy",    effective = { "Fighting", "Dragon", "Dark" },                  weak = { "Fire", "Poison", "Steel" } },
  { name = "Fighting", effective = { "Normal", "Rock", "Ice", "Dark", "Steel" },      weak = { "Flying", "Poison", "Psychic", "Fairy", "Bug", "Ghost" } },
  { name = "Fire",     effective = { "Grass", "Bug", "Ice", "Steel" },                weak = { "Water", "Fire", "Rock", "Dragon" } },
  { name = "Flying",   effective = { "Grass", "Fighting", "Bug" },                    weak = { "Rock", "Electric", "Steel" } },
  { name = "Ghost",    effective = { "Ghost", "Psychic" },                            weak = { "Dark", "Normal" } },
  { name = "Grass",    effective = { "Water", "Rock", "Ground" },                     weak = { "Grass", "Fire", "Flying", "Bug", "Poison", "Dragon", "Steel" } },
  { name = "Ground",   effective = { "Fire", "Electric", "Rock", "Poison", "Steel" }, weak = { "Grass", "Bug", "Flying" } },
  { name = "Ice",      effective = { "Grass", "Flying", "Ground", "Dragon" },         weak = { "Water", "Fire", "Ice", "Steel" } },
  { name = "Normal",   effective = { "None" },                                        weak = { "Rock", "Steel", "Ghost" } },
  { name = "Poison",   effective = { "Grass", "Fairy" },                              weak = { "Rock", "Ground", "Poison", "Ghost", "Steel" } },
  { name = "Psychic",  effective = { "Fighting", "Poison" },                          weak = { "Psychic", "Steel", "Dark" } },
  { name = "Rock",     effective = { "Fire", "Flying", "Ice", "Bug" },                weak = { "Fighting", "Ground", "Steel" } },
  { name = "Steel",    effective = { "Ice", "Rock", "Fairy" },                        weak = { "Fire", "Water", "Electric", "Steel" } },
  { name = "Water",    effective = { "Fire", "Rock", "Ground" },                      weak = { "Water", "Grass", "Dragon" } }
}

immunityData =
{
  -- Table of the immunities.
  { name = "Normal",   immune = { "Ghost" } },
  { name = "Fighting", immune = { "Ghost" } },
  { name = "Poison",   immune = { "Steel" } },
  { name = "Ground",   immune = { "Flying" } },
  { name = "Ghost",    immune = { "Normal" } },
  { name = "Electric", immune = { "Ground" } },
  { name = "Psychic",  immune = { "Dark" } },
  { name = "Dragon",   immune = { "Fairy" } },

  -- All others have no immunities.
  { name = "Bug",      immune = { } },
  { name = "Dark",     immune = { } },
  { name = "Fairy",    immune = { } },
  { name = "Fire",     immune = { } },
  { name = "Flying",   immune = { } },
  { name = "Grass",    immune = { } },
  { name = "Ice",      immune = { } },
  { name = "Rock",     immune = { } },
  { name = "Steel",    immune = { } },
  { name = "Water",    immune = { } }
}

-- TODO: Convert this to a naming convention.
zCrystalData =
{
  { guid = "2c591c", move = "Gigavolt Havoc",           overrides = {{ guids = { "a17986", "e5c82a" }, move = "Catastropika" }, 
                                                                     { guids = { "77331c", "d7835d" }, move = "10MV Thunderbolt" },
                                                                     { guids = { "65a373", "1e53ce", "ef1a51" }, move = "Stoked Sparksurfer" }}
  },
  { guid = "337c73", move = "Supersonic Skystrike" },
  { guid = "474469", move = "Savage Spin-Out" },
  { guid = "9da33f", move = "Black Hole Eclipse",       overrides = {{ guids = { "3f1566", "38e353", "45ba93" }, move = "Malicious Moonsault" } } },
  { guid = "a5f921", move = "Devastating Drake",        overrides = {{ guids = { "51cc27", "6377a7", "79e0d1" }, move = "Clangorous Soulblaze" } } },
  { guid = "b0ba3a", move = "Never-Ending Nightmare",   overrides = {{ guids = { "d50f86", "2416c8", "9bef15" }, move = "Sinister Arrow Raid" }, 
                                                                     { guids = { "8e8527" }, move = "Soul-Stealing 7* Strike" },
                                                                     { guids = { "d118b4", "2c0206" }, move = "Menacing Moonraze Maelstrom" }}
  },
  { guid = "88875f", move = "Bloom Doom" },
  { guid = "ca8a3a", move = "Tectonic Rage" },
  { guid = "21a039", move = "Twinkle Tackle",           overrides = {{ guids = { "ba3859" }, move = "Let's Snuggle Forever" }, 
                                                                     { guids = { "c5bd66", "c2d946", "d099d1", "573f6c" }, move = "Guardian of Alola" }}
  },
  { guid = "bbbb45", move = "Shattered Psyche",         overrides = {{ guids = { "d68dfc" }, move = "Genesis Supernova" }, 
                                                                     { guids = { "ec14da", "c65377", "d63d82", "6366eb", "2f92e5", "b01111", "1bdda7", "370a4c" }, move = "Light That Burns The Sky" }}
  },
  { guid = "130d52", move = "Breakneck Blitz",          overrides = {{ guids = { "690870" }, move = "Extreme Evoboost" }, 
                                                                     { guids = { "81f09a", "a017f9" }, move = "Pulverizing Pancake" }}
  },
  { guid = "84dde0", move = "Acid Downpour" },
  { guid = "6a40b4", move = "Subzero Slammer" },
  { guid = "bac4e8", move = "Hydro Vortex",             overrides = {{ guids = { "de4d6a", "d62cf2", "4026a1" }, move = "Oceanic Operetta" } } },
  { guid = "3987a4", move = "Corkscrew Crash",          overrides = {{ guids = { "2337ba", "5228d9" }, move = "Searing Sunraze Smash" } } },
  { guid = "9fc23f", move = "Inferno Overdrive" },
  { guid = "f18fd0", move = "All-Out Pummeling" },
  { guid = "7bbd40", move = "Continental Crush",        overrides = {{ guids = { "34164a", "802af7", "9ecf49", "5411a7", "9af49a", "ff8dda" }, move = "Splintered Stormshards" } } }
}

-- TODO: Convert this to a naming convention.
teraData =
{
  { guid = "e80e03", type = "Steel" },
  { guid = "0af6a7", type = "Water" },
  { guid = "cd8067", type = "Rock" },
  { guid = "49d049", type = "Psychic" },
  { guid = "56d218", type = "Poison" },
  { guid = "040852", type = "Normal" },
  { guid = "9ba842", type = "Ice" },
  { guid = "967424", type = "Ground" },
  { guid = "75d7d9", type = "Grass" },
  { guid = "456160", type = "Ghost" },
  { guid = "11194a", type = "Flying" },
  { guid = "8863f0", type = "Fire" },
  { guid = "f53d3e", type = "Fighting" },
  { guid = "5eefbb", type = "Fairy" },
  { guid = "ff493b", type = "Electric" },
  { guid = "acf70e", type = "Dragon" },
  { guid = "27f2e3", type = "Dark" },
  { guid = "3bd105", type = "Bug" },
  { guid = "b0c7d0", type = "Stellar" }
}

-- Table containing shiny data. Not all Pokemon have shiny GUIDs, so users must double check the shinyModelGuid field.
local shiny_guid_table = {
  ["Ash's Pikachu"] = nil,
  ["Joey's Rattata"] = nil,
  ["Bulbasaur"] = "ce107a",
  ["Ivysaur"] = "5f9210",
  ["Venusaur"] = "200def",
  ["Charmander"] = "5c53a0",
  ["Charmeleon"] = "a92175",
  ["Charizard"] = "d9c7c4",
  ["Squirtle"] = "e446b9",
  ["Wartortle"] = "19594e",
  ["Blastoise"] = "8e8367",
  ["Caterpie"] = "5e9618",
  ["Metapod"] = "0576bd",
  ["Butterfree"] = "4a10c4",
  ["Weedle"] = "88a17f",
  ["Kakuna"] = "e31542",
  ["Beedrill"] = "3200d4",
  ["Pidgey"] = "916538",
  ["Pidgeotto"] = "980fcf",
  ["Pidgeot"] = "f77969",
  ["Rattata"] = "356a8e",
  ["Raticate"] = "9df4c9",
  ["Spearow"] = "d65ca8",
  ["Fearow"] = "dc62af",
  ["Ekans"] = "868356",
  ["Arbok"] = "581137",
  ["Pikachu"] = "0813a3",
  ["Raichu"] = "9e168b",
  ["Sandshrew"] = "7897ae",
  ["Sandslash"] = "dc4e80",
  ["Nidoran (F)"] = "d57fe7",
  ["Nidorina"] = "8259b1",
  ["Nidoqueen"] = "c3d25c",
  ["Nidoran (M)"] = "856c3a",
  ["Nidorino"] = "9eebbc",
  ["Nidoking"] = "8e9063",
  ["Clefairy"] = "0b4be2",
  ["Clefable"] = "f9e97d",
  ["Mega Clefable"] = "a52e5f",
  ["Vulpix"] = "77515c",
  ["Ninetales"] = "f93407",
  ["Jigglypuff"] = "d17351",
  ["Wigglytuff"] = "b88e1f",
  ["Zubat"] = "fc68e4",
  ["Golbat"] = "d8e4d1",
  ["Oddish"] = "9377a5",
  ["Gloom"] = "8e146d",
  ["Vileplume"] = "e44d78",
  ["Paras"] = "f8dfb3",
  ["Parasect"] = "a4e788",
  ["Venonat"] = "7b0f04",
  ["Venomoth"] = "434604",
  ["Diglett"] = "b1e655",
  ["Dugtrio"] = "dc3cf3",
  ["Meowth"] = "5aaf52",
  ["Persian"] = "eadc0d",
  ["Psyduck"] = "0128eb",
  ["Golduck"] = "cb9ff3",
  ["Mankey"] = "cba5af",
  ["Primeape"] = "5efaed",
  ["Growlithe"] = "05f9d8",
  ["Arcanine"] = "817577",
  ["Poliwag"] = "6bacb5",
  ["Poliwhirl"] = "7b9714",
  ["Poliwrath"] = "82369a",
  ["Abra"] = "cef513",
  ["Kadabra"] = "2be0c1",
  ["Alakazam"] = "d3b763",
  ["Machop"] = "9893dc",
  ["Machoke"] = "cdebfd",
  ["Machamp"] = "b8d22b",
  ["Bellsprout"] = "6ab8f8",
  ["Weepinbell"] = "199435",
  ["Victreebel"] = "6f209a",
  ["Mega Victreebel"] = "134092",
  ["Tentacool"] = "9e2aa7",
  ["Tentacruel"] = "4be01c",
  ["Geodude"] = "fb3e5e",
  ["Graveler"] = "20223a",
  ["Golem"] = "a5ba0c",
  ["Ponyta"] = "51b75a",
  ["Rapidash"] = "e05be1",
  ["Slowpoke"] = "e3e18e",
  ["Slowbro"] = "dd9fbd",
  ["Magnemite"] = "f732d3",
  ["Magneton"] = "7088a6",
  ["Farfetch\'d"] = "51f36f",
  ["Doduo"] = "2f40a5",
  ["Dodrio"] = "58184b",
  ["Seel"] = "72c49c",
  ["Dewgong"] = "da364d",
  ["Grimer"] = "d62fbf",
  ["Muk"] = "3cfcc4",
  ["Shellder"] = "2634f4",
  ["Cloyster"] = "a11b62",
  ["Gastly"] = "5739a2",
  ["Haunter"] = "56f3c2",
  ["Gengar"] = "bd3d92",
  ["Onix"] = "55561b",
  ["Crystal Onix"] = nil,
  ["Drowzee"] = "b6768e",
  ["Hypno"] = "b8ddf1",
  ["Krabby"] = "77f102",
  ["Kingler"] = "801efe",
  ["Voltorb"] = "3a7746",
  ["Electrode"] = "f5e890",
  ["Exeggcute"] = "ac5805",
  ["Exeggutor"] = "9bf3d1",
  ["Cubone"] = "c7dcf7",
  ["Marowak"] = "4ace60",
  ["Hitmonlee"] = "82d623",
  ["Hitmonchan"] = "cc6ef1",
  ["Lickitung"] = "d245d6",
  ["Koffing"] = "21f4d8",
  ["Weezing"] = "b908a3",
  ["Rhyhorn"] = "c00df6",
  ["Rhydon"] = "9162c8",
  ["Chansey"] = "a13745",
  ["Tangela"] = "716adc",
  ["Kangaskhan"] = "238adc",
  ["Horsea"] = "4f467c",
  ["Seadra"] = "5d7ef1",
  ["Goldeen"] = "ed87e7",
  ["Seaking"] = "f6c5eb",
  ["Staryu"] = "5c7655",
  ["Starmie"] = "466695",
  ["Mega Starmie"] = "97a6ac",
  ["Mr. Mime"] = "2667ff",
  ["Scyther"] = "03cf09",
  ["Jynx"] = "fadfa4",
  ["Electabuzz"] = "ba0139",
  ["Magmar"] = "1782d2",
  ["Pinsir"] = "9929fe",
  ["Tauros"] = "3c3ab0",
  ["Magikarp"] = "b2685b",
  ["Gyarados"] = nil, --TODO: GRAB RED GYARADOS MODEL GUID
  ["Lapras"] = "59749d",
  ["Ditto"] = "b1b7b1",
  ["Eevee"] = "e61016",
  ["Vaporeon"] = "50b824",
  ["Jolteon"] = "1575fc",
  ["Flareon"] = "81d0f0",
  ["Porygon"] = "50b4a7",
  ["Omanyte"] = "965d80",
  ["Omastar"] = "d3b126",
  ["Kabuto"] = "c6da4c",
  ["Kabutops"] = "a3e4a4",
  ["Aerodactyl"] = "704548",
  ["Snorlax"] = "d5c0c0",
  ["Articuno"] = "f4f334",
  ["Zapdos"] = "d2fe8e",
  ["Moltres"] = "0fe6bd",
  ["Dratini"] = "e8a2a0",
  ["Dragonair"] = "24c3db",
  ["Dragonite"] = "33a9dc",
  ["Mega Dragonite"] = "f1f607",
  ["Mewtwo"] = "e26cda",
  ["Armored Mewtwo"] = "db1511",
  ["Shadow Mewtwo"] = "7a27c9",
  ["Mew"] = "6f68b4",
  ["MissingNo"] = nil,
  ["MissingNo2"] = nil,
  ["Mega Blastoise"] = "89413e",
  ["GMax Blastoise"] = "73219f",
  ["Mega Venusaur"] = "2a7035",
  ["GMax Venusaur"] = "c23539",
  ["Mega Charizard X"] = "c16715",
  ["Mega Charizard Y"] = "5dcfa8",
  ["GMax Charizard"] = "b1f056",
  ["Mega Alakazam"] = "9db6ff",
  ["GMax Pikachu"] = "079147",
  ["GMax Butterfree"] = "ddd28c",
  ["GMax Machamp"] = "45d095",
  ["GMax Meowth"] = "4913be",
  ["Mega Pidgeot"] = "1ca0ee",
  ["Mega Beedrill"] = "b92c69",
  ["GMax Gengar"] = "41c4e5",
  ["Mega Slowbro"] = "bbe440",
  ["GMax Kingler"] = "83b505",
  ["Mega Pinsir"] = "879011",
  ["Mega Kangaskhan"] = "2cd83d",
  ["GMax Lapras"] = "9ee869",
  ["GMax Eevee"] = "0736f6",
  ["Mega Aerodactyl"] = "455c47",
  ["GMax Snorlax"] = "58a5db",
  ["Mega Gyarados"] = nil, --TODO: GRAB MEGA RED GYARADOS MODEL GUID
  ["Mega Mewtwo X"] = "4b3d7e",
  ["Mega Mewtwo Y"] = "2572ec",
  ["Mega Gengar"] = "5f3fbc",
  ["Chikorita"] = "6a8ff3",
  ["Bayleef"] = "5172c7",
  ["Meganium"] = "a6d672",
  ["Mega Meganium"] = "ed33c6",
  ["Cyndaquil"] = "c253e6",
  ["Quilava"] = "3b8963",
  ["Typhlosion"] = "ad941e",
  ["Totodile"] = "2ca6c0",
  ["Croconaw"] = "afba48",
  ["Feraligatr"] = "6d39ce",
  ["Mega Feraligatr"] = "ad7949",
  ["Sentret"] = "cbc534",
  ["Furret"] = "299b7a",
  ["Hoothoot"] = "1cdfac",
  ["Noctowl"] = "5824c7",
  ["Ledyba"] = "284a12",
  ["Ledian"] = "9330b8",
  ["Spinarak"] = "7b3b9a",
  ["Ariados"] = "b95f6d",
  ["Crobat"] = "bb8170",
  ["Chinchou"] = "2b2fea",
  ["Lanturn"] = "4c90fa",
  ["Pichu"] = "933586",
  ["Cleffa"] = "4e5ec3",
  ["Igglybuff"] = "f63e03",
  ["Togepi"] = "f40222",
  ["Togetic"] = "ffdf79",
  ["Natu"] = "51f082",
  ["Xatu"] = "d0856a",
  ["Mareep"] = "4676e5",
  ["Flaaffy"] = "efc02b",
  ["Ampharos"] = "267924",
  ["Bellossom"] = "ab26b7",
  ["Marill"] = "52a72f",
  ["Azumarill"] = "cc3ef1",
  ["Sudowoodo"] = "97345e",
  ["Politoed"] = "8ea3e6",
  ["Hoppip"] = "34522a",
  ["Skiploom"] = "5dc901",
  ["Jumpluff"] = "35de88",
  ["Aipom"] = "d4e8ff",
  ["Sunkern"] = "43f9da",
  ["Sunflora"] = "76a35f",
  ["Yanma"] = "174c68",
  ["Wooper"] = "80411b",
  ["Quagsire"] = "830cc3",
  ["Espeon"] = "dbe3f1",
  ["Umbreon"] = "957e5c",
  ["Murkrow"] = "83f6d6",
  ["Slowking"] = "c481e4",
  ["Misdreavus"] = "aa041d",
  ["Unown"] = "013c2d",
  ["Wobbuffet"] = "37d06e",
  ["Girafarig"] = "515969",
  ["Pineco"] = "221866",
  ["Forretress"] = "68a3a4",
  ["Dunsparce"] = "fca349",
  ["Gligar"] = "f870ba",
  ["Steelix"] = "c676c0",
  ["Snubbull"] = "a87211",
  ["Granbull"] = "fbdd73",
  ["Qwilfish"] = "b5940a",
  ["Scizor"] = "f2574f",
  ["Shuckle"] = "58a469",
  ["Heracross"] = "a66c76",
  ["Sneasel"] = "17ce1e",
  ["Teddiursa"] = "3cb310",
  ["Ursaring"] = "3f19f5",
  ["Slugma"] = "f7f4ca",
  ["Magcargo"] = "a20540",
  ["Swinub"] = "8f6378",
  ["Piloswine"] = "1fc0f5",
  ["Corsola"] = "2ba029",
  ["Remoraid"] = "a875ff",
  ["Octillery"] = "b0d2e0",
  ["Delibird"] = "40c692",
  ["Mantine"] = "122e11",
  ["Skarmory"] = "6083bc",
  ["Mega Skarmory"] = "0563da",
  ["Houndour"] = "e09c46",
  ["Houndoom"] = "415a2d",
  ["Kingdra"] = "b71d17",
  ["Phanpy"] = "5f5eeb",
  ["Donphan"] = "a1cd66",
  ["Porygon2"] = "dc6f1d",
  ["Stantler"] = "13fd48",
  ["Smeargle"] = "39b410",
  ["Tyrogue"] = "2aeabe",
  ["Hitmontop"] = "d90d3a",
  ["Smoochum"] = "011ab9",
  ["Elekid"] = "148c51",
  ["Magby"] = "acd188",
  ["Miltank"] = "dd32b2",
  ["Blissey"] = "3124c5",
  ["Raikou"] = "9ab103",
  ["Entei"] = "0b780c",
  ["Suicune"] = "50b743",
  ["Larvitar"] = "83f145",
  ["Pupitar"] = "b77f9d",
  ["Tyranitar"] = "39e1fc",
  ["Lugia"] = "fb00ac",
  ["Shadow Lugia"] = "0e722f",
  ["Ho-oh"] = "97f9ed",
  ["Celebi"] = "97af89",
  ["Mega Ampharos"] = "18c344",
  ["Red Gyarados"] = nil, --TODO: THIS IS THE SAME THING AS MEGA GYARADOS
  ["Mega Red Gyarados"] = nil, --TODO: THIS IS THE SAME THING AS MEGA GYARADOS
  ["Mega Steelix"] = "0fa1be",
  ["Mega Scizor"] = "0f3bd3",
  ["Mega Heracross"] = "2cbc00",
  ["Mega Houndoom"] = "1077eb",
  ["Mega Tyranitar"] = "79436c",
  ["Treecko"] = "877f25",
  ["Grovyle"] = "403d04",
  ["Sceptile"] = "f53ee1",
  ["Torchic"] = "2e4107",
  ["Combusken"] = "2421f9",
  ["Blaziken"] = "0665cd",
  ["Mudkip"] = "0d9c6b",
  ["Marshtomp"] = "68c183",
  ["Swampert"] = "5f5579",
  ["Poochyena"] = "6cb694",
  ["Mightyena"] = "f3c111",
  ["Zigzagoon"] = "2347dc",
  ["Linoone"] = "0663f8",
  ["Wurmple"] = "8b1001",
  ["Silcoon"] = "188128",
  ["Beautifly"] = "d65b1b",
  ["Cascoon"] = "2bc361",
  ["Dustox"] = "f783a6",
  ["Lotad"] = "d576a7",
  ["Lombre"] = "d4061e",
  ["Ludicolo"] = "1d8093",
  ["Seedot"] = "8c2db4",
  ["Nuzleaf"] = "2f31d0",
  ["Shiftry"] = "c4f1a3",
  ["Taillow"] = "223de2",
  ["Swellow"] = "ff81c4",
  ["Wingull"] = "e912ab",
  ["Pelipper"] = "12092f",
  ["Ralts"] = "09c38c",
  ["Kirlia"] = "76402e",
  ["Gardevoir"] = "740cd8",
  ["Surskit"] = "18b120",
  ["Masquerain"] = "faa1d3",
  ["Shroomish"] = "b9bbcb",
  ["Breloom"] = "51d267",
  ["Slakoth"] = "565da6",
  ["Vigoroth"] = "bd1aa9",
  ["Slaking"] = "0f4fdc",
  ["Nincada"] = "429736",
  ["Ninjask"] = "e4ef53",
  ["Shedinja"] = "fbb17c",
  ["Whismur"] = "54600d",
  ["Loudred"] = "29bdab",
  ["Exploud"] = "14453d",
  ["Makuhita"] = "b36317",
  ["Hariyama"] = "859c4c",
  ["Azurill"] = "f02a60",
  ["Nosepass"] = "62afed",
  ["Skitty"] = "521e8c",
  ["Delcatty"] = "2dc056",
  ["Sableye"] = "1d2b7f",
  ["Mawile"] = "b40c0e",
  ["Aron"] = "106594",
  ["Lairon"] = "4f0fca",
  ["Aggron"] = "e0f530",
  ["Meditite"] = "15561a",
  ["Medicham"] = "8720ef",
  ["Electrike"] = "da23c2",
  ["Manectric"] = "85a06f",
  ["Plusle"] = "2bba41",
  ["Minun"] = "e7c3ed",
  ["Volbeat"] = "2892a4",
  ["Illumise"] = "beb733",
  ["Roselia"] = "3ca801",
  ["Gulpin"] = "276177",
  ["Swalot"] = "e16850",
  ["Carvanha"] = "44a443",
  ["Sharpedo"] = "8783cd",
  ["Wailmer"] = "6fe9fb",
  ["Wailord"] = "b8683a",
  ["Numel"] = "d4181b",
  ["Camerupt"] = "25f6f0",
  ["Torkoal"] = "29eb43",
  ["Spoink"] = "5b9992",
  ["Grumpig"] = "fcd6c8",
  ["Spinda"] = "c6aa78",
  ["Trapinch"] = "e43112",
  ["Vibrava"] = "f2e2a8",
  ["Flygon"] = "0bb3b6",
  ["Cacnea"] = "8c204d",
  ["Cacturne"] = "725808",
  ["Swablu"] = "3a1765",
  ["Altaria"] = "4f0b3b",
  ["Zangoose"] = "165520",
  ["Seviper"] = "97c948",
  ["Lunatone"] = "827df9",
  ["Solrock"] = "567381",
  ["Barboach"] = "193ecc",
  ["Whiscash"] = "2bec01",
  ["Corphish"] = "3f7ad3",
  ["Crawdaunt"] = "a6dc6b",
  ["Baltoy"] = "367eeb",
  ["Claydol"] = "d0fade",
  ["Lileep"] = "e42954",
  ["Cradily"] = "23fcfe",
  ["Anorith"] = "2249cf",
  ["Armaldo"] = "eebfd1",
  ["Feebas"] = "f69f61",
  ["Milotic"] = "465100",
  ["Castform"] = "67ddf2",
  ["Rainy Castform"] = "208287",
  ["Snowy Castform"] = "da4464",
  ["Sunny Castform"] = "7cefe4",
  ["Kecleon"] = "4af59a",
  ["Shuppet"] = "46848e",
  ["Banette"] = "77c122",
  ["Duskull"] = "1d4297",
  ["Dusclops"] = "69f383",
  ["Tropius"] = "4532a1",
  ["Chimecho"] = "556142",
  ["Absol"] = "79765d",
  ["Wynaut"] = "d153fa",
  ["Snorunt"] = "601fb7",
  ["Glalie"] = "1aa54e",
  ["Spheal"] = "5cd73e",
  ["Sealeo"] = "e1b8ad",
  ["Walrein"] = "37118f",
  ["Clamperl"] = "a8f43c",
  ["Huntail"] = "b139f1",
  ["Gorebyss"] = "61b61a",
  ["Relicanth"] = "75c281",
  ["Luvdisc"] = "5393f8",
  ["Bagon"] = "05964b",
  ["Shelgon"] = "b7fc9f",
  ["Salamence"] = "a3cb6f",
  ["Beldum"] = "ad12cb",
  ["Metang"] = "d7ac8f",
  ["Metagross"] = "a28092",
  ["Regirock"] = "ac6107",
  ["Regice"] = "d7f436",
  ["Registeel"] = "cbbbc9",
  ["Latias"] = "387511",
  ["Latios"] = "be8ba0",
  ["Kyogre"] = "d90937",
  ["Primal Kyogre"] = "50238a",
  ["Groudon"] = "efad60",
  ["Primal Groudon"] = "a68978",
  ["Rayquaza"] = "ec9902",
  ["Jirachi"] = "963775",
  ["Normal Deoxys"] = "380e3d",
  ["Attack Deoxys"] = "825c85",
  ["Defense Deoxys"] = "0b4af9",
  ["Speed Deoxys"] = "21c080",
  ["Mega Sceptile"] = "68f6a8",
  ["Mega Blaziken"] = "4d4112",
  ["Mega Swampert"] = "a166cf",
  ["Mega Gardevoir"] = "1042fa",
  ["Mega Sableye"] = "7c0c9e",
  ["Mega Mawile"] = "a05761",
  ["Mega Aggron"] = "ab4b96",
  ["Mega Medicham"] = "f6ed1b",
  ["Mega Manectric"] = "63a511",
  ["Mega Sharpedo"] = "cfd038",
  ["Mega Camerupt"] = "eea973",
  ["Mega Altaria"] = "35e49f",
  ["Mega Banette"] = "eebe8c",
  ["Mega Absol"] = "7bd7e2",
  ["Mega Glalie"] = "83fcf2",
  ["Mega Metagross"] = "081dbe",
  ["Mega Latios"] = "0cccdc",
  ["Mega Latias"] = "bdcf3e",
  ["Mega Rayquaza"] = "fd32a9",
  ["Mega Salamence"] = "9d934d",
  ["Turtwig"] = "24fe65",
  ["Grotle"] = "0d0ca7",
  ["Torterra"] = "20da86",
  ["Chimchar"] = "cedf84",
  ["Monferno"] = "352551",
  ["Infernape"] = "769a81",
  ["Piplup"] = "a28d51",
  ["Prinplup"] = "233265",
  ["Empoleon"] = "d72233",
  ["Starly"] = "558e0b",
  ["Staravia"] = "cf5d41",
  ["Staraptor"] = "9ed582",
  ["Bidoof"] = "ee0d8e",
  ["Bibarel"] = "50faaf",
  ["Kricketot"] = "d101ae",
  ["Kricketune"] = "5fb46a",
  ["Shinx"] = "8dac3e",
  ["Luxio"] = "3bd3bb",
  ["Luxray"] = "2a5f8d",
  ["Budew"] = "796cac",
  ["Roserade"] = "806c92",
  ["Cranidos"] = "78f946",
  ["Rampardos"] = "90937b",
  ["Shieldon"] = "d2cb62",
  ["Bastiodon"] = "ec4ce2",
  ["Sandy Burmy"] = "1bd107",
  ["Plant Burmy"] = "ffcc08",
  ["Trash Burmy"] = "19f8d0",
  ["Mothim"] = "daad92",
  ["Sandy Wormadam"] = "50b8eb",
  ["Plant Wormadam"] = "206c8a",
  ["Trash Wormadam"] = "dac63b",
  ["Combee"] = "f06da4",
  ["Vespiquen"] = "15ffe0",
  ["Pachirisu"] = "818f37",
  ["Buizel"] = "d7b057",
  ["Floatzel"] = "ab9378",
  ["Cherubi"] = "f225ed",
  ["Cherrim"] = "df407a",
  ["West Shellos"] = "88899a",
  ["East Shellos"] = "5b20e6",
  ["East Gastrodon"] = "5312c5",
  ["West Gastrodon"] = "b4ef4c",
  ["Ambipom"] = "93ff19",
  ["Drifloon"] = "bfa207",
  ["Drifblim"] = "8ae4d4",
  ["Buneary"] = "09e40c",
  ["Lopunny"] = "7b75c6",
  ["Mismagius"] = "4e7856",
  ["Honchkrow"] = "6234c8", 
  ["Glameow"] = "1e9efe",
  ["Purugly"] = "88f851",
  ["Chingling"] = "884daa",
  ["Stunky"] = "6843c6",
  ["Skuntank"] = "4622f7",
  ["Bronzor"] = "82ecfa",
  ["Bronzong"] = "4aa7de",
  ["Bonsly"] = "d157ef",
  ["Mime Jr."] = "781934",
  ["Happiny"] = "91142e",
  ["Chatot"] = "4b68ed",
  ["Spiritomb"] = "e89e1d",
  ["Gible"] = "338cf6",
  ["Gabite"] = "d28a65",
  ["Garchomp"] = "2e8beb",
  ["Munchlax"] = "d1f1b7",
  ["Riolu"] = "0f2152",
  ["Lucario"] = "67e6e2",
  ["Hippopotas"] = "0fdd82",
  ["Hippowdon"] = "f7a492",
  ["Skorupi"] = "257d3c",
  ["Drapion"] = "0e377f",
  ["Croagunk"] = "3703b2",
  ["Toxicroak"] = "632e1e",
  ["Carnivine"] = "194fc0",
  ["Finneon"] = "7b7947",
  ["Lumineon"] = "ad95d6",
  ["Mantyke"] = "3a9c1b",
  ["Snover"] = "6b2047",
  ["Abomasnow"] = "712133",
  ["Weavile"] = "23d7c4",
  ["Magnezone"] = "384096",
  ["Lickilicky"] = "ecb850",
  ["Rhyperior"] = "48a5b4",
  ["Tangrowth"] = "6b20db",
  ["Electivire"] = "6b5280",
  ["Magmortar"] = "26aa87",
  ["Togekiss"] = "387a37",
  ["Yanmega"] = "f75197",
  ["Leafeon"] = "cbf8ca",
  ["Glaceon"] = "51f53d",
  ["Gliscor"] = "eb9911",
  ["Mamoswine"] = "ce52eb",
  ["Porygon-Z"] = "f3afbf",
  ["Gallade"] = "3369b5",
  ["Probopass"] = "b60aeb",
  ["Dusknoir"] = "426ff6",
  ["Froslass"] = "236683",
  ["Mega Froslass"] = "c63b9d",
  ["Rotom"] = "d6acbb",
  ["Mow Rotom"] = "db18d5",
  ["Heat Rotom"] = "e85656",
  ["Wash Rotom"] = "2c71d9",
  ["Fan Rotom"] = "100c8d",
  ["Frost Rotom"] = "4e4d96",
  ["Uxie"] = "8788e3",
  ["Mesprit"] = "0639fc",
  ["Azelf"] = "ebc6e0",
  ["Dialga"] = "f5354f",
  ["Origin Dialga"] = "2d25a7", 
  ["Palkia"] = "95ceec",
  ["Origin Palkia"] = "66a77d", 
  ["Heatran"] = "5b76fc",
  ["Regigigas"] = "32a889",
  ["Giratina"] = "5919e1",
  ["Origin Giratina"] = "9831ae",
  ["Cresselia"] = "070a38",
  ["Phione"] = "d60177",
  ["Manaphy"] = "d359d9",
  ["Darkrai"] = "295aea",
  ["Land Shaymin"] = "d88ab1",
  ["Sky Shaymin"] = "5fec6a",
  ["Arceus"] = "717096",
  ["Mega Lopunny"] = "965e28",
  ["Mega Garchomp"] = "d76b21",
  ["Mega Lucario"] = "78a34d",
  ["Mega Abomasnow"] = "9cccee",
  ["Mega Gallade"] = "d2aeeb",
  ["Victini"] = "cfb490", 
  ["Snivy"] = "7904db", --TODO: MODEL GLITCHES OUT
  ["Servine"] = "fa541b",
  ["Serperior"] = "6111c1",
  ["Tepig"] = "f18fb3",
  ["Pignite"] = "8a552a",
  ["Emboar"] = "0721c3",
  ["Mega Emboar"] = "a95998",
  ["Oshawott"] = "e765dc",
  ["Dewott"] = "01a428",
  ["Samurott"] = "a13d0c",
  ["Patrat"] = "12e820",
  ["Watchog"] = "96bfe7",
  ["Lillipup"] = "de2cc2",
  ["Herdier"] = "319e8e",
  ["Stoutland"] = "dafc34",
  ["Purrloin"] = "185821",
  ["Liepard"] = "569c1d",
  ["Pansage"] = "e1c1e3",
  ["Simisage"] = "fb5914",
  ["Pansear"] = "13e4be",
  ["Simisear"] = "44cccf",
  ["Panpour"] = "8c1d5c",
  ["Simipour"] = "fc5841",
  ["Munna"] = "40ca97",
  ["Musharna"] = "f18de6",
  ["Pidove"] = "96a163",
  ["Tranquil"] = "e3b9f8",
  ["Unfezant"] = "467c47",
  ["Blitzle"] = "c53d21",
  ["Zebstrika"] = "2a3745",
  ["Roggenrola"] = "e04135",
  ["Boldore"] = "a52ba8",
  ["Gigalith"] = "767766",
  ["Woobat"] = "0a9a5e",
  ["Swoobat"] = "5b7ab1",
  ["Drilbur"] = "de9071",
  ["Excadrill"] = "cd2f2f",
  ["Mega Excadrill"] = "bd6f49",
  ["Audino"] = "18e966",
  ["Timburr"] = "f2e6d3",
  ["Gurdurr"] = "532279",
  ["Conkeldurr"] = "d9f1b0",
  ["Tympole"] = "62349d",
  ["Palpitoad"] = "f392f8",
  ["Seismitoad"] = "a6396d",
  ["Throh"] = "f34b64",
  ["Sawk"] = "e91113",
  ["Sewaddle"] = "2d8e13",
  ["Swadloon"] = "eb7fbf",
  ["Leavanny"] = "1b9ddb",
  ["Venipede"] = "1fbe1a",
  ["Whirlipede"] = "ac2f59",
  ["Scolipede"] = "289cd9",
  ["Mega Scolipede"] = "526eee",
  ["Cottonee"] = "ecff4b",
  ["Whimsicott"] = "e47fbb",
  ["Petilil"] = "731cfb", 
  ["Lilligant"] = "eba2ee",
  ["Blue Basculin"] = "bf0bb7",
  ["Red Basculin"] = "6da01f",
  ["Sandile"] = "4cb857",
  ["Krokorok"] = "b3a65a",
  ["Krookodile"] = "922d05", 
  ["Darumaka"] = "501799",
  ["Darmanitan"] = "9d84ee",
  ["Zen Darmanitan"] = "a4eead",
  ["Maractus"] = "69ad15",
  ["Dwebble"] = "9c818c",
  ["Crustle"] = "3d24f6",
  ["Scraggy"] = "1d9df7",
  ["Scrafty"] = "f98b52",
  ["Mega Scrafty"] = "99339e",
  ["Sigilyph"] = "7002ea",
  ["Yamask"] = "61a8b4",
  ["Cofagrigus"] = "2f74d9",
  ["Tirtouga"] = "474c48",
  ["Carracosta"] = "cfa4c8",
  ["Archen"] = "c20851",
  ["Archeops"] = "844d9a",
  ["Trubbish"] = "13eebf",
  ["Garbodor"] = "155d87",
  ["Zorua"] = "9c4ed0",
  ["Zoroark"] = "e5c8a8",
  ["Minccino"] = "7e743a",
  ["Cinccino"] = "bf630c",
  ["Gothita"] = "75bf96",
  ["Gothorita"] = "4b351a",
  ["Gothitelle"] = "83f04c",
  ["Solosis"] = "7aee99",
  ["Duosion"] = "506b66",
  ["Reuniclus"] = "b664e5",
  ["Ducklett"] = "e62037",
  ["Swanna"] = "8b972c",
  ["Vanillite"] = "2a953f",
  ["Vanillish"] = "43e252",
  ["Vanilluxe"] = "eb04bd",
  ["Spring Deerling"] = "1af9e8",
  ["Spring Sawsbuck"] = "917129",
  ["Autumn Deerling"] = "f140f8",
  ["Autumn Sawsbuck"] = "ef0469",
  ["Summer Deerling"] = "925386",
  ["Summer Sawsbuck"] = "989d15",
  ["Winter Deerling"] = "1028ea",
  ["Winter Sawsbuck"] = "724792",
  ["Emolga"] = "386310",
  ["Karrablast"] = "a051d4",
  ["Escavalier"] = "392eda",
  ["Foongus"] = "aebebf",
  ["Amoongus"] = "1ce424",
  ["Frillish (M)"] = "870891",
  ["Jellicent (M)"] = "13e379",
  ["Frillish (F)"] = "e19125",
  ["Jellicent (F)"] = "d8c3a1",
  ["Alomomola"] = "9a4ee1",
  ["Joltik"] = "2fa71f",
  ["Galvantula"] = "965fbd",
  ["Ferroseed"] = "3e4e77",
  ["Ferrothorn"] = "e6ad5a",
  ["Klink"] = "991468",
  ["Klang"] = "46a98f",
  ["Klinklang"] = "dd2e88",
  ["Tynamo"] = "e7a137",
  ["Eelektrik"] = "75dbe4",
  ["Eelektross"] = "fd8b1f",
  ["Mega Eelektross"] = "018168",
  ["Elgyem"] = "f1d1a4",
  ["Beheeyem"] = "2d8fd5",
  ["Litwick"] = "ef7e60",
  ["Lampent"] = "07eece",
  ["Chandelure"] = "9c35af",
  ["Mega Chandelure"] = "fff540",
  ["Axew"] = "3c6f44",
  ["Fraxure"] = "f444e1",
  ["Haxorus"] = "404013",
  ["Cubchoo"] = "262288",
  ["Beartic"] = "03d980",
  ["Cryogonal"] = "7735bf",
  ["Shelmet"] = "97c10b",
  ["Accelgor"] = "34371b",
  ["Stunfisk"] = "1fbc77",
  ["Mienfoo"] = "ad86d5",
  ["Mienshao"] = "d202b0",
  ["Druddigon"] = "76b197",
  ["Golett"] = "c90c72",
  ["Golurk"] = "3ab7cd",
  ["Pawniard"] = "0c5bbb",
  ["Bisharp"] = "4a7bd9",
  ["Bouffalant"] = "f428ad",
  ["Rufflet"] = "e77d7b",
  ["Braviary"] = "f791b5",
  ["Vullaby"] = "fbaa08",
  ["Mandibuzz"] = "bb2360",
  ["Heatmor"] = "3565b9",
  ["Durant"] = "1d423a",
  ["Deino"] = "c82a39",
  ["Zweilous"] = "1005cc",
  ["Hydreigon"] = "90edba",
  ["Larvesta"] = "d0a44a",
  ["Volcarona"] = "8782dd",
  ["Cobalion"] = "534fbb",
  ["Terrakion"] = "a3c970",
  ["Virizion"] = "5b99a4",
  ["Incarnate Tornadus"] = "d2e4cc",
  ["Therian Tornadus"] = "f9d106",
  ["Incarnate Thundurus"] = "9fbd4c",
  ["Therian Thundurus"] = "9c167f",
  ["Reshiram"] = "41e116",
  ["Zekrom"] = "c6c54c",
  ["Incarnate Landorus"] = "9af19e",
  ["Therian Landorus"] = "cea072",
  ["Kyurem"] = "eb5c55",
  ["Black Kyurem"] = "3b9186", 
  ["White Kyurem"] = "eb7238",
  ["Ordinary Keldeo"] = "2071bb",
  ["Resolute Keldeo"] = "143e8b",
  ["Meloetta"] = "a2eb61",
  ["Pirouette Meloetta"] = "35d6a7",
  ["Genesect"] = "3ad10b",
  ["Mega Audino"] = "84ca8a",
  ["GMax Garbodor"] = "4ad22f",
  ["Chespin"] = "f8de6e",
  ["Quilladin"] = "7efd19",
  ["Chesnaught"] = "c46bfa",
  ["Mega Chesnaught"] = "04370f",
  ["Fennekin"] = "1c5e1f",
  ["Braixen"] = "891391",
  ["Delphox"] = "6d95f4",
  ["Mega Delphox"] = "3324b8",
  ["Froakie"] = "ec012d",
  ["Frogadier"] = "2c8371",
  ["Greninja"] = "6f433c",
  ["Bunnelby"] = "4b019d",
  ["Diggersby"] = "62e9d1",
  ["Fletchling"] = "f0652d",
  ["Fletchinder"] = "cfec16",
  ["Talonflame"] = "4b51f2",
  ["Scatterbug"] = "41dd89",
  ["Spewpa"] = "160df8",
  ["Vivillon"] = "99d9ef",
  ["Litleo"] = "935af6",
  ["Pyroar (M)"] = "936b85",
  ["Pyroar (F)"] = "6c1e27",
  ["Mega Pyroar"] = "36ee40",
  ["Flabebe"] = "40851b",
  ["Floette"] = "dc27b2",
  ["Eternal Flower Floette"] = nil, -- TODO: needs model
  ["Mega Eternal Flower Floette"] = nil, -- TODO: needs model
  ["Florges"] = "515b97",
  ["Skiddo"] = "5d6f45",
  ["Gogoat"] = "18c588",
  ["Pancham"] = "08135e",
  ["Pangoro"] = "2a1804",
  ["Furfrou"] = "2fb0f6",
  ["Espurr"] = "408332",
  ["Meowstic (F)"] = "7e63ad",
  ["Meowstic (M)"] = "25d5fe",
  ["Honedge"] = "7b5a36",
  ["Doublade"] = "470022",
  ["Blade Aegislash"] = "ed3e82",
  ["Shield Aegislash"] = nil,
  ["Spritzee"] = "2361b8",
  ["Aromatisse"] = "a4d72a",
  ["Swirlix"] = "741629",
  ["Slurpuff"] = "7ca740",
  ["Inkay"] = "3badca",
  ["Malamar"] = "ee8551",
  ["Mega Malamar"] = "f245ac",
  ["Binacle"] = "16fa82",
  ["Barbaracle"] = "366f71",
  ["Skrelp"] = "c4b786",
  ["Dragalge"] = "57a8b2",
  ["Mega Dragalge"] = "8dcb24",
  ["Clauncher"] = "b7e82c",
  ["Clawitzer"] = "e13d13",
  ["Helioptile"] = "60206b",
  ["Heliolisk"] = "1a5e06",
  ["Tyrunt"] = "fa4573",
  ["Tyrantrum"] = "cd56da",
  ["Amaura"] = "275223",
  ["Aurorus"] = "a2fbbe",
  ["Sylveon"] = "c75fe3",
  ["Hawlucha"] = "df80b3",
  ["Mega Hawlucha"] = "750452",
  ["Dedenne"] = "0e5232",
  ["Carbink"] = "47d955",
  ["Goomy"] = "ae5634",
  ["Sliggoo"] = "140c95",
  ["Goodra"] = "3fdb2a",
  ["Klefki"] = "4e743b",
  ["Phantump"] = "959899",
  ["Trevenant"] = "d4178f",
  ["Pumpkaboo"] = "b08b72",
  ["Gourgeist"] = "fef3e9",
  ["Bergmite"] = "071662",
  ["Avalugg"] = "46583f",
  ["Noibat"] = "305223",
  ["Noivern"] = "3ff677",
  ["Xerneas"] = "05fd5a", 
  ["Yveltal"] = "71f6f7",
  ["10% Zygarde"] = "c3a5d4",
  ["50% Zygarde"] = "66c2cf",
  ["Complete Zygarde"] = "98d5da",
  ["Mega Zygarde"] = "06fd14",
  ["Diancie"] = "1061ac",
  ["Hoopa"] = "27654f",
  ["Unbound Hoopa"] = "27eb44",
  ["Volcanion"] = "25ba70",
  ["Mega Diancie"] = "fea568",
  ["Rowlet"] = "e13cc3",
  ["Dartrix"] = "21e233",
  ["Decidueye"] = "a347ee",
  ["Litten"] = "ce1b41",
  ["Torracat"] = "61b2fd",
  ["Incineroar"] = "3111ae",
  ["Popplio"] = "c5d1d3",
  ["Brionne"] = "cbf71e",
  ["Primarina"] = "cd0fbd",
  ["Pikipek"] = "6dc927",
  ["Trumbeak"] = "faae8b",
  ["Toucannon"] = "139cd5",
  ["Yungoos"] = "9c57a0",
  ["Gumshoos"] = "8c12b6",
  ["Grubbin"] = "dccc83",
  ["Charjabug"] = "0f062a",
  ["Vikavolt"] = "7634a9",
  ["Crabrawler"] = "2ca359",
  ["Crabominable"] = "4a8abd",
  ["Baile Oricorio"] = "89e22a",
  ["Pa\'u Oricorio"] = "d9a8b6",
  ["Pom-Pom Oricorio"] = "d9a8b6",
  ["Sensu Oricorio"] = "24997f",
  ["Cutiefly"] = "e84b1d",
  ["Ribombee"] = "06c11c",
  ["Rockruff"] = "edf3a7",
  ["Dusk Lycanroc"] = "d7e32e",
  ["Midday Lycanroc"] = "adf4ef",
  ["Midnight Lycanroc"] = "0b6804",
  ["Solo Wishiwashi"] = "52adb9",
  ["School Wishiwashi"] = nil, -- TODO: "9b349b" needs base removed
  ["Mareanie"] = "53f8c7",
  ["Toxapex"] = "fb2d55",
  ["Mudbray"] = "979672",
  ["Mudsdale"] = "f75a14",
  ["Dewpider"] = "6e28d7",
  ["Araquanid"] = "88c9a2",
  ["Fomantis"] = "fe3d76",
  ["Lurantis"] = "2fd4ef",
  ["Morelull"] = "fade27",
  ["Shiinotic"] = "d13a18",
  ["Salandit"] = "74ec18",
  ["Salazzle"] = "64cfda",
  ["Stufful"] = "ecd59e",
  ["Bewear"] = "5a2b03",
  ["Bounsweet"] = "b22bc8",
  ["Steenee"] = "bb2be8",
  ["Tsareena"] = "ea8597",
  ["Comfey"] = "4208fa",
  ["Oranguru"] = "484ce5",
  ["Passimian"] = "8be700",
  ["Wimpod"] = "66b773",
  ["Golisopod"] = "3ea255",
  ["Sandygast"] = "d3a4f5",
  ["Palossand"] = "4268b1",
  ["Pyukumuku"] = "c02fba",
  ["Type: Null"] = "fcc5c3",
  ["Silvally"] = "35380d",
  ["Red Core Minior"] = nil, --TODO: needs model
  ["Meteor Minior"] = "137393",
  ["Komala"] = "3dba07",
  ["Turtonator"] = "c2cb3d",
  ["Togedemaru"] = "8473df",
  ["Mimikyu"] = "b97061",
  ["Bruxish"] = "323546",
  ["Drampa"] = "4ff0b9",
  ["Mega Drampa"] = "f5db39",
  ["Dhelmise"] = "0a2d57",
  ["Jangmo-o"] = "61b0ce",
  ["Hakamo-o"] = "b69f8d",
  ["Kommo-o"] = "2f6675",
  ["Tapu Koko"] = "090c29",
  ["Tapu Lele"] = "7fe7a8",
  ["Tapu Bulu"] = "b671ab",
  ["Tapu Fini"] = "181ea1",
  ["Cosmog"] = "ba4b9c",
  ["Cosmoem"] = "872e02",
  ["Solgaleo"] = "b1f849",
  ["Lunala"] = "a9b605",
  ["Nihilego"] = "7e25fc",
  ["Buzzwole"] = "c27f30",
  ["Pheromosa"] = "6c0fcd",
  ["Xurkitree"] = "97fdcb",
  ["Celesteela"] = "226a00",
  ["Kartana"] = "0e16c3",
  ["Guzzlord"] = "74b2ac",
  ["Necrozma"] = "89699f",
  ["Dusk Mane Necrozma"] = "a05142",
  ["Dawn Wings Necrozma"] = "6b5a6d",
  ["Ultra Necrozma"] = "6725c8",
  ["Magearna"] = "203517",
  ["Marshadow"] = "48bdb1",
  ["Poipole"] = "6256b7",
  ["Naganadel"] = "37f7e6",
  ["Stakataka"] = "dfbb29",
  ["Blacephalon"] = "6f0f6e",
  ["Zeraora"] = "b13cf3",
  ["Meltan"] = "8b98ac",
  ["Melmetal"] = "b567c1",
  ["Alolan Rattata"] = "c5999f",
  ["Alolan Raticate"] = "e97c27",
  ["Alolan Raichu"] = "bd261f",
  ["Alolan Sandshrew"] = "8c508a",
  ["Alolan Sandslash"] = "15a270",
  ["Alolan Vulpix"] = "962835",
  ["Alolan Ninetales"] = "82f1c5",
  ["Alolan Diglett"] = "591cd5",
  ["Alolan Dugtrio"] = "bf0a62",
  ["Alolan Meowth"] = "62891c",
  ["Alolan Persian"] = "c0d6ab",
  ["Alolan Geodude"] = "2f70bf",
  ["Alolan Graveler"] = "948f08",
  ["Alolan Golem"] = "de37c7",
  ["Alolan Grimer"] = "df7a44",
  ["Alolan Muk"] = "8b1789",
  ["Alolan Exeggutor"] = "fe5a16",
  ["Alolan Marowak"] = "948340",
  ["GMax Melmetal"] = "19639e",
  ["Grookey"] = "5a4c82",
  ["Thwackey"] = "d602a3",
  ["Rillaboom"] = "18393d",
  ["Scorbunny"] = "46ec83",
  ["Raboot"] = "4fb08f",
  ["Cinderace"] = "d6e82c",
  ["Sobble"] = "90c109",
  ["Drizzile"] = "e63527",
  ["Inteleon"] = "d96ccf",
  ["Skwovet"] = "1aa13c",
  ["Greedent"] = "823a98",
  ["Rookidee"] = "c5528a",
  ["Corvisquire"] = "a02f10",
  ["Corviknight"] = "c15997",
  ["Blipbug"] = "c68248",
  ["Dottler"] = "ffc165",
  ["Orbeetle"] = "bfa031",
  ["Nickit"] = "319a68",
  ["Thievul"] = "7d7d4a",
  ["Gossifleur"] = "4e2e5f",
  ["Eldegoss"] = "4a1e9a",
  ["Wooloo"] = "488af3",
  ["Dubwool"] = "79f1d3",
  ["Chewtle"] = "a5603f",
  ["Drednaw"] = "fbd527",
  ["Yamper"] = "eedfe6",
  ["Boltund"] = "779d63",
  ["Rolycoly"] = "6dff6c",
  ["Carkol"] = "389356",
  ["Coalossal"] = "530440",
  ["Applin"] = "f6c26f",
  ["Flapple"] = "02009d",
  ["Appletun"] = "80364e",
  ["Silicobra"] = "9de52f",
  ["Sandaconda"] = "21ed15",
  ["Cramorant"] = "6f902c",
  ["Arrokuda"] = "60d14e",
  ["Barraskewda"] = "66e56f",
  ["Toxel"] = "7e4d9e",
  ["Amped Toxtricity"] = "48fff5",
  ["Low-Key Toxtricity"] = "bcbd9e",
  ["Sizzlipede"] = "6ae3a4",
  ["Centiskorch"] = "0131f0",
  ["Clobbopus"] = "83e8df",
  ["Grapploct"] = "1fb18c",
  ["Sinistea"] = "5fbea8",
  ["Polteageist"] = "639b8f",
  ["Hatenna"] = "c63ea6",
  ["Hattrem"] = "7c8eac",
  ["Hatterene"] = "857b67",
  ["Impidimp"] = "aaa69b",
  ["Morgrem"] = "7fa940",
  ["Grimmsnarl"] = "9a72ad",
  ["Obstagoon"] = "de5098",
  ["Perrserker"] = "7dce63",
  ["Cursola"] = "c85190",
  ["Sirfetch\'d"] = "566c3e",
  ["Mr. Rime"] = "13070d",
  ["Runerigus"] = "46e6e4",
  ["Milcery"] = "b99b42",
  ["Alcremie"] = "8031e2",
  ["Falinks"] = "dcc654",
  ["Mega Falinks"] = "65709d",
  ["Pincurchin"] = "e0dee1",
  ["Snom"] = "09ba62",
  ["Frosmoth"] = "dabbbd",
  ["Stonjourner"] = "8ad85d",
  ["Ice Eiscue"] = "353b58",
  ["Noice Eiscue"] = "0761b6",
  ["Indeedee"] = "685a3e",
  ["Full Belly Morpeko"] = "188148",
  ["Hangry Morpeko"] = "3bd2c6",
  ["Cufant"] = "3590ef",
  ["Copperajah"] = "20a275",
  ["Dracozolt"] = "0ac1b2",
  ["Arctozolt"] = "da81a8",
  ["Dracovish"] = "bfe7b9",
  ["Arctovish"] = "7f4df0",
  ["Duraludon"] = nil, --TODO: needs model. LINK TO MODEL IS DEAD. MODEL UNAVAILABLE
  ["Dreepy"] = "c12a37",
  ["Drakloak"] = "1d2417",
  ["Dragapult"] = "4dcdc1",
  ["Zacian"] = "31086f",
  ["Crowned Sword Zacian"] = "d37b8f",
  ["Zamazenta"] = "42ca5c",
  ["Crowned Shield Zamazenta"] = "35a4b6",
  ["Eternatus"] = "62616e",
  ["Kubfu"] = "fc4df2",
  ["Rapid-Strike Urshifu"] = "1725a8",
  ["Single-Strike Urshifu"] = "49505f",
  ["Zarude"] = "541b7a",
  ["Regieleki"] = "9b9d29",
  ["Regidrago"] = "183976",
  ["Glastrier"] = "8a9b73",
  ["Spectrier"] = "12fb30",
  ["Calyrex"] = "3c50ed",
  ["Shadow Rider Calyrex"] = "5ce5df",
  ["Ice Rider Calyrex"] = "d33151",
  ["Wyrdeer"] = "c499aa",
  ["Kleavor"] = "2c44ea",
  ["Ursaluna"] = "e8ba1b",
  ["Bloodmoon Ursaluna"] = "ca6c05",
  ["Basculegion"] = "5928ce", -- Male, TODO: Female = "b1597e" if we want to have both options randomly available when a shiny is chosen?
  ["Sneasler"] = "f091e0",
  ["Overqwil"] = "2d4d32",
  ["Incarnate Enamorus"] = "f4912d",
  ["Therian Enamorus"] = "0defdd",
  ["Galarian Zigzagoon"] = "b04ba5",
  ["Galarian Linoone"] = "3a1d27",
  ["Galarian Meowth"] = "33ea30",
  ["Galarian Corsola"] = "67a698",
  ["Galarian Farfetch\'d"] = "8e342c",
  ["Galarian Mr. Mime"] = "6b324f",
  ["Galarian Yamask"] = "23b6c3",
  ["Hisuian Basculin"] = "9f97e4",
  ["Hisuian Sneasel"] = "9649d7",
  ["Hisuian Qwilfish"] = "5c1ba0",
  ["Hisuian Growlithe"] = "da83ac",
  ["Hisuian Arcanine"] = "e49fed",
  ["Galarian Ponyta"] = "110538",
  ["Galarian Rapidash"] = "c3c71e",
  ["Galarian Slowpoke"] = "1b65fc",
  ["Galarian Slowbro"] = "8eec77",
  ["Galarian Slowking"] = "8b1825",
  ["Hisuian Voltorb"] = "9ccd29",
  ["Hisuian Electrode"] = "84ff45",
  ["Galarian Weezing"] = "376de5",
  ["Galarian Articuno"] = "929da3",
  ["Galarian Zapdos"] = "dd5cff",
  ["Galarian Moltres"] = "350b33",
  ["Hisuian Typhlosion"] = "1ddb25",
  ["Hisuian Samurott"] = "afb72b",
  ["Hisuian Lilligant"] = "98118c",
  ["Galarian Darumaka"] = "5f5377",
  ["Galarian Darmanitan"] = "85a818",
  ["Galarian Zen Darmanitan"] = "ed3745",
  ["Hisuian Zorua"] = "488ab5",
  ["Hisuian Zoroark"] = "567b7d",
  ["Galarian Stunfisk"] = "fadef7",
  ["Hisuian Braviary"] = "20b567",
  ["Hisuian Sliggoo"] = "f47592",
  ["Hisuian Goodra"] = "2f9fda",
  ["Hisuian Avalugg"] = "03bbf8",
  ["Hisuian Decidueye"] = "2b57c9",
  ["GMax Rillaboom"] = "f5e4e1",
  ["GMax Cinderace"] = "9be164",
  ["GMax Inteleon"] = "48d079",
  ["GMax Corviknight"] = "5b1115",
  ["GMax Orbeetle"] = "3202de",
  ["GMax Drednaw"] = "6cb834",
  ["GMax Coalossal"] = "31a354",
  ["GMax Flapple"] = "0b5d9a",
  ["GMax Appletun"] = "0b5d9a",
  ["GMax Sandaconda"] = "943e19",
  ["GMax Toxtricity"] = "86e573",   
  ["GMax Centiskorch"] = "71fcca",
  ["GMax Hatterene"] = "fcbd0d",
  ["GMax Grimmsnarl"] = "72eb35",
  ["GMax Alcremie"] = "512e67",
  ["GMax Copperajah"] = "cb58b0",
  ["GMax Duraludon"] = "364ad1",
  ["GMax Eternatus"] = "f0bcc2",
  ["GMax Rapid-Strike Urshifu"] = "722061",
  ["GMax Single-Strike Urshifu"] = "74cc62",
  ["Sprigatito"] = "78900e",
  ["Floragato"] = "2a9314",
  ["Meowscarada"] = "24fb43",
  ["Fuecoco"] = "d962ff",
  ["Crocalor"] = "7678ac",
  ["Skeledirge"] = "e4f360",
  ["Quaxly"] = "1482ea",
  ["Quaxwell"] = "567056",
  ["Quaquaval"] = "751a54",
  ["Lechonk"] = "2c9e1d",
  ["Oinkologne (F)"] = "002be6",
  ["Oinkologne (M)"] = "9ed3d8",
  ["Tarountula"] = "b35b51",
  ["Spidops"] = "f8c55b",
  ["Nymble"] = "1cb61f",
  ["Lokix"] = "5419d6",
  ["Pawmi"] = "9d3430",
  ["Pawmo"] = "e1439c",
  ["Pawmot"] = "fba7a4",
  ["Tandemaus"] = "8ca223",
  ["Maushold"] = "513acb",
  ["Fidough"] = "10478c",
  ["Dachsbun"] = "36df4b",
  ["Smoliv"] = "382c1b",
  ["Dolliv"] = "c0b238",
  ["Arboliva"] = "4cffe6",
  ["Squawkabilly"] = "117f5a",
  ["Nacli"] = "07ce93",
  ["Naclstack"] = "d4d3fb",
  ["Garganacl"] = "0563f9",
  ["Charcadet"] = nil,
  ["Armarouge"] = nil,
  ["Ceruledge"] = nil,
  ["Tadbulb"] = "da96e6",
  ["Bellibolt"] = "509d60",
  ["Wattrel"] = "51025a",
  ["Kilowattrel"] = "52d1cd",
  ["Maschiff"] = "6f40da",
  ["Mabosstiff"] = "c08023",
  ["Shroodle"] = "7bc50a",
  ["Grafaiai"] = "b59410",
  ["Bramblin"] = "a8c869",
  ["Brambleghast"] = "9edb7f",
  ["Toedscool"] = "c346fc",
  ["Toedscruel"] = "b13b1a",
  ["Klawf"] = "2ca4a1",
  ["Capsakid"] = "c80cbc",
  ["Scovillain"] = "82152f",
  ["Rellor"] = "bbf7d5",
  ["Rabsca"] = "443235",
  ["Flittle"] = "09e1fd",
  ["Espathra"] = "72aa4d",
  ["Tinkatink"] = "b2f010",
  ["Tinkatuff"] = "f29f15",
  ["Tinkaton"] = "d904d2",
  ["Wiglett"] = "fdf566",
  ["Wugtrio"] = "08dfeb",
  ["Bombirdier"] = "300cc1",
  ["Finizen"] = "ed0b7b",
  ["Hero Palafin"] = "af2eae",
  ["Zero Palafin"] = "1f72de",
  ["Varoom"] = "3e31d1",
  ["Revavroom"] = "66ea98",
  ["Cyclizar"] = "2daae0",
  ["Orthworm"] = "59ecb3",
  ["Glimmet"] = "b5a10b",
  ["Glimmora"] = "a50edf",
  ["Greavard"] = "b58031",
  ["Houndstone"] = "75a9b2",
  ["Flamigo"] = "a57455",
  ["Cetoddle"] = "30fd3e",
  ["Cetitan"] = "abd268",
  ["Veluza"] = "e99463",
  ["Dondozo"] = "5db43a",
  ["Curly Tatsugiri"] = "499dcf",
  ["Droopy Tatsugiri"] = "f6cabe",
  ["Stretchy Tatsugiri"] = "e0f42e",
  ["Annihilape"] = "37eb81",
  ["Clodsire"] = "fb17dc",
  ["Farigiraf"] = "e739a1",
  ["Dudunsparce"] = "9ffe0b",
  ["Kingambit"] = "947df2",
  ["Great Tusk"] = "55a77a",
  ["Scream Tail"] = "3773f1",
  ["Brute Bonnet"] = "477096",
  ["Flutter Mane"] = "2398fd",
  ["Slither Wing"] = "3daae2",
  ["Sandy Shocks"] = "04a175",
  ["Iron Treads"] = "b3fd71",
  ["Iron Bundle"] = "0ffe4d",
  ["Iron Hands"] = "17ccba",
  ["Iron Jugulis"] = "cc3168",
  ["Iron Moth"] = "11c81b",
  ["Iron Thorns"] = "2c6362",
  ["Frigibax"] = "a4b8c0",
  ["Arctibax"] = "840eb2",
  ["Baxcalibur"] = "36d4e7",
  ["Gimmighoul"] = "541b94",
  ["Gholdengo"] = "95766a",
  ["Wo-Chien"] = "29de9c",
  ["Chien-Pao"] = "29725d",
  ["Ting-Lu"] = "c1a92f",
  ["Chi-Yu"] = "c8a03d",
  ["Roaring Moon"] = "3a1f03",
  ["Iron Valiant"] = "740388",
  ["Koraidon"] = nil,
  ["Miraidon"] = nil,
  ["Walking Wake"] = "8ef1cc",
  ["Iron Leaves"] = "ba8282",
  ["Dipplin"] = "705b67",
  ["Hydrapple"] = "a71010",
  ["Poltchageist"] = "034431",
  ["Sinistcha"] = "46b84b",
  ["Okidogi"] = "092f8b",
  ["Munkidori"] = "ee694f",
  ["Fezandipiti"] = "284ad2",
  ["Teal Ogerpon"] = nil,
  ["Cornerstone Ogerpon"] = nil,
  ["Hearthflame Ogerpon"] = nil,
  ["Wellspring Ogerpon"] = nil,
  ["Archaludon"] = "cf0ee1",
  ["Gouging Fire"] = "7a13aa",
  ["Raging Bolt"] = "23bea5",
  ["Iron Boulder"] = "fe8cb7",
  ["Iron Crown"] = "52fc61",
  ["Terapagos"] = nil,
  ["Pecharunt"] = nil,
  ["Combat Tauros"] = "c7ce1e",
  ["Aqua Tauros"] = "ed6215",
  ["Blaze Tauros"] = "173a3b",
  ["Paldean Wooper"] = nil,
}

-- Table containing pokedex data.
-- Generated by extract_pokedex_from_pdf.py
local pokedex_table = {
  ["Abomasnow"] = {book=1, page=43},
  ["Abra"] = {book=1, page=7},
  ["Absol"] = {book=1, page=34},
  ["Accelgor"] = {book=2, page=11},
  ["Blade Aegislash"] = {book=2, page=18},
  ["Shield Aegislash"] = {book=2, page=18},
  ["Aerodactyl"] = {book=1, page=13},
  ["Aggron"] = {book=1, page=30},
  ["Aipom"] = {book=1, page=18},
  ["Alakazam"] = {book=1, page=7},
  ["Alcremie"] = {book=2, page=38},
  ["Alolan Diglett"] = {book=2, page=30},
  ["Alolan Dugtrio"] = {book=2, page=30},
  ["Alolan Exeggutor"] = {book=2, page=30},
  ["Alolan Geodude"] = {book=2, page=30},
  ["Alolan Golem"] = {book=2, page=30},
  ["Alolan Graveler"] = {book=2, page=30},
  ["Alolan Grimer"] = {book=2, page=30},
  ["Alolan Marowak"] = {book=2, page=30},
  ["Alolan Meowth"] = {book=2, page=30},
  ["Alolan Muk"] = {book=2, page=30},
  ["Alolan Ninetales"] = {book=2, page=30},
  ["Alolan Persian"] = {book=2, page=30},
  ["Alolan Raichu"] = {book=2, page=29},
  ["Alolan Raticate"] = {book=2, page=29},
  ["Alolan Rattata"] = {book=2, page=29},
  ["Alolan Sandshrew"] = {book=2, page=29},
  ["Alolan Sandslash"] = {book=2, page=29},
  ["Alolan Vulpix"] = {book=2, page=30},
  ["Alomomola"] = {book=2, page=9},
  ["Altaria"] = {book=1, page=32},
  ["Amaura"] = {book=2, page=19},
  ["Ambipom"] = {book=1, page=40},
  ["Amoongus"] = {book=2, page=9},
  ["Ampharos"] = {book=1, page=18},
  ["Annihilape"] = {book=2, page=50},
  ["Anorith"] = {book=1, page=33},
  ["Appletun"] = {book=2, page=35},
  ["Applin"] = {book=2, page=35},
  ["Araquanid"] = {book=2, page=25},
  ["Arbok"] = {book=1, page=4},
  ["Arboliva"] = {book=2, page=46},
  ["Arcanine"] = {book=1, page=6},
  ["Arceus"] = {book=1, page=46},
  ["Archen"] = {book=2, page=7},
  ["Archeops"] = {book=2, page=7},
  ["Arctibax"] = {book=2, page=51},
  ["Arctovish"] = {book=2, page=39},
  ["Arctozolt"] = {book=2, page=39},
  ["Ariados"] = {book=1, page=17},
  ["Armaldo"] = {book=1, page=33},
  ["Armarouge"] = {book=2, page=47},
  ["Armored Mewtwo"] = {book=1, page=14},
  ["Aromatisse"] = {book=2, page=18},
  ["Aron"] = {book=1, page=29},
  ["Arrokuda"] = {book=2, page=36},
  ["Articuno"] = {book=1, page=13},
  ["Ash's Pikachu"] = {book=1, page=14},
  ["Audino"] = {book=2, page=4},
  ["Aurorus"] = {book=2, page=19},
  ["Avalugg"] = {book=2, page=20},
  ["Axew"] = {book=2, page=10},
  ["Azelf"] = {book=1, page=45},
  ["Azumarill"] = {book=1, page=18},
  ["Azurill"] = {book=1, page=29},
  ["Bagon"] = {book=1, page=35},
  ["Baltoy"] = {book=1, page=32},
  ["Banette"] = {book=1, page=33},
  ["Barbaracle"] = {book=2, page=19},
  ["Barboach"] = {book=1, page=32},
  ["Barraskewda"] = {book=2, page=36},
  ["Basculegion"] = {book=2, page=41},
  ["Blue Basculin"] = {book=2, page=6},
  ["Red Basculin"] = {book=2, page=6},
  ["Bastiodon"] = {book=1, page=39},
  ["Baxcalibur"] = {book=2, page=51},
  ["Bayleef"] = {book=1, page=16},
  ["Beartic"] = {book=2, page=11},
  ["Beautifly"] = {book=1, page=27},
  ["Beedrill"] = {book=1, page=3},
  ["Beheeyem"] = {book=2, page=10},
  ["Beldum"] = {book=1, page=35},
  ["Bellibolt"] = {book=2, page=47},
  ["Bellossom"] = {book=1, page=18},
  ["Bellsprout"] = {book=1, page=7},
  ["Bergmite"] = {book=2, page=20},
  ["Bewear"] = {book=2, page=25},
  ["Bibarel"] = {book=1, page=38},
  ["Bidoof"] = {book=1, page=38},
  ["Binacle"] = {book=2, page=19},
  ["Bisharp"] = {book=2, page=11},
  ["Blacephalon"] = {book=2, page=29},
  ["Black Kyurem"] = {book=2, page=13},
  ["Blastoise"] = {book=1, page=2},
  ["Blaziken"] = {book=1, page=26},
  ["Blipbug"] = {book=2, page=34},
  ["Blissey"] = {book=1, page=22},
  ["Blitzle"] = {book=2, page=3},
  ["Bloodmoon Ursaluna"] = {book=2, page=41},
  ["Boldore"] = {book=2, page=4},
  ["Boltund"] = {book=2, page=35},
  ["Bombirdier"] = {book=2, page=48},
  ["Bonsly"] = {book=1, page=41},
  ["Bouffalant"] = {book=2, page=12},
  ["Bounsweet"] = {book=2, page=26},
  ["Braixen"] = {book=2, page=16},
  ["Brambleghast"] = {book=2, page=47},
  ["Bramblin"] = {book=2, page=47},
  ["Braviary"] = {book=2, page=12},
  ["Breloom"] = {book=1, page=28},
  ["Brionne"] = {book=2, page=23},
  ["Bronzong"] = {book=1, page=41},
  ["Bronzor"] = {book=1, page=41},
  ["Brute Bonnet"] = {book=2, page=50},
  ["Bruxish"] = {book=2, page=27},
  ["Budew"] = {book=1, page=39},
  ["Buizel"] = {book=1, page=40},
  ["Bulbasaur"] = {book=1, page=2},
  ["Buneary"] = {book=1, page=41},
  ["Bunnelby"] = {book=2, page=16},
  ["Plant Burmy"] = {book=1, page=39},
  ["Sandy Burmy"] = {book=1, page=39},
  ["Trash Burmy"] = {book=1, page=39},
  ["Butterfree"] = {book=1, page=3},
  ["Buzzwole"] = {book=2, page=28},
  ["Cacnea"] = {book=1, page=32},
  ["Cacturne"] = {book=1, page=32},
  ["Calyrex"] = {book=2, page=41},
  ["Camerupt"] = {book=1, page=31},
  ["Capsakid"] = {book=2, page=48},
  ["Carbink"] = {book=2, page=20},
  ["Carkol"] = {book=2, page=35},
  ["Carnivine"] = {book=1, page=43},
  ["Carracosta"] = {book=2, page=7},
  ["Carvanha"] = {book=1, page=31},
  ["Cascoon"] = {book=1, page=27},
  ["Castform"] = {book=1, page=33},
  ["Rainy Castform"] = {book=1, page=33},
  ["Snowy Castform"] = {book=1, page=33},
  ["Sunny Castform"] = {book=1, page=33},
  ["Caterpie"] = {book=1, page=3},
  ["Celebi"] = {book=1, page=23},
  ["Celesteela"] = {book=2, page=28},
  ["Centiskorch"] = {book=2, page=36},
  ["Ceruledge"] = {book=2, page=47},
  ["Cetitan"] = {book=2, page=49},
  ["Cetoddle"] = {book=2, page=49},
  ["Chandelure"] = {book=2, page=10},
  ["Chansey"] = {book=1, page=10},
  ["Charcadet"] = {book=2, page=47},
  ["Charizard"] = {book=1, page=2},
  ["Charjabug"] = {book=2, page=24},
  ["Charmander"] = {book=1, page=2},
  ["Charmeleon"] = {book=1, page=2},
  ["Chatot"] = {book=1, page=42},
  ["Cherrim"] = {book=1, page=40},
  ["Cherubi"] = {book=1, page=40},
  ["Chesnaught"] = {book=2, page=16},
  ["Chespin"] = {book=2, page=16},
  ["Chewtle"] = {book=2, page=34},
  ["Chikorita"] = {book=1, page=16},
  ["Chimchar"] = {book=1, page=38},
  ["Chimecho"] = {book=1, page=34},
  ["Chinchou"] = {book=1, page=17},
  ["Chingling"] = {book=1, page=41},
  ["Cinccino"] = {book=2, page=7},
  ["Cinderace"] = {book=2, page=33},
  ["Clamperl"] = {book=1, page=34},
  ["Clauncher"] = {book=2, page=19},
  ["Clawitzer"] = {book=2, page=19},
  ["Claydol"] = {book=1, page=32},
  ["Cleffa"] = {book=1, page=17},
  ["Clefable"] = {book=1, page=5},
  ["Clefairy"] = {book=1, page=5},
  ["Clobbopus"] = {book=2, page=36},
  ["Clodsire"] = {book=2, page=50},
  ["Cloyster"] = {book=1, page=9},
  ["Coalossal"] = {book=2, page=35},
  ["Cobalion"] = {book=2, page=12},
  ["Cofagrigus"] = {book=2, page=7},
  ["Combee"] = {book=1, page=40},
  ["Combusken"] = {book=1, page=26},
  ["Comfey"] = {book=2, page=26},
  ["Conkeldurr"] = {book=2, page=4},
  ["Copperajah"] = {book=2, page=39},
  ["Corphish"] = {book=1, page=32},
  ["Corsola"] = {book=1, page=21},
  ["Corviknight"] = {book=2, page=34},
  ["Corvisquire"] = {book=2, page=34},
  ["Cosmoem"] = {book=2, page=28},
  ["Cosmog"] = {book=2, page=28},
  ["Cottonee"] = {book=2, page=5},
  ["Crabominable"] = {book=2, page=24},
  ["Crabrawler"] = {book=2, page=24},
  ["Cradily"] = {book=1, page=33},
  ["Cramorant"] = {book=2, page=36},
  ["Cranidos"] = {book=1, page=39},
  ["Crawdaunt"] = {book=1, page=32},
  ["Cresselia"] = {book=1, page=46},
  ["Croagunk"] = {book=1, page=43},
  ["Crobat"] = {book=1, page=17},
  ["Crocalor"] = {book=2, page=45},
  ["Croconaw"] = {book=1, page=16},
  ["Crowned Shield Zamazenta"] = {book=2, page=40},
  ["Crowned Sword Zacian"] = {book=2, page=40},
  ["Crustle"] = {book=2, page=6},
  ["Cryogonal"] = {book=2, page=11},
  ["Crystal Onix"] = {book=1, page=14},
  ["Cubchoo"] = {book=2, page=11},
  ["Cubone"] = {book=1, page=10},
  ["Cufant"] = {book=2, page=39},
  ["Cursola"] = {book=2, page=37},
  ["Cutiefly"] = {book=2, page=24},
  ["Cyclizar"] = {book=2, page=49},
  ["Cyndaquil"] = {book=1, page=16},
  ["Dachsbun"] = {book=2, page=46},
  ["Darkrai"] = {book=1, page=46},
  ["Darmanitan"] = {book=2, page=6},
  ["Zen Darmanitan"] = {book=2, page=6},
  ["Dartrix"] = {book=2, page=23},
  ["Darumaka"] = {book=2, page=6},
  ["Dawn Wings Necrozma"] = {book=2, page=28},
  ["Decidueye"] = {book=2, page=23},
  ["Dedenne"] = {book=2, page=20},
  ["Spring Deerling"] = {book=2, page=8},
  ["Autumn Deerling"] = {book=2, page=8},
  ["Summer Deerling"] = {book=2, page=8},
  ["Winter Deerling"] = {book=2, page=8},
  ["Deino"] = {book=2, page=12},
  ["Delcatty"] = {book=1, page=29},
  ["Delibird"] = {book=1, page=21},
  ["Delphox"] = {book=2, page=16},
  ["Attack Deoxys"] = {book=1, page=36},
  ["Defense Deoxys"] = {book=1, page=36},
  ["Speed Deoxys"] = {book=1, page=36},
  ["Dewgong"] = {book=1, page=9},
  ["Dewott"] = {book=2, page=2},
  ["Dewpider"] = {book=2, page=25},
  ["Dhelmise"] = {book=2, page=27},
  ["Dialga"] = {book=1, page=45},
  ["Origin Dialga"] = {book=1, page=45},
  ["Diancie"] = {book=2, page=21},
  ["Diggersby"] = {book=2, page=16},
  ["Diglett"] = {book=1, page=6},
  ["Ditto"] = {book=1, page=12},
  ["Dodrio"] = {book=1, page=8},
  ["Doduo"] = {book=1, page=8},
  ["Dolliv"] = {book=2, page=46},
  ["Dondozo"] = {book=2, page=49},
  ["Donphan"] = {book=1, page=21},
  ["Dottler"] = {book=2, page=34},
  ["Doublade"] = {book=2, page=18},
  ["Dracovish"] = {book=2, page=39},
  ["Dracozolt"] = {book=2, page=39},
  ["Dragalge"] = {book=2, page=19},
  ["Dragapult"] = {book=2, page=40},
  ["Dragonair"] = {book=1, page=13},
  ["Dragonite"] = {book=1, page=13},
  ["Drakloak"] = {book=2, page=39},
  ["Drampa"] = {book=2, page=27},
  ["Drapion"] = {book=1, page=42},
  ["Dratini"] = {book=1, page=13},
  ["Drednaw"] = {book=2, page=34},
  ["Dreepy"] = {book=2, page=39},
  ["Drilbur"] = {book=2, page=4},
  ["Drifblim"] = {book=1, page=41},
  ["Drifloon"] = {book=1, page=40},
  ["Drizzile"] = {book=2, page=33},
  ["Drowzee"] = {book=1, page=9},
  ["Druddigon"] = {book=2, page=11},
  ["Dubwool"] = {book=2, page=34},
  ["Ducklett"] = {book=2, page=8},
  ["Dudunsparce"] = {book=2, page=50},
  ["Dugtrio"] = {book=1, page=6},
  ["Dunsparce"] = {book=1, page=19},
  ["Duosion"] = {book=2, page=8},
  ["Duraludon"] = {book=2, page=39},
  ["Durant"] = {book=2, page=12},
  ["Dusclops"] = {book=1, page=34},
  ["Dusk Mane Necrozma"] = {book=2, page=28},
  ["Dusknoir"] = {book=1, page=44},
  ["Duskull"] = {book=1, page=33},
  ["Dustox"] = {book=1, page=27},
  ["Dwebble"] = {book=2, page=6},
  ["East Gastrodon"] = {book=1, page=40},
  ["East Shellos"] = {book=1, page=40},
  ["Eelektrik"] = {book=2, page=10},
  ["Eelektross"] = {book=2, page=10},
  ["Eevee"] = {book=1, page=12},
  ["Ice Eiscue"] = {book=2, page=38},
  ["Noice Eiscue"] = {book=2, page=39},
  ["Ekans"] = {book=1, page=4},
  ["Eldegoss"] = {book=2, page=34},
  ["Electabuzz"] = {book=1, page=11},
  ["Electivire"] = {book=1, page=43},
  ["Electrike"] = {book=1, page=30},
  ["Electrode"] = {book=1, page=10},
  ["Elekid"] = {book=1, page=22},
  ["Elgyem"] = {book=2, page=10},
  ["Emboar"] = {book=2, page=2},
  ["Emolga"] = {book=2, page=9},
  ["Empoleon"] = {book=1, page=38},
  ["Incarnate Enamorus"] = {book=2, page=42},
  ["Therian Enamorus"] = {book=2, page=42},
  ["Entei"] = {book=1, page=22},
  ["Escavalier"] = {book=2, page=9},
  ["Espathra"] = {book=2, page=48},
  ["Espeon"] = {book=1, page=19},
  ["Espurr"] = {book=2, page=18},
  ["Eternal Flower Floette"] = {book=2, page=21},
  ["Eternatus"] = {book=2, page=40},
  ["Excadrill"] = {book=2, page=4},
  ["Exeggcute"] = {book=1, page=10},
  ["Exeggutor"] = {book=1, page=10},
  ["Exploud"] = {book=1, page=29},
  ["Falinks"] = {book=2, page=38},
  ["Farfetch'd"] = {book=1, page=8},
  ["Farigiraf"] = {book=2, page=50},
  ["Fearow"] = {book=1, page=4},
  ["Feebas"] = {book=1, page=33},
  ["Fennekin"] = {book=2, page=16},
  ["Feraligatr"] = {book=1, page=16},
  ["Ferroseed"] = {book=2, page=9},
  ["Ferrothorn"] = {book=2, page=10},
  ["Fidough"] = {book=2, page=46},
  ["Finizen"] = {book=2, page=48},
  ["Finneon"] = {book=1, page=43},
  ["Flaaffy"] = {book=1, page=18},
  ["Flabebe"] = {book=2, page=17},
  ["Flamigo"] = {book=2, page=49},
  ["Flapple"] = {book=2, page=35},
  ["Flareon"] = {book=1, page=12},
  ["Fletchinder"] = {book=2, page=17},
  ["Fletchling"] = {book=2, page=16},
  ["Flittle"] = {book=2, page=48},
  ["Floatzel"] = {book=1, page=40},
  ["Floette"] = {book=2, page=17},
  ["Floragato"] = {book=2, page=45},
  ["Florges"] = {book=2, page=17},
  ["Flutter Mane"] = {book=2, page=50},
  ["Flygon"] = {book=1, page=31},
  ["Fomantis"] = {book=2, page=25},
  ["Foongus"] = {book=2, page=9},
  ["Forretress"] = {book=1, page=19},
  ["Fraxure"] = {book=2, page=11},
  ["Frigibax"] = {book=2, page=51},
  ["Frillish (F)"] = {book=2, page=9},
  ["Frillish (M)"] = {book=2, page=9},
  ["Froakie"] = {book=2, page=16},
  ["Frogadier"] = {book=2, page=16},
  ["Froslass"] = {book=1, page=44},
  ["Frosmoth"] = {book=2, page=38},
  ["Fuecoco"] = {book=2, page=45},
  ["Furfrou"] = {book=2, page=18},
  ["Furret"] = {book=1, page=16},
  ["Gabite"] = {book=1, page=42},
  ["Galarian Articuno"] = {book=2, page=42},
  ["Galarian Corsola"] = {book=2, page=37},
  ["Galarian Darmanitan"] = {book=2, page=43},
  ["Galarian Zen Darmanitan"] = {book=2, page=43},
  ["Galarian Darumaka"] = {book=2, page=43},
  ["Galarian Farfetch'd"] = {book=2, page=37},
  ["Galarian Linoone"] = {book=2, page=37},
  ["Galarian Meowth"] = {book=2, page=37},
  ["Galarian Moltres"] = {book=2, page=42},
  ["Galarian Mr. Mime"] = {book=2, page=38},
  ["Galarian Ponyta"] = {book=2, page=42},
  ["Galarian Rapidash"] = {book=2, page=42},
  ["Galarian Slowbro"] = {book=2, page=42},
  ["Galarian Slowking"] = {book=2, page=42},
  ["Galarian Slowpoke"] = {book=2, page=42},
  ["Galarian Stunfisk"] = {book=2, page=43},
  ["Galarian Weezing"] = {book=2, page=42},
  ["Galarian Yamask"] = {book=2, page=38},
  ["Galarian Zapdos"] = {book=2, page=42},
  ["Galarian Zigzagoon"] = {book=2, page=37},
  ["Gallade"] = {book=1, page=44},
  ["Galvantula"] = {book=2, page=9},
  ["Garbodor"] = {book=2, page=7},
  ["Garchomp"] = {book=1, page=42},
  ["Gardevoir"] = {book=1, page=28},
  ["Garganacl"] = {book=2, page=46},
  ["Gastly"] = {book=1, page=9},
  ["Genesect"] = {book=2, page=14},
  ["Gengar"] = {book=1, page=9},
  ["Geodude"] = {book=1, page=8},
  ["Gible"] = {book=1, page=42},
  ["Gigalith"] = {book=2, page=4},
  ["Gimmighoul"] = {book=2, page=51},
  ["Girafarig"] = {book=1, page=19},
  ["Giratina"] = {book=1, page=45},
  ["Origin Giratina"] = {book=1, page=46},
  ["Glaceon"] = {book=1, page=44},
  ["Glalie"] = {book=1, page=34},
  ["Glameow"] = {book=1, page=41},
  ["Glastrier"] = {book=2, page=41},
  ["Gligar"] = {book=1, page=19},
  ["Glimmet"] = {book=2, page=49},
  ["Glimmora"] = {book=2, page=49},
  ["Gliscor"] = {book=1, page=44},
  ["Gloom"] = {book=1, page=5},
  ["GMax Alcremie"] = {book=2, page=38},
  ["GMax Appletun"] = {book=2, page=35},
  ["GMax Blastoise"] = {book=1, page=3},
  ["GMax Butterfree"] = {book=1, page=3},
  ["GMax Centiskorch"] = {book=2, page=36},
  ["GMax Charizard"] = {book=1, page=2},
  ["GMax Cinderace"] = {book=2, page=33},
  ["GMax Coalossal"] = {book=2, page=35},
  ["GMax Copperajah"] = {book=2, page=39},
  ["GMax Corviknight"] = {book=2, page=34},
  ["GMax Drednaw"] = {book=2, page=35},
  ["GMax Duraludon"] = {book=2, page=39},
  ["GMax Eternatus"] = {book=2, page=40},
  ["GMax Flapple"] = {book=2, page=35},
  ["GMax Garbodor"] = {book=2, page=7},
  ["GMax Gengar"] = {book=1, page=9},
  ["GMax Grimmsnarl"] = {book=2, page=37},
  ["GMax Hatterene"] = {book=2, page=37},
  ["GMax Inteleon"] = {book=2, page=33},
  ["GMax Kingler"] = {book=1, page=10},
  ["GMax Lapras"] = {book=1, page=12},
  ["GMax Machamp"] = {book=1, page=7},
  ["GMax Melmetal"] = {book=2, page=29},
  ["GMax Meowth"] = {book=1, page=6},
  ["GMax Orbeetle"] = {book=2, page=34},
  ["GMax Pikachu"] = {book=1, page=4},
  ["GMax Rapid-Strike Urshifu"] = {book=2, page=40},
  ["GMax Rillaboom"] = {book=2, page=33},
  ["GMax Sandaconda"] = {book=2, page=35},
  ["GMax Single-Strike Urshifu"] = {book=2, page=40},
  ["GMax Snorlax"] = {book=1, page=13},
  ["GMax Toxtricity"] = {book=2, page=36},
  ["GMax Venusaur"] = {book=1, page=2},
  ["Gogoat"] = {book=2, page=17},
  ["Golbat"] = {book=1, page=5},
  ["Goldeen"] = {book=1, page=11},
  ["Golduck"] = {book=1, page=6},
  ["Golem"] = {book=1, page=8},
  ["Golett"] = {book=2, page=11},
  ["Golisopod"] = {book=2, page=26},
  ["Golurk"] = {book=2, page=11},
  ["Goodra"] = {book=2, page=20},
  ["Goomy"] = {book=2, page=20},
  ["Gorebyss"] = {book=1, page=35},
  ["Gossifleur"] = {book=2, page=34},
  ["Gothita"] = {book=2, page=7},
  ["Gothitelle"] = {book=2, page=8},
  ["Gothorita"] = {book=2, page=7},
  ["Gourgeist"] = {book=2, page=20},
  ["Grafaiai"] = {book=2, page=47},
  ["Granbull"] = {book=1, page=20},
  ["Grapploct"] = {book=2, page=36},
  ["Graveler"] = {book=1, page=8},
  ["Great Tusk"] = {book=2, page=50},
  ["Greavard"] = {book=2, page=49},
  ["Greedent"] = {book=2, page=33},
  ["Greninja"] = {book=2, page=16},
  ["Grimer"] = {book=1, page=9},
  ["Grimmsnarl"] = {book=2, page=37},
  ["Grookey"] = {book=2, page=33},
  ["Grotle"] = {book=1, page=38},
  ["Groudon"] = {book=1, page=36},
  ["Grovyle"] = {book=1, page=26},
  ["Growlithe"] = {book=1, page=6},
  ["Grubbin"] = {book=2, page=23},
  ["Grumpig"] = {book=1, page=31},
  ["Gulpin"] = {book=1, page=30},
  ["Gumshoos"] = {book=2, page=23},
  ["Gurdurr"] = {book=2, page=4},
  ["Guzzlord"] = {book=2, page=28},
  ["Gyarados"] = {book=1, page=12},
  ["Hakamo-o"] = {book=2, page=27},
  ["Happiny"] = {book=1, page=42},
  ["Hariyama"] = {book=1, page=29},
  ["Hatenna"] = {book=2, page=36},
  ["Hatterene"] = {book=2, page=37},
  ["Hattrem"] = {book=2, page=37},
  ["Haunter"] = {book=1, page=9},
  ["Hawlucha"] = {book=2, page=20},
  ["Haxorus"] = {book=2, page=11},
  ["Heatmor"] = {book=2, page=12},
  ["Heatran"] = {book=1, page=45},
  ["Heliolisk"] = {book=2, page=19},
  ["Helioptile"] = {book=2, page=19},
  ["Heracross"] = {book=1, page=20},
  ["Herdier"] = {book=2, page=2},
  ["Hippopotas"] = {book=1, page=42},
  ["Hippowdon"] = {book=1, page=42},
  ["Hisuian Arcanine"] = {book=2, page=42},
  ["Hisuian Avalugg"] = {book=2, page=43},
  ["Hisuian Basculin"] = {book=2, page=41},
  ["Hisuian Braviary"] = {book=2, page=43},
  ["Hisuian Decidueye"] = {book=2, page=43},
  ["Hisuian Electrode"] = {book=2, page=42},
  ["Hisuian Goodra"] = {book=2, page=43},
  ["Hisuian Growlithe"] = {book=2, page=42},
  ["Hisuian Lilligant"] = {book=2, page=43},
  ["Hisuian Qwilfish"] = {book=2, page=41},
  ["Hisuian Samurott"] = {book=2, page=43},
  ["Hisuian Sliggoo"] = {book=2, page=43},
  ["Hisuian Sneasel"] = {book=2, page=41},
  ["Hisuian Typhlosion"] = {book=2, page=43},
  ["Hisuian Voltorb"] = {book=2, page=42},
  ["Hisuian Zoroark"] = {book=2, page=43},
  ["Hisuian Zorua"] = {book=2, page=43},
  ["Hitmonchan"] = {book=1, page=10},
  ["Hitmonlee"] = {book=1, page=10},
  ["Hitmontop"] = {book=1, page=22},
  ["Ho-oh"] = {book=1, page=23},
  ["Honchkrow"] = {book=1, page=41},
  ["Honedge"] = {book=2, page=18},
  ["Hoopa"] = {book=2, page=21},
  ["Unbound Hoopa"] = {book=2, page=21},
  ["Hoothoot"] = {book=1, page=16},
  ["Hoppip"] = {book=1, page=18},
  ["Horsea"] = {book=1, page=11},
  ["Houndoom"] = {book=1, page=21},
  ["Houndour"] = {book=1, page=21},
  ["Houndstone"] = {book=2, page=49},
  ["Huntail"] = {book=1, page=34},
  ["Hydreigon"] = {book=2, page=12},
  ["Hypno"] = {book=1, page=9},
  ["Ice Rider Calyrex"] = {book=2, page=41},
  ["Thievul"] = {book=2, page=34},
  ["Igglybuff"] = {book=1, page=17},
  ["Illumise"] = {book=1, page=30},
  ["Impidimp"] = {book=2, page=37},
  ["Incineroar"] = {book=2, page=23},
  ["Indeedee"] = {book=2, page=39},
  ["Infernape"] = {book=1, page=38},
  ["Inkay"] = {book=2, page=18},
  ["Inteleon"] = {book=2, page=33},
  ["Iron Bundle"] = {book=2, page=51},
  ["Iron Hands"] = {book=2, page=51},
  ["Iron Jugulis"] = {book=2, page=51},
  ["Iron Moth"] = {book=2, page=51},
  ["Iron Thorns"] = {book=2, page=51},
  ["Iron Treads"] = {book=2, page=50},
  ["Ivysaur"] = {book=1, page=2},
  ["Jangmo-o"] = {book=2, page=27},
  ["Jellicent (F)"] = {book=2, page=9},
  ["Jellicent (M)"] = {book=2, page=9},
  ["Jigglypuff"] = {book=1, page=5},
  ["Jirachi"] = {book=1, page=36},
  ["Joey's Rattata"] = {book=1, page=23},
  ["Jolteon"] = {book=1, page=12},
  ["Joltik"] = {book=2, page=9},
  ["Jumpluff"] = {book=1, page=18},
  ["Jynx"] = {book=1, page=11},
  ["Kabuto"] = {book=1, page=13},
  ["Kabutops"] = {book=1, page=13},
  ["Kadabra"] = {book=1, page=7},
  ["Kakuna"] = {book=1, page=3},
  ["Kangaskhan"] = {book=1, page=11},
  ["Karrablast"] = {book=2, page=9},
  ["Kartana"] = {book=2, page=28},
  ["Kecleon"] = {book=1, page=33},
  ["Ordinary Keldeo"] = {book=2, page=13},
  ["Resolute Keldeo"] = {book=2, page=13},
  ["Kilowattrel"] = {book=2, page=47},
  ["Kingambit"] = {book=2, page=50},
  ["Kingdra"] = {book=1, page=21},
  ["Kingler"] = {book=1, page=9},
  ["Kirlia"] = {book=1, page=28},
  ["Klang"] = {book=2, page=10},
  ["Klawf"] = {book=2, page=48},
  ["Kleavor"] = {book=2, page=41},
  ["Klefki"] = {book=2, page=20},
  ["Klink"] = {book=2, page=10},
  ["Klinklang"] = {book=2, page=10},
  ["Komala"] = {book=2, page=27},
  ["Kommo-o"] = {book=2, page=27},
  ["Koffing"] = {book=1, page=10},
  ["Krabby"] = {book=1, page=9},
  ["Kricketot"] = {book=1, page=38},
  ["Kricketune"] = {book=1, page=39},
  ["Krokorok"] = {book=2, page=6},
  ["Krookodile"] = {book=2, page=6},
  ["Kubfu"] = {book=2, page=40},
  ["Kyogre"] = {book=1, page=36},
  ["Kyurem"] = {book=2, page=13},
  ["Lairon"] = {book=1, page=29},
  ["Lampent"] = {book=2, page=10},
  ["Incarnate Landorus"] = {book=2, page=13},
  ["Therian Landorus"] = {book=2, page=13},
  ["Lanturn"] = {book=1, page=17},
  ["Lapras"] = {book=1, page=12},
  ["Larvesta"] = {book=2, page=12},
  ["Larvitar"] = {book=1, page=22},
  ["Latias"] = {book=1, page=35},
  ["Latios"] = {book=1, page=36},
  ["Leafeon"] = {book=1, page=44},
  ["Leavanny"] = {book=2, page=5},
  ["Lechonk"] = {book=2, page=45},
  ["Ledian"] = {book=1, page=17},
  ["Ledyba"] = {book=1, page=17},
  ["Lickilicky"] = {book=1, page=43},
  ["Lickitung"] = {book=1, page=10},
  ["Liepard"] = {book=2, page=3},
  ["Lileep"] = {book=1, page=33},
  ["Lilligant"] = {book=2, page=5},
  ["Lillipup"] = {book=2, page=2},
  ["Linoone"] = {book=1, page=27},
  ["Litleo"] = {book=2, page=17},
  ["Litten"] = {book=2, page=23},
  ["Litwick"] = {book=2, page=10},
  ["Lokix"] = {book=2, page=46},
  ["Lombre"] = {book=1, page=27},
  ["Lopunny"] = {book=1, page=41},
  ["Lotad"] = {book=1, page=27},
  ["Loudred"] = {book=1, page=29},
  ["Lucario"] = {book=1, page=42},
  ["Ludicolo"] = {book=1, page=27},
  ["Lugia"] = {book=1, page=23},
  ["Lumineon"] = {book=1, page=43},
  ["Lunala"] = {book=2, page=28},
  ["Lunatone"] = {book=1, page=32},
  ["Lurantis"] = {book=2, page=25},
  ["Luvdisc"] = {book=1, page=35},
  ["Luxio"] = {book=1, page=39},
  ["Luxray"] = {book=1, page=39},
  ["Dusk Lycanroc"] = {book=2, page=24},
  ["Midday Lycanroc"] = {book=2, page=24},
  ["Mabosstiff"] = {book=2, page=47},
  ["Machamp"] = {book=1, page=7},
  ["Machoke"] = {book=1, page=7},
  ["Machop"] = {book=1, page=7},
  ["Magby"] = {book=1, page=22},
  ["Magcargo"] = {book=1, page=20},
  ["Magearna"] = {book=2, page=29},
  ["Magikarp"] = {book=1, page=12},
  ["Magmar"] = {book=1, page=11},
  ["Magmortar"] = {book=1, page=44},
  ["Magnemite"] = {book=1, page=8},
  ["Magneton"] = {book=1, page=8},
  ["Magnezone"] = {book=1, page=43},
  ["Makuhita"] = {book=1, page=29},
  ["Malamar"] = {book=2, page=18},
  ["Mamoswine"] = {book=1, page=44},
  ["Manaphy"] = {book=1, page=46},
  ["Mandibuzz"] = {book=2, page=12},
  ["Manectric"] = {book=1, page=30},
  ["Mankey"] = {book=1, page=6},
  ["Mantine"] = {book=1, page=21},
  ["Mantyke"] = {book=1, page=43},
  ["Maractus"] = {book=2, page=6},
  ["Mareanie"] = {book=2, page=25},
  ["Mareep"] = {book=1, page=17},
  ["Marill"] = {book=1, page=18},
  ["Marowak"] = {book=1, page=10},
  ["Marshadow"] = {book=2, page=29},
  ["Marshtomp"] = {book=1, page=26},
  ["Maschiff"] = {book=2, page=47},
  ["Masquerain"] = {book=1, page=28},
  ["Maushold"] = {book=2, page=46},
  ["Mawile"] = {book=1, page=29},
  ["Medicham"] = {book=1, page=30},
  ["Meditite"] = {book=1, page=30},
  ["Mega Abomasnow"] = {book=1, page=43},
  ["Mega Absol"] = {book=1, page=34},
  ["Mega Aerodactyl"] = {book=1, page=13},
  ["Mega Aggron"] = {book=1, page=30},
  ["Mega Alakazam"] = {book=1, page=7},
  ["Mega Altaria"] = {book=1, page=32},
  ["Mega Ampharos"] = {book=1, page=18},
  ["Mega Audino"] = {book=2, page=4},
  ["Mega Banette"] = {book=1, page=33},
  ["Mega Barbaracle"] = {book=2, page=19},
  ["Mega Baxcalibur"] = {book=2, page=51},
  ["Mega Beedrill"] = {book=1, page=3},
  ["Mega Blastoise"] = {book=1, page=2},
  ["Mega Blaziken"] = {book=1, page=26},
  ["Mega Camerupt"] = {book=1, page=31},
  ["Mega Chandelure"] = {book=2, page=10},
  ["Mega Charizard X"] = {book=1, page=2},
  ["Mega Charizard Y"] = {book=1, page=2},
  ["Mega Chesnaught"] = {book=2, page=16},
  ["Mega Chimecho"] = {book=1, page=34},
  ["Mega Clefable"] = {book=1, page=5},
  ["Mega Delphox"] = {book=2, page=16},
  ["Mega Diancie"] = {book=2, page=21},
  ["Mega Dragalge"] = {book=2, page=19},
  ["Mega Dragonite"] = {book=1, page=13},
  ["Mega Drampa"] = {book=2, page=27},
  ["Mega Eelektross"] = {book=2, page=10},
  ["Mega Emboar"] = {book=2, page=2},
  ["Mega Eternal Flower Floette"] = {book=2, page=21},
  ["Mega Excadrill"] = {book=2, page=4},
  ["Mega Falinks"] = {book=2, page=38},
  ["Mega Feraligatr"] = {book=1, page=16},
  ["Mega Froslass"] = {book=1, page=44},
  ["Mega Gallade"] = {book=1, page=44},
  ["Mega Garchomp"] = {book=1, page=42},
  ["Mega Gardevoir"] = {book=1, page=28},
  ["Mega Gengar"] = {book=1, page=9},
  ["Mega Glalie"] = {book=1, page=34},
  ["Mega Greninja"] = {book=2, page=16},
  ["Mega Gyarados"] = {book=1, page=12},
  ["Mega Hawlucha"] = {book=2, page=20},
  ["Mega Heracross"] = {book=1, page=20},
  ["Mega Houndoom"] = {book=1, page=21},
  ["Mega Kangaskhan"] = {book=1, page=11},
  ["Mega Latias"] = {book=1, page=36},
  ["Mega Latios"] = {book=1, page=36},
  ["Mega Lopunny"] = {book=1, page=41},
  ["Mega Lucario"] = {book=1, page=42},
  ["Mega Malamar"] = {book=2, page=19},
  ["Mega Manectric"] = {book=1, page=30},
  ["Mega Mawile"] = {book=1, page=29},
  ["Mega Medicham"] = {book=1, page=30},
  ["Mega Meganium"] = {book=1, page=16},
  ["Mega Metagross"] = {book=1, page=35},
  ["Mega Mewtwo X"] = {book=1, page=14},
  ["Mega Mewtwo Y"] = {book=1, page=14},
  ["Mega Pidgeot"] = {book=1, page=3},
  ["Mega Pinsir"] = {book=1, page=12},
  ["Mega Pyroar"] = {book=2, page=17},
  ["Mega Raichu X"] = {book=1, page=4},
  ["Mega Raichu Y"] = {book=1, page=4},
  ["Mega Rayquaza"] = {book=1, page=36},
  ["Mega Sableye"] = {book=1, page=29},
  ["Mega Salamence"] = {book=1, page=35},
  ["Mega Sceptile"] = {book=1, page=26},
  ["Mega Scizor"] = {book=1, page=20},
  ["Mega Scolipede"] = {book=2, page=5},
  ["Mega Scrafty"] = {book=2, page=6},
  ["Mega Sharpedo"] = {book=1, page=31},
  ["Mega Skarmory"] = {book=1, page=21},
  ["Mega Slowbro"] = {book=1, page=8},
  ["Mega Starmie"] = {book=1, page=11},
  ["Mega Steelix"] = {book=1, page=20},
  ["Mega Swampert"] = {book=1, page=26},
  ["Mega Tyranitar"] = {book=1, page=23},
  ["Mega Venusaur"] = {book=1, page=2},
  ["Mega Victreebel"] = {book=1, page=7},
  ["Mega Zygarde"] = {book=2, page=21},
  ["Meganium"] = {book=1, page=16},
  ["Melmetal"] = {book=2, page=29},
  ["Meloetta"] = {book=2, page=13},
  ["Pirouette Meloetta"] = {book=2, page=13},
  ["Meltan"] = {book=2, page=29},
  ["Meowscarada"] = {book=2, page=45},
  ["Meowstic (F)"] = {book=2, page=18},
  ["Meowstic (M)"] = {book=2, page=18},
  ["Meowth"] = {book=1, page=6},
  ["Mesprit"] = {book=1, page=45},
  ["Metagross"] = {book=1, page=35},
  ["Metang"] = {book=1, page=35},
  ["Metapod"] = {book=1, page=3},
  ["Mew"] = {book=1, page=14},
  ["Mewtwo"] = {book=1, page=14},
  ["Midnight Lycanroc"] = {book=2, page=24},
  ["Mienfoo"] = {book=2, page=11},
  ["Mienshao"] = {book=2, page=11},
  ["Mightyena"] = {book=1, page=26},
  ["Milcery"] = {book=2, page=38},
  ["Milotic"] = {book=1, page=33},
  ["Miltank"] = {book=1, page=22},
  ["Mime Jr."] = {book=1, page=41},
  ["Mimikyu"] = {book=2, page=27},
  ["Minccino"] = {book=2, page=7},
  ["Mindy's Haunter"] = {book=1, page=46},
  ["Red Core Minior"] = {book=2, page=26},
  ["Meteor Minior"] = {book=2, page=26},
  ["Minun"] = {book=1, page=30},
  ["Misdreavus"] = {book=1, page=19},
  ["Mismagius"] = {book=1, page=41},
  ["Moltres"] = {book=1, page=13},
  ["Monferno"] = {book=1, page=38},
  ["Morelull"] = {book=2, page=25},
  ["Morgrem"] = {book=2, page=37},
  ["Full Belly Morpeko"] = {book=2, page=39},
  ["Hangry Morpeko"] = {book=2, page=39},
  ["Mothim"] = {book=1, page=40},
  ["Mr. Mime"] = {book=1, page=11},
  ["Mr. Rime"] = {book=2, page=38},
  ["Mudbray"] = {book=2, page=25},
  ["Mudkip"] = {book=1, page=26},
  ["Mudsdale"] = {book=2, page=25},
  ["Muk"] = {book=1, page=9},
  ["Munchlax"] = {book=1, page=42},
  ["Munna"] = {book=2, page=3},
  ["Murkrow"] = {book=1, page=19},
  ["Musharna"] = {book=2, page=3},
  ["Nacli"] = {book=2, page=46},
  ["Naclstack"] = {book=2, page=46},
  ["Naganadel"] = {book=2, page=29},
  ["Natu"] = {book=1, page=17},
  ["Necrozma"] = {book=2, page=28},
  ["Nickit"] = {book=2, page=34},
  ["Nidoking"] = {book=1, page=5},
  ["Nidoqueen"] = {book=1, page=4},
  ["Nidoran (F)"] = {book=1, page=4},
  ["Nidoran (M)"] = {book=1, page=4},
  ["Nidorina"] = {book=1, page=4},
  ["Nidorino"] = {book=1, page=5},
  ["Nihilego"] = {book=2, page=28},
  ["Nincada"] = {book=1, page=28},
  ["Ninetales"] = {book=1, page=5},
  ["Ninjask"] = {book=1, page=28},
  ["Noctowl"] = {book=1, page=16},
  ["Noibat"] = {book=2, page=21},
  ["Noivern"] = {book=2, page=21},
  ["Nosepass"] = {book=1, page=29},
  ["Numel"] = {book=1, page=31},
  ["Nuzleaf"] = {book=1, page=27},
  ["Nymble"] = {book=2, page=45},
  ["Obstagoon"] = {book=2, page=37},
  ["Octillery"] = {book=1, page=21},
  ["Oddish"] = {book=1, page=5},
  ["Oinkologne (F)"] = {book=2, page=45},
  ["Oinkologne (M)"] = {book=2, page=45},
  ["Omanyte"] = {book=1, page=12},
  ["Omastar"] = {book=1, page=13},
  ["Onix"] = {book=1, page=9},
  ["Oranguru"] = {book=2, page=26},
  ["Orbeetle"] = {book=2, page=34},
  ["Baile Oricorio"] = {book=2, page=24},
  ["Pa'u Oricorio"] = {book=2, page=24},
  ["Pom-Pom Oricorio"] = {book=2, page=24},
  ["Sensu Oricorio"] = {book=2, page=24},
  ["Orthworm"] = {book=2, page=49},
  ["Oshawott"] = {book=2, page=2},
  ["Overqwil"] = {book=2, page=41},
  ["Pachirisu"] = {book=1, page=40},
  ["Hero Palafin"] = {book=2, page=48},
  ["Zero Palafin"] = {book=2, page=49},
  ["Aqua Paldean Tauros"] = {book=2, page=53},
  ["Blaze Paldean Tauros"] = {book=2, page=53},
  ["Combat Paldean Tauros"] = {book=2, page=53},
  ["Paldean Wooper"] = {book=2, page=50},
  ["Palkia"] = {book=1, page=45},
  ["Origin Palkia"] = {book=1, page=45},
  ["Palossand"] = {book=2, page=26},
  ["Palpitoad"] = {book=2, page=5},
  ["Pancham"] = {book=2, page=17},
  ["Pangoro"] = {book=2, page=18},
  ["Panpour"] = {book=2, page=3},
  ["Pansage"] = {book=2, page=3},
  ["Pansear"] = {book=2, page=3},
  ["Paras"] = {book=1, page=5},
  ["Parasect"] = {book=1, page=6},
  ["Passimian"] = {book=2, page=26},
  ["Patrat"] = {book=2, page=2},
  ["Pawmi"] = {book=2, page=46},
  ["Pawmo"] = {book=2, page=46},
  ["Pawmot"] = {book=2, page=46},
  ["Pawniard"] = {book=2, page=11},
  ["Pelipper"] = {book=1, page=28},
  ["Perrserker"] = {book=2, page=37},
  ["Persian"] = {book=1, page=6},
  ["Petilil"] = {book=2, page=5},
  ["Phanpy"] = {book=1, page=21},
  ["Phantump"] = {book=2, page=20},
  ["Pheromosa"] = {book=2, page=28},
  ["Phione"] = {book=1, page=46},
  ["Pichu"] = {book=1, page=17},
  ["Pidgeot"] = {book=1, page=3},
  ["Pidgeotto"] = {book=1, page=3},
  ["Pidgey"] = {book=1, page=3},
  ["Pidove"] = {book=2, page=3},
  ["Pignite"] = {book=2, page=2},
  ["Pikachu"] = {book=1, page=4},
  ["Pikipek"] = {book=2, page=23},
  ["Piloswine"] = {book=1, page=21},
  ["Pincurchin"] = {book=2, page=38},
  ["Pineco"] = {book=1, page=19},
  ["Pinsir"] = {book=1, page=12},
  ["Piplup"] = {book=1, page=38},
  ["Plusle"] = {book=1, page=30},
  ["Poipole"] = {book=2, page=29},
  ["Politoed"] = {book=1, page=18},
  ["Poliwag"] = {book=1, page=6},
  ["Poliwhirl"] = {book=1, page=7},
  ["Poliwrath"] = {book=1, page=7},
  ["Polteageist"] = {book=2, page=36},
  ["Ponyta"] = {book=1, page=8},
  ["Poochyena"] = {book=1, page=26},
  ["Popplio"] = {book=2, page=23},
  ["Porygon"] = {book=1, page=12},
  ["Porygon-Z"] = {book=1, page=44},
  ["Porygon2"] = {book=1, page=21},
  ["Primal Kyogre"] = {book=1, page=36},
  ["Primal Groudon"] = {book=1, page=36},
  ["Primarina"] = {book=2, page=23},
  ["Primeape"] = {book=1, page=6},
  ["Prinplup"] = {book=1, page=38},
  ["Probopass"] = {book=1, page=44},
  ["Psyduck"] = {book=1, page=6},
  ["Pumpkaboo"] = {book=2, page=20},
  ["Pupitar"] = {book=1, page=22},
  ["Purrloin"] = {book=2, page=3},
  ["Purugly"] = {book=1, page=41},
  ["Pyroar (F)"] = {book=2, page=17},
  ["Pyroar (M)"] = {book=2, page=17},
  ["Pyukumuku"] = {book=2, page=26},
  ["Quagsire"] = {book=1, page=19},
  ["Quaquaval"] = {book=2, page=45},
  ["Quaxly"] = {book=2, page=45},
  ["Quaxwell"] = {book=2, page=45},
  ["Quilava"] = {book=1, page=16},
  ["Quilladin"] = {book=2, page=16},
  ["Qwilfish"] = {book=1, page=20},
  ["Raboot"] = {book=2, page=33},
  ["Rabsca"] = {book=2, page=48},
  ["Raichu"] = {book=1, page=4},
  ["Raikou"] = {book=1, page=22},
  ["Ralts"] = {book=1, page=28},
  ["Rampardos"] = {book=1, page=39},
  ["Rapid-Strike Urshifu"] = {book=2, page=40},
  ["Rapidash"] = {book=1, page=8},
  ["Raticate"] = {book=1, page=3},
  ["Rattata"] = {book=1, page=3},
  ["Rayquaza"] = {book=1, page=36},
  ["Regice"] = {book=1, page=35},
  ["Regidrago"] = {book=2, page=40},
  ["Regieleki"] = {book=2, page=40},
  ["Regigigas"] = {book=1, page=45},
  ["Regirock"] = {book=1, page=35},
  ["Registeel"] = {book=1, page=35},
  ["Relicanth"] = {book=1, page=35},
  ["Rellor"] = {book=2, page=48},
  ["Remoraid"] = {book=1, page=21},
  ["Reshiram"] = {book=2, page=13},
  ["Reuniclus"] = {book=2, page=8},
  ["Revavroom"] = {book=2, page=49},
  ["Rhydon"] = {book=1, page=10},
  ["Rhyhorn"] = {book=1, page=10},
  ["Rhyperior"] = {book=1, page=43},
  ["Ribombee"] = {book=2, page=24},
  ["Rillaboom"] = {book=2, page=33},
  ["Riolu"] = {book=1, page=42},
  ["Rockruff"] = {book=2, page=24},
  ["Roggenrola"] = {book=2, page=4},
  ["Throh"] = {book=2, page=5},
  ["Rolycoly"] = {book=2, page=35},
  ["Rookidee"] = {book=2, page=33},
  ["Roselia"] = {book=1, page=30},
  ["Roserade"] = {book=1, page=39},
  ["Rotom"] = {book=1, page=44},
  ["Fan Rotom"] = {book=1, page=45},
  ["Frost Rotom"] = {book=1, page=45},
  ["Heat Rotom"] = {book=1, page=45},
  ["Mow Rotom"] = {book=1, page=45},
  ["Wash Rotom"] = {book=1, page=45},
  ["Rowlet"] = {book=2, page=23},
  ["Rufflet"] = {book=2, page=12},
  ["Runerigus"] = {book=2, page=38},
  ["Sableye"] = {book=1, page=29},
  ["Salamence"] = {book=1, page=35},
  ["Salandit"] = {book=2, page=25},
  ["Salazzle"] = {book=2, page=25},
  ["Samurott"] = {book=2, page=2},
  ["Sandaconda"] = {book=2, page=35},
  ["Sandile"] = {book=2, page=6},
  ["Sandshrew"] = {book=1, page=4},
  ["Sandslash"] = {book=1, page=4},
  ["Sandy Shocks"] = {book=2, page=50},
  ["Sandygast"] = {book=2, page=26},
  ["Sawk"] = {book=2, page=5},
  ["Spring Sawsbuck"] = {book=2, page=8},
  ["Autumn Sawsbuck"] = {book=2, page=8},
  ["Summer Sawsbuck"] = {book=2, page=9},
  ["Winter Sawsbuck"] = {book=2, page=9},
  ["Scatterbug"] = {book=2, page=17},
  ["Sceptile"] = {book=1, page=26},
  ["Scizor"] = {book=1, page=20},
  ["Scolipede"] = {book=2, page=5},
  ["Scorbunny"] = {book=2, page=33},
  ["Scovillain"] = {book=2, page=48},
  ["Scraggy"] = {book=2, page=6},
  ["Scrafty"] = {book=2, page=6},
  ["Scream Tail"] = {book=2, page=50},
  ["Scyther"] = {book=1, page=11},
  ["Seadra"] = {book=1, page=11},
  ["Seaking"] = {book=1, page=11},
  ["Sealeo"] = {book=1, page=34},
  ["Seedot"] = {book=1, page=27},
  ["Seel"] = {book=1, page=8},
  ["Seismitoad"] = {book=2, page=5},
  ["Sentret"] = {book=1, page=16},
  ["Serperior"] = {book=2, page=2},
  ["Servine"] = {book=2, page=2},
  ["Seviper"] = {book=1, page=32},
  ["Sewaddle"] = {book=2, page=5},
  ["Shadow Lugia"] = {book=1, page=23},
  ["Shadow Mewtwo"] = {book=1, page=14},
  ["Shadow Rider Calyrex"] = {book=2, page=41},
  ["Sharpedo"] = {book=1, page=31},
  ["Land Shaymin"] = {book=1, page=46},
  ["Sky Shaymin"] = {book=1, page=46},
  ["Shedinja"] = {book=1, page=28},
  ["Shelgon"] = {book=1, page=35},
  ["Shellder"] = {book=1, page=9},
  ["Shelmet"] = {book=2, page=11},
  ["Shieldon"] = {book=1, page=39},
  ["Shiinotic"] = {book=2, page=25},
  ["Shinx"] = {book=1, page=39},
  ["Red Gyarados"] = {book=1, page=23},
  ["Mega Red Gyarados"] = {book=1, page=23},
  ["Shiftry"] = {book=1, page=27},
  ["Shroodle"] = {book=2, page=47},
  ["Shroomish"] = {book=1, page=28},
  ["Shuckle"] = {book=1, page=20},
  ["Shuppet"] = {book=1, page=33},
  ["Sigilyph"] = {book=2, page=6},
  ["Silcoon"] = {book=1, page=27},
  ["Silicobra"] = {book=2, page=35},
  ["Silvally"] = {book=2, page=26},
  ["Simipour"] = {book=2, page=3},
  ["Simisage"] = {book=2, page=3},
  ["Simisear"] = {book=2, page=3},
  ["Single-Strike Urshifu"] = {book=2, page=40},
  ["Sinistea"] = {book=2, page=36},
  ["Sirfetch'd"] = {book=2, page=38},
  ["Sizzlipede"] = {book=2, page=36},
  ["Skarmory"] = {book=1, page=21},
  ["Skeledirge"] = {book=2, page=45},
  ["Skiddo"] = {book=2, page=17},
  ["Skiploom"] = {book=1, page=18},
  ["Skitty"] = {book=1, page=29},
  ["Skorupi"] = {book=1, page=42},
  ["Skrelp"] = {book=2, page=19},
  ["Skuntank"] = {book=1, page=41},
  ["Skwovet"] = {book=2, page=33},
  ["Slaking"] = {book=1, page=28},
  ["Slakoth"] = {book=1, page=28},
  ["Sliggoo"] = {book=2, page=20},
  ["Slither Wing"] = {book=2, page=50},
  ["Slowbro"] = {book=1, page=8},
  ["Slowking"] = {book=1, page=19},
  ["Slowpoke"] = {book=1, page=8},
  ["Slugma"] = {book=1, page=20},
  ["Slurpuff"] = {book=2, page=18},
  ["Smeargle"] = {book=1, page=22},
  ["Smoliv"] = {book=2, page=46},
  ["Smoochum"] = {book=1, page=22},
  ["Sneasel"] = {book=1, page=20},
  ["Sneasler"] = {book=2, page=41},
  ["Snivy"] = {book=2, page=2},
  ["Snom"] = {book=2, page=38},
  ["Snorlax"] = {book=1, page=13},
  ["Snorunt"] = {book=1, page=34},
  ["Snover"] = {book=1, page=43},
  ["Snubbull"] = {book=1, page=20},
  ["Sobble"] = {book=2, page=33},
  ["Solgaleo"] = {book=2, page=28},
  ["Solosis"] = {book=2, page=8},
  ["Solrock"] = {book=1, page=32},
  ["Spearow"] = {book=1, page=4},
  ["Spectrier"] = {book=2, page=41},
  ["Spewpa"] = {book=2, page=17},
  ["Spheal"] = {book=1, page=34},
  ["Spidops"] = {book=2, page=45},
  ["Spinarak"] = {book=1, page=17},
  ["Spinda"] = {book=1, page=31},
  ["Spiritomb"] = {book=1, page=42},
  ["Spoink"] = {book=1, page=31},
  ["Sprigatito"] = {book=2, page=45},
  ["Spritzee"] = {book=2, page=18},
  ["Squawkabilly"] = {book=2, page=46},
  ["Squirtle"] = {book=1, page=2},
  ["Stakataka"] = {book=2, page=29},
  ["Stantler"] = {book=1, page=22},
  ["Staraptor"] = {book=1, page=38},
  ["Staravia"] = {book=1, page=38},
  ["Starly"] = {book=1, page=38},
  ["Starmie"] = {book=1, page=11},
  ["Staryu"] = {book=1, page=11},
  ["Steelix"] = {book=1, page=19},
  ["Steenee"] = {book=2, page=26},
  ["Stonjourner"] = {book=2, page=38},
  ["Stoutland"] = {book=2, page=3},
  ["Stunky"] = {book=1, page=41},
  ["Stunfisk"] = {book=2, page=11},
  ["Stufful"] = {book=2, page=25},
  ["Sudowoodo"] = {book=1, page=18},
  ["Suicune"] = {book=1, page=22},
  ["Sunkern"] = {book=1, page=18},
  ["Sunflora"] = {book=1, page=18},
  ["Surskit"] = {book=1, page=28},
  ["Swablu"] = {book=1, page=32},
  ["Swadloon"] = {book=2, page=5},
  ["Swalot"] = {book=1, page=30},
  ["Swampert"] = {book=1, page=26},
  ["Swanna"] = {book=2, page=8},
  ["Swellow"] = {book=1, page=27},
  ["Swinub"] = {book=1, page=20},
  ["Swirlix"] = {book=2, page=18},
  ["Swoobat"] = {book=2, page=4},
  ["Sylveon"] = {book=2, page=20},
  ["Tadbulb"] = {book=2, page=47},
  ["Taillow"] = {book=1, page=27},
  ["Talonflame"] = {book=2, page=17},
  ["Tandemaus"] = {book=2, page=46},
  ["Tangela"] = {book=1, page=11},
  ["Tangrowth"] = {book=1, page=43},
  ["Tapu Bulu"] = {book=2, page=27},
  ["Tapu Fini"] = {book=2, page=27},
  ["Tapu Koko"] = {book=2, page=27},
  ["Tapu Lele"] = {book=2, page=27},
  ["Tarountula"] = {book=2, page=45},
  ["Curly Tatsugiri"] = {book=2, page=49},
  ["Droopy Tatsugiri"] = {book=2, page=50},
  ["Stretchy Tatsugiri"] = {book=2, page=50},
  ["Tauros"] = {book=1, page=12},
  ["Teddiursa"] = {book=1, page=20},
  ["Tentacool"] = {book=1, page=7},
  ["Tentacruel"] = {book=1, page=8},
  ["Tepig"] = {book=2, page=2},
  ["Terrakion"] = {book=2, page=12},
  ["Timburr"] = {book=2, page=4},
  ["Tinkatink"] = {book=2, page=48},
  ["Tinkaton"] = {book=2, page=48},
  ["Tinkatuff"] = {book=2, page=48},
  ["Tirtouga"] = {book=2, page=7},
  ["Toedscool"] = {book=2, page=47},
  ["Toedscruel"] = {book=2, page=47},
  ["Togedemaru"] = {book=2, page=27},
  ["Togekiss"] = {book=1, page=44},
  ["Togepi"] = {book=1, page=17},
  ["Togetic"] = {book=1, page=17},
  ["Torchic"] = {book=1, page=26},
  ["Torkoal"] = {book=1, page=31},
  ["Incarnate Tornadus"] = {book=2, page=13},
  ["Therian Tornadus"] = {book=2, page=13},
  ["Torracat"] = {book=2, page=23},
  ["Torterra"] = {book=1, page=38},
  ["Totodile"] = {book=1, page=16},
  ["Toucannon"] = {book=2, page=23},
  ["Toxapex"] = {book=2, page=25},
  ["Toxel"] = {book=2, page=36},
  ["Toxicroak"] = {book=1, page=43},
  ["Amped Toxtricity"] = {book=2, page=36},
  ["Low-Key Toxtricity"] = {book=2, page=36},
  ["Tranquil"] = {book=2, page=3},
  ["Trapinch"] = {book=1, page=31},
  ["Treecko"] = {book=1, page=26},
  ["Trevenant"] = {book=2, page=20},
  ["Tropius"] = {book=1, page=34},
  ["Trubbish"] = {book=2, page=7},
  ["Trumbeak"] = {book=2, page=23},
  ["Tsareena"] = {book=2, page=26},
  ["Turtonator"] = {book=2, page=27},
  ["Turtwig"] = {book=1, page=38},
  ["Tympole"] = {book=2, page=4},
  ["Tynamo"] = {book=2, page=10},
  ["Type: Null"] = {book=2, page=26},
  ["Typhlosion"] = {book=1, page=16},
  ["Tyranitar"] = {book=1, page=22},
  ["Tyrantrum"] = {book=2, page=19},
  ["Tyrogue"] = {book=1, page=22},
  ["Tyrunt"] = {book=2, page=19},
  ["Ultra Necrozma"] = {book=2, page=28},
  ["Umbreon"] = {book=1, page=19},
  ["Incarnate Thundurus"] = {book=2, page=13},
  ["Therian Thundurus"] = {book=2, page=13},
  ["Unfezant"] = {book=2, page=3},
  ["Unown"] = {book=1, page=19},
  ["Ursaluna"] = {book=2, page=41},
  ["Ursaring"] = {book=1, page=20},
  ["Uxie"] = {book=1, page=45},
  ["Vanillish"] = {book=2, page=8},
  ["Vanillite"] = {book=2, page=8},
  ["Vanilluxe"] = {book=2, page=8},
  ["Vaporeon"] = {book=1, page=12},
  ["Varoom"] = {book=2, page=49},
  ["Veluza"] = {book=2, page=49},
  ["Venipede"] = {book=2, page=5},
  ["Venomoth"] = {book=1, page=6},
  ["Venonat"] = {book=1, page=6},
  ["Venusaur"] = {book=1, page=2},
  ["Vespiquen"] = {book=1, page=40},
  ["Vibrava"] = {book=1, page=31},
  ["Victini"] = {book=2, page=2},
  ["Victreebel"] = {book=1, page=7},
  ["Vigoroth"] = {book=1, page=28},
  ["Vikavolt"] = {book=2, page=24},
  ["Vileplume"] = {book=1, page=5},
  ["Virizion"] = {book=2, page=12},
  ["Vivillon"] = {book=2, page=17},
  ["Volbeat"] = {book=1, page=30},
  ["Volcanion"] = {book=2, page=21},
  ["Volcarona"] = {book=2, page=12},
  ["Voltorb"] = {book=1, page=10},
  ["Vullaby"] = {book=2, page=12},
  ["Vulpix"] = {book=1, page=5},
  ["Thwackey"] = {book=2, page=33},
  ["Wailmer"] = {book=1, page=31},
  ["Wailord"] = {book=1, page=31},
  ["Walrein"] = {book=1, page=34},
  ["Wartortle"] = {book=1, page=2},
  ["Watchog"] = {book=2, page=2},
  ["Wattrel"] = {book=2, page=47},
  ["Weavile"] = {book=1, page=43},
  ["Weedle"] = {book=1, page=3},
  ["Weepinbell"] = {book=1, page=7},
  ["Weezing"] = {book=1, page=10},
  ["West Gastrodon"] = {book=1, page=40},
  ["West Shellos"] = {book=1, page=40},
  ["Whimsicott"] = {book=2, page=5},
  ["Whirlipede"] = {book=2, page=5},
  ["Whiscash"] = {book=1, page=32},
  ["Whismur"] = {book=1, page=29},
  ["White Kyurem"] = {book=2, page=13},
  ["Wigglytuff"] = {book=1, page=5},
  ["Wiglett"] = {book=2, page=48},
  ["Wimpod"] = {book=2, page=26},
  ["Wingull"] = {book=1, page=27},
  ["School Wishiwashi"] = {book=2, page=25},
  ["Solo Wishiwashi"] = {book=2, page=24},
  ["Wobbuffet"] = {book=1, page=19},
  ["Woobat"] = {book=2, page=4},
  ["Wooloo"] = {book=2, page=34},
  ["Wooper"] = {book=1, page=19},
  ["Plant Wormadam"] = {book=1, page=39},
  ["Sandy Wormadam"] = {book=1, page=39},
  ["Trash Wormadam"] = {book=1, page=40},
  ["Wugtrio"] = {book=2, page=48},
  ["Wurmple"] = {book=1, page=27},
  ["Wynaut"] = {book=1, page=34},
  ["Wyrdeer"] = {book=2, page=41},
  ["Xatu"] = {book=1, page=17},
  ["Xerneas"] = {book=2, page=21},
  ["Xurkitree"] = {book=2, page=28},
  ["Yamask"] = {book=2, page=7},
  ["Yamper"] = {book=2, page=35},
  ["Yanma"] = {book=1, page=18},
  ["Yanmega"] = {book=1, page=44},
  ["Yungoos"] = {book=2, page=23},
  ["Yveltal"] = {book=2, page=21},
  ["Zacian"] = {book=2, page=40},
  ["Zamazenta"] = {book=2, page=40},
  ["Zangoose"] = {book=1, page=32},
  ["Zapdos"] = {book=1, page=13},
  ["Zarude"] = {book=2, page=40},
  ["Zebstrika"] = {book=2, page=4},
  ["Zekrom"] = {book=2, page=13},
  ["Zeraora"] = {book=2, page=29},
  ["Zigzagoon"] = {book=1, page=26},
  ["Zoroark"] = {book=2, page=7},
  ["Zorua"] = {book=2, page=7},
  ["Zubat"] = {book=1, page=5},
  ["Zweilous"] = {book=2, page=12},
  ["10% Zygarde"] = {book=2, page=21},
  ["50% Zygarde"] = {book=2, page=21},
  ["Complete Zygarde"] = {book=2, page=21},
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--  CAMERA
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function showArena(obj, color)
  Player[color].lookAt({
    position = { x = -34.89, y = 0.96, z = 0.7 },
    pitch    = 90,
    yaw      = 0,
    distance = 20,
  })
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--  DATA GETTERS
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function GetPokemonDataByGUID(params)
  if not params.guid then return nil end

  local data
  for i = 1, #selectedGens do
    data = getPokemonData(genData[i], params.guid)
    if data ~= nil then
      return data
    end
  end

  -- Check custom Pokemon.
  if customGen then
    data = getPokemonData(customPokemonData, params.guid)
    if data ~= nil then
      return data
    end
  end
  
  -- Check the board Pokemon.
  data = getPokemonData(boardPokemonData, params.guid)
  if data ~= nil then
    return data
  end

  -- Check the fossil Pokemon.
  data = getPokemonData(fossilPokeballPokemonData, params.guid)
  if data ~= nil then
    return data
  end

  -- Check the paradox Pokemon.
  data = getPokemonData(paradoxPokeballPokemonData, params.guid)
  if data ~= nil then
    return data
  end

  -- Check the Pokéstar Studios Pokemon.
  data = getPokemonData(pokestarStudiosData, params.guid)
  if data ~= nil then
    return data
  end

  --@Thanathoum
  -- Check cloned Pokemon.
  data = getPokemonData(clonedPokemonData, params.guid)
  if data ~= nil then
    return data
  end
end

function GetAnyPokemonDataByGUID(params)
  for i = 1, #selectedGens do
    local data = getPokemonData(genData[i], params.guid)
    if data ~= nil then
      return data
    end
  end
  if customGen then
    data = getPokemonData(customPokemonData, params.guid)
    if data ~= nil then
      return data
    end
  end
  
  -- Check the board Pokemon.
  data = getPokemonData(boardPokemonData, params.guid)
  if data ~= nil then
    return data
  end

  -- Check the fossil Pokemon.
  data = getPokemonData(fossilPokeballPokemonData, params.guid)
  if data ~= nil then
    return data
  end

  -- Check the paradox Pokemon.
  data = getPokemonData(paradoxPokeballPokemonData, params.guid)
  if data ~= nil then
    return data
  end

  -- Check the Pokéstar Studios Pokemon.
  data = getPokemonData(pokestarStudiosData, params.guid)
  if data ~= nil then
    return data
  end

  --@Thanathoum
  -- Check cloned Pokemon.
  data = getPokemonData(clonedPokemonData, params.guid)
  if data ~= nil then
    return data
  end
end

function GetPokemonDataByName(params)
  local data
  for i = 1, #selectedGens do
    data = getPokemonDataName(genData[i], params.name)
    if data ~= nil then
      return data
    end
  end
  if customGen then
    data = getPokemonDataName(customPokemonData, params.guid)
    if data ~= nil then
      return data
    end
  end

  -- Check the board Pokemon.
  data = getPokemonDataName(boardPokemonData, params.guid)
  if data ~= nil then
    return data
  end
  
  -- Check the fossil Pokemon.
  data = getPokemonData(fossilPokeballPokemonData, params.guid)
  if data ~= nil then
    return data
  end
  
  -- Check the paradox Pokemon.
  data = getPokemonData(paradoxPokeballPokemonData, params.guid)
  if data ~= nil then
    return data
  end

  -- Check the Pokéstar Studios Pokemon.
  data = getPokemonData(pokestarStudiosData, params.guid)
  if data ~= nil then
    return data
  end
  print("No Pokémon Data Found")
end

function getPokemonData(pokemonList, guid)
  for i = 1, #pokemonList do
    local data = pokemonList[i]
    local guids = data.guids
    for j = 1, #guids do
      if guids[j] == guid then
        return data
      end
    end
  end
  return nil
end

function getPokemonDataName(pokemonList, name)
  for i = 1, #pokemonList do
    local data = pokemonList[i]
    local names = data.name
    if names == name then
      return data
    end
  end
  return nil
end

-- Helper function to get pokemon data by gen.
function getPokemonDataByGen(gen)
  if gen == 1 then
    return gen1PokemonData
  elseif gen == 2 then
    return gen2PokemonData
  elseif gen == 3 then
    return gen3PokemonData
  elseif gen == 4 then
    return gen4PokemonData
  elseif gen == 5 then
    return gen5PokemonData
  elseif gen == 6 then
    return gen6PokemonData
  elseif gen == 7 then
    return gen7PokemonData
  elseif gen == 8 then
    return gen8PokemonData
  elseif gen == 9 then
    return gen9PokemonData
  end

  -- No data found.
  print("ERROR: No Pokémon data found for gen " .. tostring(gen))
  return nil
end

function GetTypeDataByName(name)
  for i = 1, #typeData do
    local data = typeData[i]
    local typeName = data.name
    if typeName == name then
      return data
    end
  end
end

function GetImmunityDataByName(name)
  for i = 1, #immunityData do
    local data = immunityData[i]
    local immunityName = data.name
    if immunityName == name then
      return data
    end
  end
end

function GetGymDataByGUID(params)
  for i = 1, #gymData do
    local data = gymData[i]
    if data.guid == params.guid then
      return data
    end
  end

  -- If we get here, we didn't find the gym leader. Maybe it is custom? <.<
  for i = 1, #customGymData do
    local data = customGymData[i]
    if data.guid == params.guid then
      return data
    end
  end
end

function GetRivalDataByRegion(region)
  for i = 1, #rivalData do
    local tempRivalData = rivalData[i]
    if tempRivalData.region == region then
      return tempRivalData
    end
  end
end

function GetRivalPokemonDataByGuid(guid)
  for i = 1, #rivalData do
    local tempRivalData = rivalData[i]
    for pokemonLevel = 1, #tempRivalData.pokemonData do
      if tempRivalData.pokemonData[pokemonLevel].guid == guid then
        return tempRivalData.pokemonData[pokemonLevel]
      end
    end
  end
end

function GetMoveDataByName(name)
  for i = 1, #moveData do
    local data = moveData[i]
    if data.name == name then
      return data
    end
  end

  -- If we get here, we didn't find the move data. Maybe it is custom? <.<
  for i = 1, #customMoveData do
    local data = customMoveData[i]
    if data.name == name then
      return data
    end
  end

  print("Unable to find move data for: " .. tostring(name))
  return {}
end

function GetMoveDataByGUID(params)
  for abcdefg = 1, #moveData do
    local data = moveData[abcdefg]
    local guids4 = data.guids
    for index = 1, #guids4 do
      if guids4[index] == params.guid then
        return data
      end
    end
  end
end

function GetZCrystalDataByGUID(params)
  for zCrystalIndex = 1, #zCrystalData do
    local data = zCrystalData[zCrystalIndex]
    local guid = data.guid
    if guid == params.zCrystalGuid then
      -- Check against override data, if present.
      if data.overrides ~= nil and params.pokemonGuid ~= nil then
        for overrideIndex = 1, #data.overrides do
          local override = data.overrides[overrideIndex]
          for guidIndex = 1, #override.guids do
            if override.guids[guidIndex] == params.pokemonGuid then
              return { guid = data.guid, move = override.move, displayName = override.move }
            end
          end
        end
      end
      
      return { guid = data.guid, move = data.move, displayName = data.move }
    end
  end
  return nil
end

function GetTeraDataByGUID(teraGuid)
  for i = 1, #teraData do
    local data = teraData[i]
    local guid = data.guid
    if guid == teraGuid then
      return data
    end
  end
  return nil
end

function GetTitanDataByGUID(params)
  for i = 1, #titanData do
    local data = titanData[i]
    if data.guid == params.guid then
      return data
    end
  end

  -- If we get here, we didn't find the titan data. Maybe it is custom? <.<
  for i = 1, #customTitanData do
    local data = customTitanData[i]
    if data.guid == params.guid then
      return data
    end
  end
end

function GetSelectedGens()
  return selectedGens
end

function GetAIDifficulty()
  return aiDifficulty
end

-- Shallow-copy a table. If our gym data gets more complicated (nested tables, etc.) we will need a
-- deep copy instead.
function ShallowCopy(orig_table)
  local orig_type = type(orig_table)
  local copy
  if orig_type == 'table' then
      copy = {}
      for orig_key, orig_value in pairs(orig_table) do
          copy[orig_key] = orig_value
      end
  else -- number, string, boolean, etc
      copy = orig_table
  end
  return copy
end

-- Function to filter gym data on the "gen" and "gymTier" attribute. If you call this on 
-- gym data without the gen and gymTier attributes the return table will just be an empty {}.
function FilterGymDataOnTier(gen, tier, use_backup)
  if gymData == nil then return {} end

  -- First check if we are looking for a custom gym leader.
  if gen == "custom" then
    local new_index = 1
    local temp_arr = ShallowCopy(customGymData)
    local size_orig = #temp_arr
    for old_index, v in ipairs(temp_arr) do
        if v.gen == gen and v.gymTier == tier then
            temp_arr[new_index] = v
            new_index = new_index + 1
        end
    end
    for i = new_index, size_orig do temp_arr[i] = nil end
    if #temp_arr ~= 0 or not use_backup then
      local result = {}
      for index=1, #temp_arr do
        table.insert(result, temp_arr[index].guid)
      end
      return result
    end

    -- We didn't find any custom gym leader matching the parameters. Use standard leaders.
    -- This does not consider the selected gens lol.
    gen = math.random(1, 10)
  end

  local new_index = 1
  local temp_arr = ShallowCopy(gymData)
  local size_orig = #temp_arr
  for old_index, v in ipairs(temp_arr) do
      if v.gen == gen and v.gymTier == tier then
          temp_arr[new_index] = v
          new_index = new_index + 1
      end
  end
  for i = new_index, size_orig do temp_arr[i] = nil end
  local result = {}
  for index=1, #temp_arr do
    table.insert(result, temp_arr[index].guid)
  end
  return result
end

-- Retrieves a GUID randomly from the list of gym leaders for a gen and tier.
-- tier argument:
--    gyms     : 1-8
--    elite4   : 9
--    champion : 10
--    TR       : 11
--    Titan    : 12
-- Sometimes this function cannot return a leader of the provided gen. If so,
-- this function will give an updated gen value. Callers should check that.
function RandomGymGuidOfTier(params)
  -- Basic params safety.
  if not params or not params.tier or not params.gen then
    return { leader_gen = params and params.gen or nil, guid = nil, error = "bad_params" }
  end

  -- Seeking: local random Titans in my area.
  if params.tier == 12 then
    -- TODO: This does not consider the previously retrieved list so Titans cannot be random currently.
    local returning_titan_data = titanData[math.random(#titanData)]
    return { leader_gen = 12, guid = returning_titan_data.guid }
  end

  -- GymData sanitization.
  if gymData == nil then return { leader_gen = params.gen, guid = nil, error = "no_gymdata" } end

  -- Get candidates for this gen/tier.
  local candidates = FilterGymDataOnTier(params.gen, params.tier, true) or {}

  -- Build a fast exclusion set from retrievedList (normalize to string keys).
  local exclude = {}
  if params.retrievedList and #params.retrievedList > 0 then
    for i=1, #params.retrievedList do
      exclude[tostring(params.retrievedList[i])] = true
    end
  end

  -- Filter candidates by removing GUIDs already retrieved.
  local pool = {}
  for i=1, #candidates do
    local guid = tostring(candidates[i])
    if not exclude[guid] then
      pool[#pool + 1] = guid
    end
  end

  -- Pick one uniformly at random.
  if #pool > 0 then
    return { leader_gen=params.gen, guid=pool[math.random(1, #pool)] } 
  end

  -- Failed to find the Gym Leader so find a random leader. This occurs when we try 
  -- to grab more customs than are available or when we have more gyms than 8 (Alola).
  local tries_remaining = 10
  while tries_remaining > 0 do
    local gen = math.random(1, 10)
    new_guid_list = FilterGymDataOnTier(gen, params.tier, true)
    if #new_guid_list > 0 then
      return { leader_gen = gen, guid = new_guid_list[math.random(#new_guid_list)] }
    end

    -- Decrement tries.
    tries_remaining = tries_remaining - 1
  end

  local gymStringTable =
  {
    [1] = 1,
    [2] = 2,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = "Elite 4",
    [10] = "Rival",
    [11] = "Team Rocket",
  }

  local gymString = gymStringTable[params.tier]
  printToAll("Failed to find gym leader options for gen " .. tostring(params.gen) .. ", tier " .. tostring(gymString))
  return nil
end

-- Gets the count of custom leaders available for a tier.
-- tier argument:
--    gyms     : 1-8
--    elite4   : 9
--    champion : 10
--    TR       : 11
--    Titan    : 12
function GetCustomLeaderCount(params)
  if gymData == nil then return 0 end

  local new_guid_list = FilterGymDataOnTier(params.gen, params.tier, false)
  local custom_count = #new_guid_list
  if params.retrievedList ~= nil and #params.retrievedList > 0 then
    for retrievedLeaderIndex=1, #params.retrievedList do
      for gymIndex=1, #new_guid_list do
        if new_guid_list[gymIndex] == params.retrievedList[retrievedLeaderIndex] then
          custom_count = custom_count - 1
        end
      end
    end
  end
  return custom_count
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--  SETUP
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function start(player, value, id)
  UI.hide('WelcomeMessage')
end

function ShowSettingsPopup()
  UI.show('Settings')
end

function closeSettings(player, value, id)
  UI.hide('Settings')
end

function onLoad(saved_data)
  -- Check if we can even start a game.
  checkBeginState()
  
  -- Get a handle to the models bag object.
  models_bag = getObjectFromGUID(MODELS_BALL_GUID)
  if models_bag == nil then
    printToAll("Unable to find Models Pokéball object :(")
  else
    models_bag.setPosition({94, -0.47, 67})
    models_bag.setLock(true)
  end

  -- Set the rolling tables to invisible to all colors except black.
  for index=1, #ROLLING_TABLE_GUIDS do
    local rolling_table = getObjectFromGUID(ROLLING_TABLE_GUIDS[index])
    if rolling_table then
      rolling_table.interactable = false
      rolling_table.setInvisibleTo({"Yellow", "Green", "Blue", "Red", "Purple", "Orange", "White"})
    end
  end

  local save_table
  if saved_data and saved_data ~= "" then
    save_table = JSON.decode(saved_data)
  end

  if save_table then
    -- Models.
    models_enabled = save_table.enabled
    global_scale = save_table.model_scale
    spawn_delay = save_table.spawn_delay
    shiny_chance = save_table.shiny_chance
    force_shiny = save_table.force_shiny
    tokens_checked_for_shiny = save_table.tokens_checked_for_shiny
    shiny_pokemon_that_exist_table = save_table.shiny_pokemon_that_exist_table
    -- Selected Pokemon and leaders.
    selectedGens = save_table.selectedGens
    customGen = save_table.customGen
    customGymLeaderOption = save_table.customGymLeaderOption
    -- Music.
    original_music_enabled = save_table.original_music_enabled
    remix_music_enabled = save_table.remix_music_enabled
    -- House Rules.
    HR_dual_type_effectiveness=save_table.HR_dual_type_effectiveness
    HR_immunities=save_table.HR_immunities
    HR_gym_leader_boosters=save_table.HR_gym_leader_boosters
    HR_hp_rule_2=save_table.HR_hp_rule_2
    -- Helpers.
    HELPER_remove_non_player_items=save_table.HELPER_remove_non_player_items
    -- Current map. Can only change at Setup.
    selected_map=save_table.selected_map
    leadersGen=save_table.leadersGen
    -- Background.
    pokeBackground=save_table.pokeBackground
    -- PMTU Pokedex Opt-in.
    useGlobalPokedex=save_table.useGlobalPokedex
    --@Thanathoum
	  --Cloned Pokemon
    clonedPokemonData=save_table.clonedPokemonData
  end

  -- Do some safety checks.
  if models_enabled == nil then
    models_enabled = false
  end
  if global_scale == nil then
    global_scale = 2
  end
  if spawn_delay == nil then
    spawn_delay = 0
  end
  if shiny_chance == nil then
    shiny_chance = 6
  end
  if force_shiny == nil then
    force_shiny = false
  end
  if original_music_enabled == nil then
    original_music_enabled = true
  end
  if remix_music_enabled == nil then
    remix_music_enabled = false
  end
  if tokens_checked_for_shiny == nil then
    tokens_checked_for_shiny = {}
  end
  if shiny_pokemon_that_exist_table == nil then
    shiny_pokemon_that_exist_table = {}
  end
  if leadersGen == nil then
    leadersGen = 1
  end
  if pokeBackground == nil then
    pokeBackground = false
  end
  if HELPER_remove_non_player_items == nil then
    HELPER_remove_non_player_items = false
  end
  --@Thanathoum
  if clonedPokemonData == nil then
    clonedPokemonData = {}
  end

  -- Update the music playlists.
  update_playlists()

  -- Combine the data to look at fossil Pokemon, board Pokemon AND custom Pokemon too.
  local allData = genData
  table.insert(allData, boardPokemonData)
  table.insert(allData, fossilPokeballPokemonData)
  table.insert(allData, paradoxPokeballPokemonData)
  table.insert(allData, pokestarStudiosData)
  table.insert(allData, customPokemonData)
  --@Thanathoum
  table.insert(allData, clonedPokemonData)

  index = 1
  local key = 1
  for _, singleGenData in pairs(allData) do
    for _, pokemon_base in pairs(singleGenData) do
      local saved_state
      if pokemon_base.states then
        for skey, pokemon_state in pairs(pokemon_base.states) do
          if save_table and save_table.base[key] and save_table.base[key].states[skey] then
            pokemon_state.created_before = save_table.base[key].states[skey].created_before
          else
            pokemon_state.created_before = false
          end
          if pokemon_state.custom_scale == nil then
            pokemon_state.custom_scale = 1
          end
        end
      else
        if save_table and save_table.base[key] then
          pokemon_base.created_before = save_table.base[key].created_before
        else
          pokemon_base.created_before = false
        end
        if pokemon_base.custom_scale == nil then
          pokemon_base.custom_scale = 1
        end
      end
      pokemon_base.in_creation = false
      if pokemon_base.idle_effect == nil then
        pokemon_base.idle_effect = "Idle"
      end
      if pokemon_base.run_effect == nil then
        pokemon_base.run_effect = "Run"
      end
      if pokemon_base.spawn_effect == nil then
        pokemon_base.spawn_effect = "Special Attack"
      end
      if pokemon_base.faint_effect == nil then
        pokemon_base.faint_effect = "Faint"
      end
      if pokemon_base.despawn_time == nil then
        pokemon_base.despawn_time = 1.0
      end
      if pokemon_base.offset == nil then
        pokemon_base.offset = {x=0, y=0, z=-0.17}
      else
        pokemon_base.offset = {x=pokemon_base.offset.x, y=pokemon_base.offset.y, z=pokemon_base.offset.z-0.17}
      end
      if pokemon_base.persistent_state == nil then
        pokemon_base.persistent_state = true
      end
      for _, guid in pairs(pokemon_base.guids) do
        -- Check for the board pokemon, since they were already created set them to created_before=true.
        if guid == "315879" or guid == "390ee2" or guid == "d1ee94" or guid == "d4b8d9" or guid == "315879" or guid == "6e4c5a" then
          pokemon_base.created_before = true
        end

        active_chips[guid] = {
          chip_GUID = guid,
          base = pokemon_base,
          in_creation = false,
          picked_up = false
        }
        local chip = getObjectFromGUID(guid)
        if chip then
          active_chips[guid].chip = chip
          chip.registerCollisions()
        end
        if save_table and save_table.active and save_table.active[guid] then
          local pokemon = active_chips[guid]
          local active_save = save_table.active[guid]

          if active_save.state_key then
            pokemon.state_key = active_save.state_key
            pokemon.state = pokemon.base.states[active_save.state_key]
          end

          -- Shiny restoration logic.
          if active_save.rolled_for_shiny ~= nil then
            if tokens_checked_for_shiny == nil then tokens_checked_for_shiny = {} end
            tokens_checked_for_shiny[guid] = active_save.was_shiny

            pokemon.rolled_for_shiny = true
            pokemon.is_shiny = (active_save.was_shiny == true)

            -- if it was shiny, also rebuild species lock.
            if active_save.was_shiny == true then
              local pokemon_name = nil
              local active = active_chips[guid]
              if active and active.base and active.base.name then
                pokemon_name = active.base.name
              else
                pokemon_name = GetNameOfPokemonWithGUID(guid)
              end

              if pokemon_name then
                if shiny_pokemon_that_exist_table == nil then
                  shiny_pokemon_that_exist_table = {}
                end
                shiny_pokemon_that_exist_table[pokemon_name] = guid
              end
            end
          end

          -- Model logic.
          local model = getObjectFromGUID(active_save.model_GUID)
          if model then
            pokemon.model = model
            active_models[active_save.model_GUID] = pokemon
            if not pokemon.state then
              pokemon.state = pokemon.base
            end
            model.interactable = false
            model.dynamic_friction = 1
            model.mass = 0
            model.setLock(true)
            try_activate_effect({model=pokemon.model, effectName=pokemon.state.idle_effect or pokemon.base.idle_effect})
          end
        end
      end
      key = key + 1
    end
  end
  printToAll("Save Data loaded!")

  -- GUI Toggles.
  -- Pokemon gens.
  UI.setAttribute("gen1ToggleBtn", "isOn", selectedGens[1])
  UI.setAttribute("gen2ToggleBtn", "isOn", selectedGens[2])
  UI.setAttribute("gen3ToggleBtn", "isOn", selectedGens[3])
  UI.setAttribute("gen4ToggleBtn", "isOn", selectedGens[4])
  UI.setAttribute("gen5ToggleBtn", "isOn", selectedGens[5])
  UI.setAttribute("gen6ToggleBtn", "isOn", selectedGens[6])
  UI.setAttribute("gen7ToggleBtn", "isOn", selectedGens[7])
  UI.setAttribute("gen8ToggleBtn", "isOn", selectedGens[8])
  UI.setAttribute("gen9ToggleBtn", "isOn", selectedGens[9])
  UI.setAttribute("customToggleBtn", "isOn", customGen)
  checkBeginState()
  -- House rules.
  UI.setAttribute("setDualTypeEffectiveness", "isOn", HR_dual_type_effectiveness)
  UI.setAttribute("setImmunities", "isOn", HR_immunities)
  UI.setAttribute("setGymLeaderBoosters", "isOn", HR_gym_leader_boosters)
  UI.setAttribute("setHpRule2", "isOn", HR_hp_rule_2)
  -- Helpers.
  UI.setAttribute("setRemoveNonUsedItems", "isOn", HELPER_remove_non_player_items)

  -- Rebind the hotkeys.
  addHotkey("Battle Wild Pokemon",  function(player_color, hovered_object, point, key_up) battle_wild_pokemon(hovered_object) end)
  addHotkey("Query Pokemon Info",   function(player_color, hovered_object, point, key_up) query_pokemon_info(hovered_object, player_color) end)
  addHotkey("Change Seat - Yellow", function(player_color, hovered_object, point, key_up) change_seat(player_color, "Yellow") end)
  addHotkey("Change Seat - Green",  function(player_color, hovered_object, point, key_up) change_seat(player_color, "Green") end)
  addHotkey("Change Seat - Blue",   function(player_color, hovered_object, point, key_up) change_seat(player_color, "Blue") end)
  addHotkey("Change Seat - Red",    function(player_color, hovered_object, point, key_up) change_seat(player_color, "Red") end)
  addHotkey("Change Seat - Purple", function(player_color, hovered_object, point, key_up) change_seat(player_color, "Purple") end)
  addHotkey("Change Seat - Orange", function(player_color, hovered_object, point, key_up) change_seat(player_color, "Orange") end)
  addHotkey("Pan Camera - Arena",   function(player_color, hovered_object, point, key_up) pan_camera(player_color, ARENA) end)
  addHotkey("Pan Camera - Figure",  function(player_color, hovered_object, point, key_up) pan_camera(player_color, FIGURE) end)
  addHotkey("Pan Camera - Rack",    function(player_color, hovered_object, point, key_up) pan_camera(player_color, RACK) end)

  print_changelog()

  -- See what optional rules are enabled and print them for the users.
  if HR_hp_rule_2 then
    printHpRule2Rules()
  end
  if HR_dual_type_effectiveness then
    printDualTypeRules()
  end
  if HR_immunities then
    printImmunitiesRules()
  end
  if HR_gym_leader_boosters then
    printGymLeaderBoostersRules()
  end
  if useGlobalPokedex then
    printPmtuPokedexInfo()
  end
end

function print_changelog()
  printToAll("Last update on 24 Nov 2025 - v4.05 \
     - Opt-in to the Global PMTU Pokédex to track progress throughout your runs. See https://pmtu-pokedex.com! \
     - More Z-A Mega models were added \
     - Bug fixes",
  "Pink")
end

function onSave()
  local base_table = {}
  for key, pokemon_base in pairs(genData) do
    if (pokemon_base.states and any_state_created_before(pokemon_base.states)) or pokemon_base.created_before then
      local base_data = {}
      if pokemon_base.states then
        base_data.states={}
        for skey,pokemon_state in pairs(pokemon_base.states) do
          if pokemon_state.created_before then
            base_data.states[skey] = {
              created_before = pokemon_state.created_before
            }
          end
        end
      else
        base_data.created_before = pokemon_base.created_before
      end
      base_table[key] = base_data
    end
  end
  local active_table = {}
  for key, pokemon in pairs(active_chips) do
    -- Ensure we have a table for this GUID if we need to save shiny info.
    local entry = nil

    -- Model.
    if pokemon.model then
      entry = {
        model_GUID = pokemon.model.getGUID()
      }
      if pokemon.state_key then
        entry.state_key = pokemon.state_key
      end
    elseif pokemon.state_key then
      entry = {
        state_key = pokemon.state_key
      }
    end

    -- If we didn't create an entry yet but we DO have shiny status,
    -- we must create one now so we can persist it.
    if entry == nil and tokens_checked_for_shiny and tokens_checked_for_shiny[key] ~= nil then
      entry = {}
    end

    -- Restore shiny state.
    if tokens_checked_for_shiny and tokens_checked_for_shiny[key] ~= nil then
      entry.rolled_for_shiny = true
      -- true or false.
      entry.was_shiny = tokens_checked_for_shiny[key]
    end

    if entry ~= nil then
      active_table[key] = entry
    end
  end

  -- Create the save table.
  local save_table = { 
    -- Models.
    enabled=models_enabled,
    model_scale=global_scale,
    spawn_delay=spawn_delay,
    shiny_chance=shiny_chance,
    force_shiny=force_shiny,
    tokens_checked_for_shiny=tokens_checked_for_shiny,
    shiny_pokemon_that_exist_table=shiny_pokemon_that_exist_table,
    -- Selected Pokemon.
    selectedGens=selectedGens,
    customGen=customGen,
    customGymLeaderOption=customGymLeaderOption,
    version=version,
    base=base_table,
    active=active_table,
    -- Music.
    original_music_enabled=original_music_enabled,
    remix_music_enabled=remix_music_enabled,
    -- House Rules.
    HR_hp_rule_2=HR_hp_rule_2,
    HR_dual_type_effectiveness=HR_dual_type_effectiveness,
    HR_immunities=HR_immunities,
    HR_gym_leader_boosters=HR_gym_leader_boosters,
    -- Current map. Can only change at Setup.
    selected_map=selected_map,
    -- Leaders gen.
    leadersGen=leadersGen,
    -- Background.
    pokeBackground=pokeBackground,
    -- PMTU Pokedex Opt-in.
    useGlobalPokedex=useGlobalPokedex,
    --@Thanathoum
    -- Cloned Pokemon.
    clonedPokemonData=clonedPokemonData,
  }
  return JSON.encode(save_table)
end

function onPlayerTurn(player, previous_player)
  -- Prevent initally increasing by 2 once Turns are enabled.
  if not player or not previous_player then return end

  -- Increment the Rival Event's Turn Counter button.
  local rivalBall = getObjectFromGUID(RIVAL_EVENT_POKEBALL_GUID)
  if not rivalBall then return end
  rivalBall.call("increment_turn_counter")

  -- Increment the player's coins whose turn it is.
  local pokecoin_counter_guid = PLAYER_COIN_GUIDS[player.color]
  if pokecoin_counter_guid then
    local counter = getObjectFromGUID(pokecoin_counter_guid)
    if counter then
      -- Increment value.
      counter.call("adjustValue", 1)
    end
  end
end

function change_seat(player_color, new_color)
  Player[player_color].changeColor(new_color)
end

-- Function used for hotkeys.
function pan_camera(player_color, camera_location)
  -- Pan the camera to the specified location.
  if camera_location == ARENA then
    showArena(nil, player_color)
  elseif camera_location == FIGURE then
    panToPlayer(player_color)
  elseif camera_location == RACK then
    viewTeam(player_color)
  else
    print("Unsupported camera location specified in pan_camera: " .. tostring(camera_location))
  end
end

-- NOTE: This was taken from the racks. Ideally, we make this call there directly but 
--       I don't feel like updating the racks. Plus, the racks use their function leveraging
--       the obj field. That function didn't play nicely.
function panToPlayer(color)
  -- Determine the figure's GUID.
  local figureGUID = nil
  if color == "Yellow" then
    figureGUID = "f5f4be"
  elseif color == "Green" then
    figureGUID = "bdde77"
  elseif color == "Blue" then
    figureGUID = "f99b44"
  elseif color == "Red" then
    figureGUID = "c036ba"
  elseif color == "Purple" then
    figureGUID = "1d1174"
  elseif color == "Orange" then
    figureGUID = "f86514"
  else
    print("Unsupported color specified in panToPlayer: " .. tostring(color))
  end
  local pokeOnePosX = getObjectFromGUID(figureGUID).getPosition()[1]
  local pokeOnePosZ = getObjectFromGUID(figureGUID).getPosition()[3]

  Player[color].lookAt({
      position = {x=pokeOnePosX, y=0.14, z=pokeOnePosZ},
      pitch    = 60,
      yaw      = 0,
      distance = 25,
  })
end

-- NOTE: This was taken from the Battle Manager. Ideally, we make this call 
--       there directly but BM uses their function leveraging the obj field. 
--       That function didn't play nicely.
function viewTeam(team)
  if team == "Blue" then
    showPosition = {x=-21.50,y=0.14,z=-48}
    camYaw = 0
  elseif team == "Green" then
    showPosition = {x=-65,y=0.96,z=-21.5}
    camYaw = 90
  elseif team == "Orange" then
    showPosition = {x=65,y=0.96,z=21.5}
    camYaw = 270
  elseif team == "Purple" then
    showPosition = {x=65,y=0.96,z=-21.5}
    camYaw = 270
  elseif team == "Red" then
    showPosition = {x=21.50,y=0.14,z=-48}
    camYaw = 0
  elseif team == "Yellow" then
    showPosition = {x=-65,y=0.96,z=21.5}
    camYaw = 90
  end

  Player[team].lookAt({
    position = showPosition,
    pitch    = 60,
    yaw      = camYaw,
    distance = 25
  })
end

-- Function called by a Game Key to send a wile Pokemon to the arena. This function provides many buttons.
function battle_wild_pokemon(chip)
  -- Basic checks.
  if not chip or not chip.hasTag("Pokemon Token") then return end
  if not isFaceUp(chip) then
    return
  end

  -- Get a handle to the BattleManager.
  local battle_manager = getObjectFromGUID(BATTLE_MANAGER_GUID)
  if not battle_manager then
    -- Game over basically.
    printToAll("ERROR: The BattleManager was not found. Hmm.")
    return
  end

  -- Initialize the recall parameters.
  local chip_position = chip.getPosition()
  local color_index = nil

  -- Determine which color this pokemon came from. Use the Pokeball Colours constants for indexes.
  for pokeball_index=1, #deploy_pokeballs do
    local pokeball_object = getObjectFromGUID(deploy_pokeballs[pokeball_index])
    if not pokeball_object then
      printToAll("Failed to find Pokéball with GUID " .. tostring(deploy_pokeballs[pokeball_index]) .. ". Hmm.")
      return
    end

    -- Get the Kanto locations for the Pokeball. NOTE: The Kanto locations do not have a middle parameter.
    local kanto_locations = pokeball_object.call("getKantoLocations")
    if kanto_locations then
      for kanto_index=1, #kanto_locations do
        -- See if the kanto location is within range.
        if math.abs(chip_position.x - kanto_locations[kanto_index][1]) < 0.1 and math.abs(chip_position.z - kanto_locations[kanto_index][2]) < 0.1 then
          color_index = pokeball_index
          break
        end
      end
    end
  end

  -- Call moveAndBattleWildPokemon.
  local params = {
    chip_guid = chip.getGUID(),
    wild_battle_params = { 
      position = chip_position,
      color_index = color_index
    }
  }
  battle_manager.call("moveAndBattleWildPokemon", params)
end

-- Function called by a Game Key to query Pokemon info, specifically types.
function query_pokemon_info(item, player_color)
  -- Basic checks.
  if not item then return end
  if item.hasTag("Pokemon Token") and not isFaceUp(item) then return end

  -- Get the Pokemon data.
  local pokemon_data = GetAnyPokemonDataByGUID({guid=item.getGUID()})
  if pokemon_data then
    -- Print the Pokemon info.
    printToAll("Pokémon: " .. tostring(pokemon_data.name))
    printToAll(" Types: ")
    for type_index=1, #pokemon_data.types do
      local color = type_to_color_lookup(pokemon_data.types[type_index], pokemon_data.name)
      printToAll("  " .. pokemon_data.types[type_index], color)
    end
    -- Check for pokedex info.
    if pokemon_data.evoData and #pokemon_data.evoData > 0 then
      printToAll(" Evolutions:")
      print_pokemon_evos(pokemon_data, {})
    end

    -- Check for pokedex info to set the page.
    local pokedex_info = pokedex_table[pokemon_data.name]
    if pokedex_info then
      change_pokedex_page(pokedex_info, player_color, pokemon_data.name)
    else
      print("Could not find Pokedex info for " .. pokemon_data.name .. ". Tell the developer they are bad. :)")
    end

    -- Query Pokedex backend for capture info.
    local handler = getObjectFromGUID(POKEDEX_HANDLER_GUID)
    if handler then
      handler.call("queryPlayerCaught", {
        pokemon_name = pokemon_data.name,
        color = player_color,
        callback_fn = "onPokedexQueryPlayerCaught",
      })
      handler.call("querySpeciesCaughtSummary", {
        pokemon_name = pokemon_data.name,
        callback_fn = "onPokedexQuerySpeciesSummary",
      })
    end

    return
  end

  -- It's not a typical pokemon token. Maybe it is a rival. Try to get the rival data.
  local rival_data = GetRivalPokemonDataByGuid(item.getGUID())
  if rival_data then
    local pokemon_data = isFaceUp(item) and rival_data.pokemon[1] or rival_data.pokemon[2]
    if not pokemon_data then return end

    -- Print the Pokemon info.
    printToAll(tostring(pokemon_data.name))
    printToAll(" Types: ")
    for type_index=1, #pokemon_data.types do
      local color = type_to_color_lookup(pokemon_data.types[type_index], pokemon_data.name)
      printToAll("  " .. pokemon_data.types[type_index], color)
    end
    return
  end

  -- It is probably a Gym Leader.
  local gym_data = GetGymDataByGUID({guid=item.getGUID()})
  if gym_data then
    local pokemon_data = isFaceUp(item) and gym_data.pokemon[1] or gym_data.pokemon[2]

    -- Print the Pokemon info.
    printToAll(tostring(gym_data.trainerName) .. "'s " .. tostring(pokemon_data.name))
    printToAll(" Types: ")
    for type_index=1, #pokemon_data.types do
      local color = type_to_color_lookup(pokemon_data.types[type_index], pokemon_data.name)
      printToAll("  " .. pokemon_data.types[type_index], color)
    end
    if pokemon_data.teraType then
      local color = type_to_color_lookup(pokemon_data.teraType, pokemon_data.name)
      printToAll(" Tera:  " .. pokemon_data.teraType, color)
    end
    return
  end

  -- Okay, Titan?
  local titan_data = GetTitanDataByGUID({guid=item.getGUID()})
  if titan_data then
    -- Print the Pokemon info.
    printToAll(titan_data.name)
    printToAll(" Types: ")
    for type_index=1, #titan_data.types do
      local color = type_to_color_lookup(titan_data.types[type_index], titan_data.name)
      printToAll("  " .. titan_data.types[type_index], color)
    end
    if titan_data.teraType then
      local color = type_to_color_lookup(titan_data.teraType, titan_data.name)
      printToAll(" Tera:  " .. titan_data.teraType, color)
    end
    return
  end
end

-- Callback from Pokedex handler: did this player catch the species?
function onPokedexQueryPlayerCaught(params)
  if not params or params.ok == false then
    if params and params.error then
      print("[Pokédex] player-caught lookup failed: " .. tostring(params.error))
    end
    return
  end

  local name = Player[params.color].steam_name or "Unknown"
  if params.caught then
    local shiny_substring = " "
    if params.shiny == true then
      shiny_substring = " [Shiny] "
    end
    printToAll("[Pokédex] " .. params.pokemon_name .. shiny_substring .. "already registered in " .. tostring(name) .. "'s Pokédex")
  else
    printToAll("[Pokédex] " .. params.pokemon_name .. " is not registered in " .. tostring(name) .. "'s Pokédex")
  end
end

-- Callback from Pokedex handler: species caught totals.
function onPokedexQuerySpeciesSummary(params)
  if not params or params.ok == false then
    if params and params.error then
      local name = params.pokemon_name or "?"
      print("[Pokédex] species summary failed for " .. tostring(name) .. ": " .. tostring(params.error))
    end
    return
  end

  local total = params.total_players or 0
  local shiny = params.shiny_players or 0
  printToAll("[Pokédex] " .. params.pokemon_name .. " caught by " .. tostring(total) .. " player(s) (shiny: " .. tostring(shiny) .. ")")
end

-- Help function to print the evolutions of a Pokemon.
function print_pokemon_evos(pokemon_data, seen_pokemon_guids)
  -- If there is no evo data, exit.
  if pokemon_data.evoData == nil or #pokemon_data.evoData == 0 then return end

  -- Loop through the evos.
  for evo_index=1, #pokemon_data.evoData do
    -- Consider the pokemon already seen.
    if seen_pokemon_guids[pokemon_data.evoData[evo_index]["guids"][1]] ~= nil then return end

    -- Add this GUID to the seen list.
    seen_pokemon_guids[pokemon_data.evoData[evo_index]["guids"][1]] = true

    -- Print the evo and its types.
    local evo_data = GetAnyPokemonDataByGUID({guid=pokemon_data.evoData[evo_index]["guids"][1]})
    printToAll("  " .. evo_data.name .. ", level " .. tostring(evo_data.level))
    printToAll("   Types: ")
    for type_index=1, #evo_data.types do
      local color = type_to_color_lookup(evo_data.types[type_index], evo_data.name)
      printToAll("    " .. evo_data.types[type_index], color)
    end
  end

  -- Recurse into the evos for this Pokemon.
  for evo_index=1, #pokemon_data.evoData do
    local evo_data = GetAnyPokemonDataByGUID({guid=pokemon_data.evoData[evo_index]["guids"][1]})
    print_pokemon_evos(evo_data, seen_pokemon_guids)
  end
end

-- Helper function to change a pokedex to the page of a particular pokemon.
function change_pokedex_page(pokedex_info, player_color, pokemon_name)
  -- Validate input
  if type(pokedex_info) ~= "table" or pokedex_info.book == nil or pokedex_info.page == nil then
    print("Invalid Pokédex info received for " .. tostring(pokemon_name) .. ". Cannot change Pokédex page. Tell the developer they are bad. :)")
    return
  end

  -- Pick the correct book set based on pokedex_info.book.
  local pokdex_guids
  if pokedex_info.book == 1 then
    pokdex_guids = GEN_1_4_POKEDEX_GUIDS
  elseif pokedex_info.book == 2 then
    pokdex_guids = GEN_5_9_POKEDEX_GUIDS
  end
  if not pokdex_guids then
    print("Failed to get Pokédex GUIDs")
    return
  end

  -- Choose left/right Pokédex based on player color.
  local pokdex_guid = pokdex_guids[1]
  local side = "left"
  if player_color == "Red" or player_color == "Purple" or player_color == "Orange" then
    pokdex_guid = pokdex_guids[2]
    side = "right"
  end

  -- Resolve the actual object
  local pokedex = getObjectFromGUID(pokdex_guid)
  if not pokedex then
    print("Failed to get Pokédex object for GUID " .. tostring(pokdex_guid))
    return
  end

  -- Validate the object.
  if not pokedex.Book or type(pokedex.Book.getPage) ~= "function" or type(pokedex.Book.setPage) ~= "function" then
    print("Object " .. tostring(pokdex_guid) .. " has no valid Book component")
    return
  end

  -- Offset the page to -1.
  local target_page = pokedex_info.page - 1

  -- If it's already on that page, do a quick bounce to force a redraw
  if pokedex.Book.getPage() == target_page then
    -- bounce to a safe page (0 if it exists)
    pokedex.Book.setPage(0, false)
  end

  -- Now set the desired page
  if not pokedex.Book.setPage(target_page, false) then
    print("Failed to set the Pokédex page for " .. tostring(pokemon_name))
    return
  end

  printToAll("Pokédex on the " .. side .. " set to view " .. tostring(pokemon_name))
end

-- Color lookup function for logs. I tried to use a lookup table but Lua is trash.
function type_to_color_lookup(pokemon_type, pokemon_name)
  if not pokemon_type then return end
  if type(pokemon_type) ~= "string" then return end

  if pokemon_type == "Grass" then
    return {119/255, 204/255, 85/255}
  elseif pokemon_type == "Water" then
    return {51/255, 153/255, 255/255}
  elseif pokemon_type == "Fire" then
    return {255/255, 68/255, 34/255}
  elseif pokemon_type == "Poison" then
    return {170/255, 85/255, 153/255}
  elseif pokemon_type == "Ice" then
    return {102/255, 204/255, 255/255}
  elseif pokemon_type == "Dark" then
    return {119/255, 85/255, 68/255}
  elseif pokemon_type == "Steel" then
    return {170/255, 170/255, 187/255}
  elseif pokemon_type == "Psychic" then
    return {255/255, 85/255, 153/255}
  elseif pokemon_type == "Ghost" then
    return {106/255, 102/255, 187/255}
  elseif pokemon_type == "Fairy" then
    return {238/255, 153/255, 238/255}
  elseif pokemon_type == "Ground" then
    return {221/255, 187/255, 85/255}
  elseif pokemon_type == "Fighting" then
    return {187/255, 85/255, 68/255}
  elseif pokemon_type == "Normal" then
    return {255/255, 255/255, 255/255}
  elseif pokemon_type == "Dragon" then
    return SHINY_RGB
  elseif pokemon_type == "Flying" then
    return {136/255, 153/255, 255/255}
  elseif pokemon_type == "Electric" then
    return {255/255, 204/255, 51/255}
  elseif pokemon_type == "Bug" then
    return {170/255, 187/255, 34/255}
  elseif pokemon_type == "Rock" then
    return {187/255, 170/255, 102/255}
  end

  -- Could not find the type.
  printToAll(pokemon_name .. " has a mistyped type: " .. tostring(pokemon_type) .. "; tell the developers :)")
  return "White"
end

-- Models function.
function any_state_created_before(states)
  for _, pokemon_state in pairs(states) do
    if pokemon_state.created_before then
      return true
    end
  end
  return false
end

function beginSetup(player, value, id)
  if selected_map == nil then
    print("Please select a map.")
    return
  end
  UI.hide('Settings')
  local params = {
    selectedGens = selectedGens,
    customGen = customGen,
    leadersGen = leadersGen,
    randomStarters = randomStarters,
    customGymLeaderOption = customGymLeaderOption,
    selected_map = selected_map,
    filterTMs = filterTMs,
    remove_non_player_items = HELPER_remove_non_player_items,
    gym_boosters = HR_gym_leader_boosters
  }

  --[[ Initialize the random seed. I know, why 3? Well, when I only did this once Gen VII Gym 5
       deployed the same gym every. single. time. despite having 3 options. I added two more and
       things felt more random. Maybe we should add 3 more? *thinking* ]]
  math.randomseed(os.time())
  math.randomseed(os.time())
  math.randomseed(os.time())

  local battleManager = getObjectFromGUID(BATTLE_MANAGER_GUID)
  battleManager.call("setScriptingEnabled", battleScripting)

  local starterPokeball = getObjectFromGUID(STARTER_POKEBALL_GUID)
  starterPokeball.call("beginSetup2", params)

  -- If we are not using the Pokedex, remove the object.
  if not useGlobalPokedex then
    print("Opting out of Global PMTU Pokédex")
    local handler = getObjectFromGUID(POKEDEX_HANDLER_GUID)
    if handler then
      destroyObject(handler)
    end
  else
    -- Register everyone for the Pokedex.
    registerAllPlayersForPokedex()
  end

  local rivalEventPokeball = getObjectFromGUID(RIVAL_EVENT_POKEBALL_GUID)
  rivalEventPokeball.call("setRivalRegion", eventRivalRegion)
end

-----------------
-- Pokemon gens.
-----------------

-- String to boolean lookup dict. This return nil if the lookup fails.
stringToBoolean = { ["True"]=true, ["true"]=true, ["False"]=false, ["false"]=false }

function gen1Set(player, isOn)
  selectedGens[1] = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

function gen2Set(player, isOn)
  selectedGens[2] = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

function gen3Set(player, isOn)
  selectedGens[3] = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

function gen4Set(player, isOn)
  selectedGens[4] = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

function gen5Set(player, isOn)
  selectedGens[5] = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

function gen6Set(player, isOn)
  selectedGens[6] = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

function gen7Set(player, isOn)
  selectedGens[7] = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

function gen8Set(player, isOn)
  selectedGens[8] = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

function gen9Set(player, isOn)
  selectedGens[9] = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

-----------------
-- Custom Pokemon.
-----------------

function customSet(player, isOn)
  customGen = stringToBoolean[isOn]
  enoughPokemon()
  checkBeginState()
end

function enoughPokemon()
  local numPokemon = 0
  if selectedGens[1] then
    numPokemon = numPokemon + 151
  end
  if selectedGens[2] then
    numPokemon = numPokemon + 100
  end
  if selectedGens[3] then
    numPokemon = numPokemon + 136
  end
  if selectedGens[4] then
    numPokemon = numPokemon + 107
  end
  if selectedGens[5] then
    numPokemon = numPokemon + 171
  end
  if selectedGens[6] then
    numPokemon = numPokemon + 73
  end
  if selectedGens[7] then
    numPokemon = numPokemon + 111
  end
  if selectedGens[8] then
    numPokemon = numPokemon + 133
  end
  if selectedGens[9] then
    numPokemon = numPokemon + 120
  end
  if customGen then
    local pokeball
    for i = 1, #customPokeballs do
      pokeball = getObjectFromGUID(customPokeballs[i])
      numPokemon = numPokemon + #pokeball.getObjects()
    end
  end

  -- Check the final count.
  if numPokemon < 150 then
    printToAll("WARNING: Less than 150 base Pokémon have been selected. This type of setup has not been tested thoroughly.")
  end
  hasEnoughPokemon = true
end

function randomStartersToggle()
  randomStarters = not randomStarters
  checkBeginState()
end

function filterTechnicalMachines()
  filterTMs = not filterTMs
end

function globalPokedexToggle()
  useGlobalPokedex = not useGlobalPokedex

  if useGlobalPokedex then
    printPmtuPokedexInfo()
  end
end

-----------------
-- Gym Leaders.
-----------------

function genLeadersSet(player, option, id)
  if option == GEN_1_SELECT then
    setLeaders(1, true)
  elseif option == GEN_2_SELECT then
    setLeaders(2, true)
  elseif option == GEN_3_SELECT then
    setLeaders(3, true)
  elseif option == GEN_4_SELECT then
    setLeaders(4, true)
  elseif option == GEN_5_SELECT then
    setLeaders(5, true)
  elseif option == GEN_6_SELECT then
    setLeaders(6, true)
  elseif option == GEN_7_SELECT then
    setLeaders(7, true)
  elseif option == GEN_8_SELECT then
    setLeaders(8, true)
  elseif option == GEN_9_SELECT then
    setLeaders(9, true)
  elseif option == RANSEI_SELECT then
    setLeaders(10, true)
  elseif option == HISUI_SELECT then
    setLeaders(11, true)
  elseif option == ORANGE_ISLANDS_SELECT then
    setLeaders(12, true)
  elseif option == RANDOM_SELECT then
    setLeaders(-1, true)
  elseif option  == CHAOS_SELECT then
    setLeaders(-2, true)
  elseif option == GEN_MATCH_SELECT then
    setLeaders(-3, true)
  else
    printToAll("Unknown Leaders selected: " .. option, "Red")
  end
end

function customGymLeadersOptionsSet(player, option, id)
  if tonumber(option) > ALWAYS_SELECT then
    print("Unknown Custom Gym Leader option: " .. tostring(id))
    return
  end

  customGymLeaderOption = tonumber(option)
end

function getCustomGymLeadersOption()
  return customGymLeaderOption
end

function setLeaders(gen, isOn)
  if isOn == "True" then isOn = true end
  if isOn ~= true then return end
  leadersGen = gen

  -- Check if a House Rule was enabled that needs explained.
  if leadersGen == -2 then
    -- Chaos Gym Leaders.
    printToAll("\nChaos Gym Leaders: Enabled \
  - Chaos Gym Leaders Rules: \
    * This will cause Gym Leaders (of the same tier) to be randomly chosen from all Generations each time the gyms are battled.", 
    "Pink")
  elseif leadersGen == -3 then
    -- Gen Match Gym Leaders.
    printToAll("Gen Match Leaders: Enabled \
  - Gen Match Gym Leaders Rules: \
    * This will cause Gym Leaders to be randomly chosen from all matching enabled Pokemon generations.", 
    "Pink")
  end

  if leadersGen == 0 then
    local starterPokeball = getObjectFromGUID(STARTER_POKEBALL_GUID)
    customAndTooFewLeaders = not starterPokeball.call("hasEnoughCustomLeaders")
  else
    customAndTooFewLeaders = false
  end

  checkBeginState()
end

function getLeadersGen()
  return leadersGen
end

function getChaosLeadersEnabled()
  return leadersGen == -2
end

-----------------
-- Region Selection.
-----------------

-- This function does nothing except set the URL of the map as a preview for players as well
-- as setting the Global reference to the current map.
function regionMapSet(player, option, id)
  if option == "-- Select Region --" then 
    UI.setAttribute("beginBtn", "interactable", false)
    selected_map = nil
    return
  end

  local map_manager = getObjectFromGUID(MAP_MANAGER_GUID)
  if not map_manager then
    printToAll("Cannot find the Map Manager :(", "Red")
    return
  end

  -- Have the Map Manager set the map image. The variable selected_map is a global reference
  -- in case we foolishly save during setup. Also lets us pass the data to StarterPokeball.
  selected_map = map_manager.Call("set_map_image_only", option)

  checkBeginState()
end

-- Helper function used to get the current count of seated players.
function get_player_count()
  local seated_players = getSeatedPlayers()
  return #seated_players
end

-- Helper function to reset the current hands on the board. This is called by MapManager
-- and is required because Hands is only accessible within Global (apparently).
function reinitialize_hand_zones(hand_config_table)
  -- Move all zones way up into the sky.
  Player["Teal"].setHandTransform({position = {0,75,0}})
  Player["Brown"].setHandTransform({position = {0,75,0}})
  Player["Pink"].setHandTransform({position = {0,75,0}})
  Player["White"].setHandTransform({position = {0,75,0}})

  -- Get the count of current players.
  local solo_game = (get_player_count() == 1)
  if solo_game then
    print("Solo game detected. Not removing Hands for other players.")
  end

  -- Move the player hands we care about. If the player does not exist,
  -- we can leave them in them in the sky for deletion.
  if Player["Yellow"].steam_name ~= nil or solo_game then
    Player["Yellow"].setHandTransform(hand_config_table["Yellow"])
  else
    Player["Yellow"].setHandTransform({position = {0,75,0}})
  end
  if Player["Green"].steam_name ~= nil or solo_game then
    Player["Green"].setHandTransform(hand_config_table["Green"])
  else
    Player["Green"].setHandTransform({position = {0,75,0}})
  end
  if Player["Blue"].steam_name ~= nil or solo_game then
    Player["Blue"].setHandTransform(hand_config_table["Blue"])
  else
    Player["Blue"].setHandTransform({position = {0,75,0}})
  end
  if Player["Red"].steam_name ~= nil or solo_game then
    Player["Red"].setHandTransform(hand_config_table["Red"])
  else
    Player["Red"].setHandTransform({position = {0,75,0}})
  end
  if Player["Purple"].steam_name ~= nil or solo_game then
    Player["Purple"].setHandTransform(hand_config_table["Purple"])
  else
    Player["Purple"].setHandTransform({position = {0,75,0}})
  end
  if Player["Orange"].steam_name ~= nil or solo_game then
    Player["Orange"].setHandTransform(hand_config_table["Orange"])
  else
    Player["Orange"].setHandTransform({position = {0,75,0}})
  end

  -- Delete the hand zones we do not want.
  local current_hands = Hands.getHands()
  for hand_index=1, #current_hands do
    local current_position = current_hands[hand_index].getPosition()
    if current_position.y > 50 then
      destroyObject(current_hands[hand_index])
    end
  end
end

-----------------
-- Rival.
-----------------

function rivalRegionSet(player, option, id)
  setEventRivalRegion(option, true)
end

function setEventRivalRegion(region, isOn)
  if isOn == "True" then isOn = true end
  if isOn ~= true then return end

  -- I Tried to sanitize the region parameter but it kept causing errors. 
  -- Now we learn to trust. :)
  eventRivalRegion = region
end

-----------------
-- AI.
-----------------

function battleScriptingToggle()
  battleScripting = not battleScripting
end

function aiOff(player, isOn)
  setAIDifficulty(0, isOn)
end

function aiEasy(player, isOn)
  setAIDifficulty(1, isOn)
end

function aiMedium(player, isOn)
  setAIDifficulty(2, isOn)
end

function aiHard(player, isOn)
  setAIDifficulty(3, isOn)
end

function setAIDifficulty(difficulty, isOn)
  if isOn == "True" then isOn = true end
  if isOn ~= true then return end
  aiDifficulty = difficulty
end

function checkBeginState()
  local alola_check = true
  local paldea_check = true
  local orange_islands_check = true
  local ransei_check = true
  local hisui_check = true
  if selected_map == ALOLA_REGION then
    if leadersGen == -3 and selectedGens[7] ~= true then
      alola_check = false
      printToAll("Due to Alola's Gym Leaders scenario, when using Gen Match Gym Leaders you must enable Gen VII Pokémon.", "Red")
    elseif leadersGen ~= -2 and leadersGen ~= 7 and leadersGen ~= 0 and leadersGen ~= -1 and leadersGen ~= -3 then
      alola_check = false
      printToAll("Due to Alola's Gym Leaders scenario, you must choose Gen VII, Random, Gen Match or Chaos Gym Leaders.", "Red")
    elseif selectedGens[7] ~= true then
      alola_check = false
      printToAll("Due to Alola's Beast Pokémon, you must enable Gen VII Pokémon.", "Red")
    end
  elseif selected_map == PALDEA_REGION then
    if leadersGen == -3 and selectedGens[9] ~= true then
      paldea_check = false
      printToAll("Due to Paldea's Gym Leaders scenario, when using Gen Match Gym Leaders you must enable Gen IX Pokemon.", "Red")
    elseif leadersGen ~= -2 and leadersGen ~= 9 and leadersGen ~= 0 and leadersGen ~= -1 and leadersGen ~= -3 then
      paldea_check = false
      printToAll("Due to Paldea's Gym Leaders scenario, you must choose Gen IX, Random, Gen Match or Chaos Gym Leaders.", "Red")
    end
  end
  if selected_map == RANSEI_REGION and leadersGen ~= 10 and leadersGen ~= 0 and leadersGen ~= -1 and leadersGen ~= -2 and leadersGen ~= -3 then
    ransei_check = false
    printToAll("Due to Ransei's Gym Leaders scenario, you can only choose the Ransei Gym Leaders, Random, Gen Match or Chaos Gym Leaders.", "Red")
  end
  if selected_map == HISUI_REGION and leadersGen ~= 11 and leadersGen ~= 0 and leadersGen ~= -1 and leadersGen ~= -2 and leadersGen ~= -3 then
    hisui_check = false
    printToAll("Due to Hisui's Gym Leaders scenario, you can only choose the Hisui Gym Leaders, Random, Gen Match or Chaos Gym Leaders.", "Red")
  end
  if selected_map ~= ORANGE_ISLANDS_REGION and leadersGen == 12 then
    orange_islands_check = false
    printToAll("Due to Orange Island's Gym Leaders scenario, you can only choose the Orange Islands Gym Leaders on the Orange Islands map.", "Red")
  end
  UI.setAttribute("beginBtn", "interactable", hasEnoughPokemon and customAndTooFewLeaders == false and selected_map ~= nil and alola_check and paldea_check and orange_islands_check and ransei_check and hisui_check)
end

-----------------
-- Scripted house rule setters and getters.
-----------------

function hpRule2Set(player, isOn)
  HR_hp_rule_2 = stringToBoolean[isOn]

  -- If HP Rule 2 was just turned on, give a log statement explaining the rules.
  if HR_hp_rule_2 then
    printHpRule2Rules()
  else
    printToAll("HP Rule 2: Disabled")
  end
end

function getHpRule2Set()
  return HR_hp_rule_2
end

function printHpRule2Rules()
  printToAll("HP Rule 2: Enabled \
  - HP Rule 2 Rules: \
    * Pokémon HP is equal to their level. \
    * HP resets after each battle. \
    * Pokémon receive one D4 of damage when swapping with a Pokémon already in battle. \
    * Damage is dealt as the difference between total attack rolls.",
    "Pink")
end

function dualTypeEffectivenessSet(player, isOn)
  HR_dual_type_effectiveness = stringToBoolean[isOn]

  -- If Dual Type Effectiveness was just turned on, give a log statement explaining the rules.
  if HR_dual_type_effectiveness then
    printDualTypeRules()
  else
    printToAll("Dual Type Effectiveness: Disabled")
  end
end

function getDualTypeEffectiveness()
  return HR_dual_type_effectiveness
end

function printDualTypeRules()
  printToAll("Dual Type Effectiveness: Enabled \
  - Dual Type Effectiveness Rules: \
    * Secondary Pokémon types are considered for effectiveness. \
    * Super-Weak (-3) / Weak (-2) / Neutral / Effective (+2) / Super-Effective (+3)", 
    "Pink")
end

function immunitiesSet(player, isOn)
  -- Update the flag.
  HR_immunities = stringToBoolean[isOn]

  -- If Immunities were just turned on, give a log statement explaining the rules.
  if HR_immunities then
    printImmunitiesRules()
  else
    printToAll("Immunities: Disabled")
  end

  -- Get a handle on the Type Chart object.
  local type_chart = getObjectFromGUID(TYPE_CHART_GUID)
  if type_chart == nil then
    printToAll("Failed to find Type Chart", "Red")
    return
  end
  
  -- Set the Type Chart image.
  if HR_immunities then
    type_chart.setCustomObject(
      {
          image = "https://steamusercontent-a.akamaihd.net/ugc/14386893611394103134/66254D405444238192C0017ED27222544E68937F/",
          image_secondary = "https://steamusercontent-a.akamaihd.net/ugc/14386893611394103134/66254D405444238192C0017ED27222544E68937F/",
      }
    )
  else
    type_chart.setCustomObject(
      {
          image = "https://steamusercontent-a.akamaihd.net/ugc/16892222014418912561/BFFFBC7F294B654457BA3610CE262D6C1F855F8F/",
          image_secondary = "https://steamusercontent-a.akamaihd.net/ugc/16892222014418912561/BFFFBC7F294B654457BA3610CE262D6C1F855F8F/",
      }
    )
  end

  -- Reload the Type Chart.
  type_chart.reload()
end

function getImmunitiesEnabled()
  return HR_immunities
end

function printImmunitiesRules()
  printToAll("Immunities: Enabled \
  - Immunity Rules: \
    * If a Pokemon's type(s) is/are immune, the move has -3 Attack Strength and all move effects are ignored. \
    * Immunity overrides weakness/resistance. \
    * Vitamin is still considered; Type Enhancers, King's Rock, Alpha, etc. are not.\
    * Status Immunities: \
      * Fire-types: immune to Burn. \
      * Poison-types: immune to Poison \
      * Steel-types: immune to Poison \
      * Electric-types: immune to Paralysis \
      * Ice-types: immune to being Frozen \
    * Shedinja's Wonder Guard is in effect",
    "Pink")
end

function printPmtuPokedexInfo()
  printToAll("You are opting in to the Global PMTU Pokédex. Navigate to https://pmtu-pokedex.com to track your progress and see leaderboards!")
end

function gymLeaderBoostersSet(player, isOn)
  HR_gym_leader_boosters = stringToBoolean[isOn]

  -- If Gym Leader Boosters was just turned on, give a log statement explaining the rules.
  if HR_gym_leader_boosters then
    printGymLeaderBoostersRules()
  else
    printToAll("Gym Leader Boosters: Disabled")
  end
end

function printGymLeaderBoostersRules()
  printToAll("Gym Leader Boosters: Enabled \
  - Gym Leader Boosters Rules: \
    * When battling a Gym Leader, Elite 4, Team Rocket, etc. they have a 45% chance to get a random booster for the duration of the battle.", 
    "Pink")
end

function getBoostersChance()
  if HR_gym_leader_boosters then
    return 45
  else
    return 0
  end
end

-----------------
-- Helpers.
-----------------

function removeNonUsedItemsSet(player, isOn)
  HELPER_remove_non_player_items = stringToBoolean[isOn]

  -- If Gym Leader Boosters was just turned on, give a log statement explaining the rules.
  if HELPER_remove_non_player_items then
    printRemoveNonUsedItemsWarning()
  else
    printToAll("Remove Non-Player Racks: Disabled")
    printToAll("Wait until after setup if you plan to remove them on your own. :)")
  end
end

function printRemoveNonUsedItemsWarning()
  printToAll("Remove Non-Player Racks: Enabled \
  - After setup the mod will auto-remove all racks, etc. not used by players for you.", 
    "Pink")
end

-----------------
-- Region Selection.
-----------------

-- This function does nothing except set the URL of the map as a preview for players as well
-- as setting the Global reference to the current map.
function pokeBackgroundToggle(player, option, id)
  -- Toggle the feature.
  pokeBackground = not pokeBackground

  -- Update the background.
  if pokeBackground then
    Backgrounds.setCustomURL(CUSTOM_BACKGROUND_URLS[math.random(#CUSTOM_BACKGROUND_URLS)])
  else
    printToAll("Loading Forest Cave by eggdropsoap")
    Backgrounds.setCustomURL(BASE_BACKGROUND_URL)
  end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--  MUSIC
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function PlayRouteMusic()
  MusicPlayer.setPlaylist(route_playlist)
  MusicPlayer.setCurrentAudioclip(route_playlist[math.random(#route_playlist)])
  MusicPlayer.repeat_track = false
  MusicPlayer.shuffle = true
  MusicPlayer.play()
end

function PlayOpeningMusic()
  currentTrack = MusicPlayer.playlist_index + 1
  parameters =
  {
    url = "http://cloud-3.steamusercontent.com/ugc/2469738072713807297/578FCF01CEB10CD9F19D296687F11F6CF7B15732/",
    title = "Theme Song"
  }

  -- Easter egg. Sometimes, rarely, play a fun opening song.
  local lucky_roll = math.random(100)
  if lucky_roll < 3 then
    parameters.url = "https://steamusercontent-a.akamaihd.net/ugc/41199248284223572/335FBD7F735E5D70D4E29D9D60C6E169B7203BC4/"
    parameters.title = "First Vacation!"
  elseif lucky_roll < 6 then
    parameters.url = "https://steamusercontent-a.akamaihd.net/ugc/41199248284223523/AD94544C2839CF6D5D70EBBAD4C820AF1BC8D564/"
    parameters.title = "Gotta Catch 'Em All!"
  elseif lucky_roll < 9 then
    parameters.url = "https://steamusercontent-a.akamaihd.net/ugc/41199248284223452/D370FBC80887E05E09AEE43A32DF1EC359632503/"
    parameters.title = "Pokemon - The First Movie Theme"
  elseif lucky_roll < 11 then
    parameters.url = "https://steamusercontent-a.akamaihd.net/ugc/41199248284223306/A810CA8B61D2DD0BB2945901AC4A74DC6F3C39F9/"
    parameters.title = "Hey Digimon!"
  end

  MusicPlayer.setCurrentAudioclip(parameters)
  MusicPlayer.repeat_track = true
  MusicPlayer.play()
end

function PlayTrainerBattleMusic()
  currentTrack = MusicPlayer.playlist_index + 1
  parameters =
  {
    url = "http://cloud-3.steamusercontent.com/ugc/1023948871898692339/1921C30F85D84D3DA42FB922B89E8C3EDBA0035F/",
    title = "Battle Music"
  }
  MusicPlayer.setCurrentAudioclip(parameters)
  MusicPlayer.repeat_track = true
end

function PlayGymBattleMusic()
  currentTrack = MusicPlayer.playlist_index + 1
  parameters = battle_playlist[math.random(#battle_playlist)]
  MusicPlayer.setCurrentAudioclip(parameters)
  MusicPlayer.repeat_track = true
end

function PlayFinalBattleMusic()
  currentTrack = MusicPlayer.playlist_index + 1
  parameters = elite_4_playlist[math.random(#elite_4_playlist)]
  MusicPlayer.setCurrentAudioclip(parameters)
  MusicPlayer.repeat_track = true
end

function PlayVictoryMusic()
  parameters =
  {
    url = "http://cloud-3.steamusercontent.com/ugc/1025076138129942019/D4A62C26EC339551E33D0319D0340384B1BDC69A/",
    title = "Victory Music"
  }

  MusicPlayer.setCurrentAudioclip(parameters)
end

function PlayRivalMusic()
  currentTrack = MusicPlayer.playlist_index + 1
  parameters = rival_playlist[math.random(#rival_playlist)]
  MusicPlayer.setCurrentAudioclip(parameters)
  MusicPlayer.repeat_track = true
end

function PlaySilphCoBattleMusic()
  currentTrack = MusicPlayer.playlist_index + 1
  parameters = team_rocket_playlist[math.random(#team_rocket_playlist)]
  MusicPlayer.setCurrentAudioclip(parameters)
  MusicPlayer.repeat_track = true
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

--[[ Models code. 
  Models code was taken from this mod and modified (and added to) as needed for our use: 
      https://steamcommunity.com/sharedfiles/filedetails/?id=1108630722
  Apparently that mod took the models from other mods and those mods are gone. 
  So credit to the original creator is not easy to pinpoint. Still, we thank them!
]]--
function get_active_pokemon_by_GUID(guid, by_model_guid)
  if by_model_guid then
    return active_models[guid]
  else
    return active_chips[guid]
  end
end

-- This is just a dumber version of get_active_pokemon_by_GUID that is slimmed down so
-- it can be used by the BattleManager
function simple_get_active_pokemon_by_GUID(guid)
  return active_chips[guid]
end

-- Helper function used to insert data into the active chips list. This is used for
-- Gym Leaders, Rivals, etc.
function add_to_active_chips_by_GUID(params)
  -- Get the chip by its GUID.
  params.data.chip = getObjectFromGUID(params.data.chip_GUID)

  -- Wait until the <whatever> token is resting.
  Wait.condition(
    function()
      params.data.model = get_model_guid_on_top(params.data)
    end,
    function() -- Condition function
      return params.data.chip ~= nil and params.data.chip.resting and get_model_guid_on_top(params.data) ~= nil
    end,
    3
  )

  -- Check if some other model of this type was created already.
  params.data.base.created_before = has_model_been_created(params.data.base.name)
  
  -- Insert the data into the table.
  active_chips[params.guid] = params.data

  -- Return the created before flag. This helps the caller call check_for_spawn_or_despawn() correctly. (It is gross, yes.)
  return params.data.base.created_before
end

function has_model_been_created(name)
  -- Determine if one of the active chips has a model that was created.
  local return_value = true
  for _, pokemon in pairs(active_chips) do
    -- Check if this is our Pokemon chip we care about.
    if pokemon.base.name == name then
      if not pokemon.base.created_before then
        return_value = false

        -- Now the model has been created, modify the field for future model checks.
        pokemon.base.created_before = true
      end
    end
  end
  
  return return_value
end

-- Helper function used to remove data from the active chips list. This is used for
-- rival tokens and gym leaders.
function remove_from_active_chips_by_GUID(guid)
  -- Remove the data from the table.
  active_chips[guid] = nil
end

-- Get the active model GUID for a token (or gym card, etc.). This is useful to prevent despawning the base model each time.
function get_model_guid(token_guid)
  for model_guid, pokemon_data in pairs(active_models) do
    if pokemon_data.chip_GUID == token_guid then
      return model_guid
    end
  end

  -- No model found, return nil.
  return nil
end

function get_models_ball_guid()
  return MODELS_BALL_GUID
end

function is_pokemon_chip(tbl)
  return get_active_pokemon_by_GUID(tbl.obj_GUID) ~= nil
end

-- Model spawn and despawn related functions
function isFaceUp(obj)
  if type(obj) == "string" then
    obj = getObjectFromGUID(obj)
  end
  if not obj then return false end
  return (obj.getTransformUp()[2] > 0)
end

function get_model_guid_on_top(pokemon)
  assert(pokemon.chip)
  local hits = Physics.cast({
    origin = model_position(pokemon, true),
    direction = {x=0, y=1, z=0},
    type = 3,
    size = pokemon.chip.getBounds().size
  })
  for i=1,#hits do
    if hits[i].hit_object ~= pokemon.chip then
      return hits[i].hit_object
    end
  end
  return nil
end

function has_something_on_top(pokemon)
  assert(pokemon.chip)
  -- TODO: occasional errors here?
  local check_size = pokemon.chip.getBounds().size
  check_size = { x=check_size.x / 2, y=check_size.y / 2, z=check_size.z / 2 }
  local hits = Physics.cast({
    origin = model_position(pokemon, true),
    direction = {x=0, y=1, z=0},
    type = 3,
    size = check_size
  })
  for i=1,#hits do
    -- GUID de7152 is the BattleManager. Somehow, Gym Leaders cards register as having it on top. Not sure why lol.
    if hits[i].hit_object ~= pokemon.model and hits[i].hit_object ~= pokemon.chip and hits[i].hit_object.getGUID() ~= BATTLE_MANAGER_GUID then
      return true
    end
  end
  return false
end

function get_pokemon_below(pokemon)
  assert(pokemon and pokemon.chip)
  local hits = Physics.cast({
    origin = model_position(pokemon, true),
    direction = {x=0, y=-1, z=0},
    type = 1
  })
  local number_pokemon_below = 0
  local pokemon_below = {}
  for i=1,#hits do
    if hits[i].hit_object ~= pokemon.chip then
      local hit_pokemon = get_active_pokemon_by_GUID(hits[i].hit_object.getGUID())
      if hit_pokemon then
        number_pokemon_below = number_pokemon_below + 1
        pokemon_below[number_pokemon_below] = hit_pokemon
      end
    end
  end
  return pokemon_below
end

function despawn_below(pokemon)
  if not pokemon or not pokemon.chip then return end
  local pokemon_below = get_pokemon_below(pokemon)
  for i=1,#pokemon_below do
    despawn_now(pokemon_below[i])
  end
end

function wait_for_chip(pokemon)
  Wait.condition(
    function() 
      -- Check to spawn in the model.
      check_for_spawn_or_despawn(pokemon)
    end,
    function() return not pokemon.chip or pokemon.chip.resting or (pokemon.model==nil) == isFaceUp(pokemon.chip) end
  )

end

-- Model check for spawn or despawn.
function check_for_spawn_or_despawn(pokemon)
  -- Allow callers to pass in a GUID instead of the actual objects. As far as I can tell,
  -- calling a function via Global.call() does not allow this.
  if type(pokemon.chip) == "string" then
    pokemon.chip = getObjectFromGUID(pokemon.chip)
  end

  if not models_enabled then return end
  if not pokemon.base.model_GUID and not pokemon.base.states then return end -- some pokemon do not have a model yet
  if not pokemon.chip or (pokemon.model and not isFaceUp(pokemon.chip)) then
    if not pokemon.model or pokemon.in_creation then return end
    pokemon.in_creation = true
    if pokemon.model.getGUID() == pokemon.state.model_GUID then
      if pokemon.base.in_creation then
        pokemon.in_creation = false
        Wait.condition(function() check_for_spawn_or_despawn(pokemon) end, function() return not pokemon.base.in_creation end)
        return
      end
      pokemon.base.in_creation = true
    end
    local pokemon_model=pokemon.model
    pokemon.model=nil
    if pokemon.chip and not pokemon.picked_up and try_activate_effect({model=pokemon_model, effectName=pokemon.state.faint_effect or pokemon.base.faint_effect}) then
      Wait.time(function() despawn_model(pokemon, pokemon_model) end, pokemon.base.despawn_time)
    else
      despawn_model(pokemon, pokemon_model)
    end
  elseif not pokemon.chip.resting then
    Wait.condition(function() check_for_spawn_or_despawn(pokemon) end, function() return not pokemon.chip or pokemon.chip.resting end)
  elseif not pokemon.model and (pokemon.isTwoFaced or isFaceUp(pokemon.chip)) then
    if pokemon.in_creation or pokemon.base.in_creation then
      Wait.condition(
        function() Wait.time(function() check_for_spawn_or_despawn(pokemon) end, 0.7 --[[Time needed for despawn animation]]) end,
        function() return not pokemon.in_creation and not pokemon.base.in_creation end
      )
    elseif has_something_on_top(pokemon) then
      return
    else
      -- Spawn in the model.
      pokemon.in_creation = true
      pokemon.base.in_creation = true
      spawn_model(pokemon)
    end
  end
end

function despawn_now(pokemon)
  -- Allow callers to pass in a GUID instead of the actual objects. As far as I can tell,
  -- calling a function via Global.call() does not allow this.
  if type(pokemon.model) == "string" then
    pokemon.model = getObjectFromGUID(pokemon.model)
  end

  if not pokemon.model then return end
  if pokemon.in_creation then
    Wait.condition(function() despawn_now(pokemon) end, function() return not pokemon.in_creation end)
  else
    pokemon.in_creation = true
    if pokemon.model.getGUID() == pokemon.state.model_GUID or pokemon_has_shiny({name=pokemon.state.name, model_guid=pokemon.model.getGUID()}) then
      pokemon.base.in_creation = true
    end
    local pokemon_model = pokemon.model
    pokemon.model = nil
    despawn_model(pokemon, pokemon_model)
  end
end

function despawn_model(pokemon, model)
  -- de7152 is the BattleManager. If this functionality tries to destroy the BattleManager then the whole game breaks, lol.
  local model_guid = model.getGUID()
  if model_guid == BATTLE_MANAGER_GUID then return end

  active_models[model_guid] = nil
  if model_guid == pokemon.state.model_GUID or pokemon_has_shiny({name=pokemon.base.name, model_guid=model_guid}) then
    local despawn_scale = 1/spawn_scale
    if pokemon.scale_set then
      for _,scale in pairs(pokemon.scale_set) do
        despawn_scale = despawn_scale * scale
      end
      pokemon.scale_set = {}
    end
    scale_model(model, despawn_scale)
    models_bag.putObject(model)
    if not pokemon.base.persistent_state then
      pokemon.state = nil
      pokemon.state_key = nil
    end
    pokemon.base.in_creation = false
  else
    destroyObject(model)
  end
  pokemon.in_creation = false
  assert(pokemon.model == nil)
end

function model_position(pokemon, without_offset)
  -- Allow callers to pass in a GUID instead.
  if type(pokemon.chip) == "string" then
    pokemon.chip = getObjectFromGUID(pokemon.chip)
  end

  -- Assert we have a chip.
  assert(pokemon.chip)
  
  local offset = {x=0, y=0, z=0}
  if not without_offset then
    offset = pokemon.base.offset
    offset = {x=offset.x*global_scale, y=offset.y*global_scale, z=offset.z*global_scale}
  end
  return pokemon.chip.positionToWorld (
    pokemon.chip.positionToLocal(
      pokemon.chip.getPosition()+{x=0, y=pokemon.chip.getBounds().size[2], z=0}
    ) + offset
  )
end

function model_rotation(pokemon)
  assert(pokemon.chip)
  return {x=0, y=pokemon.chip.getRotation()[2], z=0}
end

function bag_contains(guid, bag)
  for _, obj in ipairs(bag.getObjects()) do
    if guid == obj.guid then
      return true
    end
  end
  return false
end

function spawn_model(pokemon)
  -- Allow callers to pass in a GUID instead.
  if type(pokemon.chip) == "string" then
    pokemon.chip = getObjectFromGUID(pokemon.chip)
  end

  assert(pokemon.chip)
  assert(pokemon.model == nil)
  if not pokemon.state then
    if pokemon.base.states then
      local r = math.random(1,#pokemon.base.states)
      pokemon.state = pokemon.base.states[r]
      pokemon.state_key = r
    else
      pokemon.state = pokemon.base

      -- Safety check in case the scale is missing.
      if pokemon.state.custom_scale == nil then
        pokemon.state.custom_scale = 1
      end
    end
  end

  -- Check this token's shiny state. The shiny_guid_table will return the GUID for its shiny model, if it exists.
  local token_guid = pokemon.chip.getGUID()
  local pokemon_name = pokemon.base and pokemon.base.name or GetNameOfPokemonWithGUID(token_guid)

  -- See if we can spawn a shiny model.
  if pokemon_name and shiny_guid_table[pokemon_name] then
    local shiny_status = get_token_shiny_status(token_guid)  -- true, false, or nil
    local holder = shiny_pokemon_that_exist_table and shiny_pokemon_that_exist_table[pokemon_name] or nil
    local species_claimed_by_other = holder ~= nil and holder ~= token_guid

    -- Helper to hard-set this spawn to normal model.
    local function set_non_shiny_for_this_spawn()
      -- Restore base model from data.
      local baseData = GetPokemonDataByGUID({guid = token_guid})
      if baseData and baseData.model_GUID then
        pokemon.state.model_GUID = baseData.model_GUID
      end
      pokemon.state.shiny = false

      -- Set the token to white.
      local token = getObjectFromGUID(token_guid)
      if token then
        token.setColorTint("White")
      end
    end

    -- Check for force shiny.
    if force_shiny then
      -- Force always wins, regardless of rules.
      pokemon.state.model_GUID = shiny_guid_table[pokemon_name]
      pokemon.state.shiny = true
      pokemon.base.offset = {x=pokemon.base.offset.x, y=pokemon.base.offset.y + 0.05, z=pokemon.base.offset.z}

      -- Set this token's shiny status.
      set_token_shiny_status({guid=token_guid, state=true})

      -- Tint the token.
      local token = getObjectFromGUID(token_guid)
      if token then
        token.setColorTint(SHINY_RGB)
      end
      printToAll("A shiny " .. pokemon_name .. " appeared!", SHINY_RGB)

      -- Remove the shiny force status.
      local rivalBall = getObjectFromGUID(RIVAL_EVENT_POKEBALL_GUID)
      if rivalBall then
        rivalBall.call("remove_forced_shiny")
      end
      force_shiny = false

    elseif shiny_status == true then
      -- Already permanently shiny. Respawn the shiny.
      pokemon.state.model_GUID = shiny_guid_table[pokemon_name]
      pokemon.state.shiny = true

      -- Apply the offsets.
      local pokemonData = GetPokemonDataByGUID({guid=token_guid})
      if pokemon.base.offset == pokemonData.offset then
        pokemon.base.offset = {x=pokemon.base.offset.x, y=pokemon.base.offset.y + 0.05, z=pokemon.base.offset.z}
      end

    elseif shiny_status == false then
      -- Permanently non-shiny, no roll.
      set_non_shiny_for_this_spawn()
      printToAll(pokemon_name .. " appeared!")

    else
      -- shiny_status == nil, first time this token is attempting to spawn.
      if species_claimed_by_other then
        -- Pokemon already has a different shiny holder; no roll and permanently lock this token as non-shiny.
        set_non_shiny_for_this_spawn()
        set_token_shiny_status({guid=token_guid, state=false})
        printToAll(pokemon_name .. " appeared!")

      else
        -- Eligible to roll for shiny.
        local rolled_shiny = (math.random(1,100) > (100 - shiny_chance))
        if rolled_shiny then
          -- Spawn a shiny!
          pokemon.state.model_GUID = shiny_guid_table[pokemon_name]
          pokemon.state.shiny = true
          -- This offset only works the first time the Pokemon is loaded.
          pokemon.base.offset = {x=pokemon.base.offset.x, y=pokemon.base.offset.y + 0.05, z=pokemon.base.offset.z}

          -- Record the shiny_status and claim this Pokemon as shiny.
          set_token_shiny_status({guid=token_guid, state=true})

          local token = getObjectFromGUID(token_guid)
          if token then 
            token.setColorTint(SHINY_RGB)
          end
          printToAll("A shiny " .. pokemon_name .. " appeared!", SHINY_RGB)
        else
          -- Permanently non-shiny for this GUID.
          set_non_shiny_for_this_spawn()
          set_token_shiny_status({guid=token_guid, state=false})
          printToAll(pokemon_name .. " appeared!")
        end
      end
    end
  elseif pokemon_name then
    -- Non-shinyable species
    printToAll(pokemon_name .. " appeared!")
  end

  -- Check if the model is already in use.
  local base_model = getObjectFromGUID(pokemon.state.model_GUID)
  if base_model then
    local p = {
      position = model_position(pokemon)
    }
    pokemon.model = base_model.clone(p)
    pokemon.model.setPosition(model_position(pokemon))
    -- Override the rotation if given a custom rotation value.
    if pokemon.state.custom_rotation ~= nil then
      pokemon.model.setRotation(pokemon.state.custom_rotation)
    else
      pokemon.model.setRotation(model_rotation(pokemon))
    end

    Wait.condition(
      function()
        active_models[pokemon.model.getGUID()] = pokemon
        init_model(pokemon)
      end,
      function() return pokemon.model.getGUID() ~= pokemon.state.model_GUID end
    )
  elseif bag_contains(pokemon.state.model_GUID, models_bag) then --check should not be needed if used correctly - but people tend to do crazy stuff
    active_models[pokemon.state.model_GUID] = pokemon
    local p = {
      position = model_position(pokemon),
      rotation = model_rotation(pokemon),
      guid = pokemon.state.model_GUID,
      smooth = false,
      callback_function = function(obj) spawn_callback(obj, futureName) end
    }
    -- Override the rotation if given a custom rotation value.
    if pokemon.state.custom_rotation ~= nil then
      p.rotation = pokemon.state.custom_rotation
    end
    local model_reference = models_bag.takeObject(p)

    -- reset if pokemon hasn't spawned after 2 sec (e.g. if AssetBundle could not be loaded)
    Wait.condition(function() return end, function() return not pokemon.in_creation end, 2,
      function()
        assert(pokemon.model == nil)
        active_models[pokemon.state.model_GUID] = nil
        pokemon.in_creation = false
        pokemon.base.in_creation = false
      end
    )
  else -- for some reason model does not exist
    if pokemon.model_not_existent_message_printed == nil then
      printToAll("Model " .. pokemon.state.model_GUID .. " for " .. pokemon.state.name .. " does not exist. Have you deleted it? If this occurs frequently, please contact the developer. :)")
      pokemon.model_not_existent_message_printed = true
    end
    pokemon.in_creation = false
    pokemon.base.in_creation = false
  end
end

function spawn_callback(obj, name)
  if not obj then return end -- AssetBundle has not been found
  local pokemon = active_models[obj.getGUID()]
  if not pokemon then return end -- Timeout before spawn happened
  pokemon.model = obj
  assert(pokemon.model.getGUID() == pokemon.state.model_GUID)
  if not pokemon.state.created_before then
    pokemon.model.setScale({global_scale, global_scale, global_scale})
    pokemon.state.created_before = true
    init_model(pokemon, true)
  else
    local scaling_vector = {x=global_scale, y=global_scale, z=global_scale}
    if pokemon.base.custom_scale then
      scaling_vector.x = scaling_vector.x * pokemon.base.custom_scale
      scaling_vector.y = scaling_vector.y * pokemon.base.custom_scale
      scaling_vector.z = scaling_vector.z * pokemon.base.custom_scale
    end
    pokemon.model.setScale(scaling_vector)
    init_model(pokemon)
  end
end

function init_model(pokemon, first_creation)
  pokemon.model.interactable = false
  pokemon.model.dynamic_friction = 1
  pokemon.model.mass = 0
  pokemon.model.setLock(true)
  pokemon.base.in_creation = false
  pokemon.in_creation = false
  Wait.condition(
    function()
      try_activate_effect({model=pokemon.model, effectName=pokemon.state.idle_effect or pokemon.base.idle_effect})
      Wait.time(
        function()
          try_activate_effect({model=pokemon.model, effectName=pokemon.state.spawn_effect or pokemon.base.spawn_effect})
          if first_creation then
            local scale_step = math.sqrt(math.sqrt(math.sqrt(pokemon.state.custom_scale)))
            pokemon.scale_set = {scale_step, scale_step, scale_step, scale_step, scale_step, scale_step, scale_step, scale_step}
            -- Wait 2 sec before scaling except if pokemon despawns in between
            Wait.time(function() scale_model_next(pokemon) end, 2)
          end
        end,
        spawn_delay
      )
    end,
    function() return not pokemon.model or (not pokemon.model.spawning and not pokemon.model.loading_custom) end
  )
end

function scale_model(pokemon_model, scale_factor)
  pokemon_model.scale(scale_factor)
  pokemon_model.mass = 0
end

function scale_model_next(pokemon)
  if not pokemon.model then return end
  for key, scale in pairs(pokemon.scale_set) do
    scale_model(pokemon.model, scale)
    pokemon.scale_set[key] = nil
    Wait.time(function() scale_model_next(pokemon) end, 0.05)
    return
  end
end

function try_activate_effect(params) -- model, effectName
  if not params.model then return false end
  if not params.effectName then return false end
  if not params.model.AssetBundle then return false end

  local triggerList = params.model.AssetBundle.getTriggerEffects()
  local loopingList = params.model.AssetBundle.getLoopingEffects()

  if (not triggerList or not loopingList) then
    return false
  end

  for _, effect in ipairs(triggerList) do
    if effect.name == params.effectName then
      params.model.AssetBundle.playTriggerEffect(effect.index)
      return true
    end
  end
  for _, effect in ipairs(loopingList) do
    if effect.name == params.effectName then
      params.model.AssetBundle.playLoopingEffect(effect.index)
      return true
    end
  end
  return false
end

-- pickup and drop related functions
function wait_for_empty_stack(pokemon)
  Wait.time(
    function()
      assert(pokemon)
      if not pokemon.chip then return end
      local hits = Physics.cast({
        origin = model_position(pokemon, true),
        direction = {x=0, y=1, z=0},
        type = 3,
        size = pokemon.chip.getBounds().size
      })
      local resting_on_top = false
      for i=1,#hits do
        if hits[i].hit_object ~= pokemon.model and hits[i].hit_object ~= pokemon.chip then
          if hits[i].hit_object.resting then
            resting_on_top = true
          else
            wait_for_empty_stack(pokemon)
            return
          end
        end
      end
      if not resting_on_top then
        -- Check to spawn in the model.
        check_for_spawn_or_despawn(pokemon)
      end
    end,
    0.5
  )
end

function pickUp(pokemon)
  -- check for a token.
  if not pokemon then return end

  -- Check for a model.
  if not pokemon.model then return end

  assert(pokemon.chip)
  pokemon.picked_up = true
  pokemon.model.setPosition(model_position(pokemon))
  pokemon.model.setLock(false)
  pokemon.model.jointTo(pokemon.chip, {
    ["type"]         = "Fixed",
    ["collision"]    = false,
    ["break_force"]  = math.infinity,
    ["break_torgue"] = math.infinity,
  })

  -- Active the running animation.
  try_activate_effect({model=pokemon.model, effectName=pokemon.state.run_effect or pokemon.base.run_effect})

  -- Wait for the token to come to rest.
  wait_for_chip(pokemon)
  local pokemon_below = get_pokemon_below(pokemon)
  for i=1,#pokemon_below do
    wait_for_empty_stack(pokemon_below[i])
  end
end

function drop(pokemon)
  if not pokemon then return end
  if not pokemon.model then
    Wait.condition(function() despawn_below(pokemon) end, function() return not pokemon.chip or pokemon.chip.resting end)
    return
  end
  assert(pokemon.chip)
  pokemon.model.jointTo()
  pokemon.model.setPosition(model_position(pokemon))
  pokemon.model.setRotation(model_rotation(pokemon))
  pokemon.model.setLock(true)
  try_activate_effect({model=pokemon.model, effectName=pokemon.state.idle_effect or pokemon.base.idle_effect})
  pokemon.picked_up = false
  Wait.condition(function() despawn_below(pokemon) walk_to_chip(pokemon) end, function() return not pokemon.model or not pokemon.chip or pokemon.chip.resting end)
end

function walk_to_chip(pokemon)
  if pokemon.chip and pokemon.model and isFaceUp(pokemon.chip) then
    pokemon.model.setPositionSmooth(model_position(pokemon), false, false)
    pokemon.model.setRotationSmooth(model_rotation(pokemon), false, false)
  else
    -- Check to spawn in the model.
    check_for_spawn_or_despawn(pokemon)
  end
end

function scale_models(tbl)
  local new_scale
  local new_scale
  if tbl.scale > 1 then
      new_scale = math.ceil(global_scale*tbl.scale*100)/100
  else
      new_scale = math.floor(global_scale*tbl.scale*100)/100
  end
  if new_scale > 0 then
      for _,pokemon in pairs(active_chips) do
          if pokemon.model then
              scale_model(pokemon.model, new_scale/global_scale)
              pokemon.model.setPosition(model_position(pokemon))
          end
      end
      global_scale = new_scale
  end
end

function toggle_models_enabled()
  -- If a battle is in progress, we do not allow toggling of models. 
  -- Gyms and rivals have despawn functionality but not respawn.
  local battleManager = getObjectFromGUID(BATTLE_MANAGER_GUID)
  if battleManager ~= nil then
    if battleManager.call("isBattleInProgress") then
      printToAll("Cannot toggle models during battle.")
      return
    end
  end

  if models_enabled then
    models_enabled = false
    for _, pokemon in pairs(active_chips) do
      despawn_now(pokemon)
    end
  else
    models_enabled = true
    for _, pokemon in pairs(active_chips) do
      if pokemon.chip then
        check_for_spawn_or_despawn(pokemon)
      end
    end
  end
end

function get_models_enabled()
  return models_enabled
end

function increase_spawn_delay(tbl)
  local new_delay = math.floor(100*(spawn_delay+tbl.delay))/100
  if new_delay >= 0 then
    spawn_delay = new_delay
  end
end

function get_spawn_delay()
  return spawn_delay
end

function increase_shiny_chance(tbl)
  local new_shiny_chance = shiny_chance + tbl.chance
  if new_shiny_chance >= 0 and new_shiny_chance <= 100 then
    shiny_chance = new_shiny_chance
  end
end

function get_shiny_chance()
  return shiny_chance
end

function toggle_force_shiny()
  force_shiny = not force_shiny
end

function get_shiny_forced()
  return force_shiny
end

-- Helper function to determine if a Token has a Shiny model. Receives params: name, model_guid
function pokemon_has_shiny(params)
  if not params.name or not params.model_guid then return false end

  -- Get the Pokemon name. If this model has the same GUID as the shiny GUID, it currently has a shiny model.
  if params.name and params.model_guid == shiny_guid_table[params.name] then
    return true
  end

  return false
end

-- Helper function to force a Pokemon token to spawn a shiny. This is mostly used when a Pokemon 
-- evolves with a Shiny model.
--
--   guid  : string GUID of the token
--   state : boolean, must be true or false
function force_shiny_spawn(params)
  if not params or not params.guid or not params.state == nil then
    return 
  end
  set_token_shiny_status(params)
end

-- Helper function used to get the shiny status of a token.
-- This function returns true, false or nil.
--   true  -> this token is permanently shiny
--   false -> this token is permanently non-shiny
--   nil   -> this token has never rolled to be shiny
function get_token_shiny_status(guid)
  -- Basic checks.
  if not guid then return nil end
  if not tokens_checked_for_shiny then return nil end

  return tokens_checked_for_shiny[guid]
end

-- Helper function used to set the permanent shiny state for a token GUID.
-- If state is true, this token will spawn a shiny and it will always be shiny.
--
--   guid  : string GUID of the token
--   state : boolean, must be true or false
function set_token_shiny_status(params)
  -- Validate inputs
  if not params or not params.guid or params.state == nil then return end
  
  -- Ensure shiny status table exists
  if not tokens_checked_for_shiny then
    print("ERROR: lost shiny tokens checked table, re-initializing..")
    tokens_checked_for_shiny = {}
  end

  -- Record state for this specific token.
  tokens_checked_for_shiny[params.guid] = params.state

  -- If this token is shiny, claim the Pokemon.
  if params.state == true then
    local name = nil
    local active = active_chips and active_chips[guid] or nil
    if active and active.base and active.base.name then
      name = active.base.name
    else
      -- Fallback if we somehow don't have active_chips yet.
      name = GetNameOfPokemonWithGUID(guid)
    end

    if name then
      if not shiny_pokemon_that_exist_table then
        print("ERROR: lost shiny Pokémon table, re-initializing..")
        shiny_pokemon_that_exist_table = {}
      end
      shiny_pokemon_that_exist_table[name] = params.guid
    end
  end
end

-- Helper function used to reset a token's permanent shiny pokemon status to "never rolled".
-- If this GUID currently holds the species' shiny claim, release it.
function clear_token_shiny_status(guid)
  if not guid then return end

  -- If this token was shiny, release shiny Pokemon claim only if this guid holds it.
  if tokens_checked_for_shiny and tokens_checked_for_shiny[guid] == true then
    local name = nil
    local active = active_chips and active_chips[guid] or nil
    if active and active.base and active.base.name then
      name = active.base.name
    else
      name = GetNameOfPokemonWithGUID(guid)
    end

    if name and shiny_pokemon_that_exist_table and shiny_pokemon_that_exist_table[name] == guid then
      shiny_pokemon_that_exist_table[name] = nil
    end
  end

  -- Reset shiny status to "never rolled".
  if tokens_checked_for_shiny then
    tokens_checked_for_shiny[guid] = nil
  end
end

-- further events
function onObjectLeaveContainer(container, leave_object)
  local pokemon = get_active_pokemon_by_GUID(leave_object.getGUID())
  if pokemon then
    pokemon.chip = leave_object
    pokemon.chip.registerCollisions()
    Wait.time(function() wait_for_chip(pokemon) end, 0.5 --[[ Prevent spawning while object is dealt]])
  end
end

function onObjectEnterContainer(container, enter_object)
  -- Remove any special color tinting.
  enter_object.setColorTint("White")

  -- Clean up shiny status.
  local obj_guid = enter_object.getGUID()
  local pokemon = get_active_pokemon_by_GUID(obj_guid)
  if pokemon then
    enter_object.unregisterCollisions()
    pokemon.chip = nil
    wait_for_chip(pokemon)

    -- Reset a token's chance at being shiny on enter.
    clear_token_shiny_status(obj_guid)

    -- Reset per-spawn and per-state shiny flags.
    if pokemon.state then
      -- Reset the shiny state.
      pokemon.state.shiny = false
      -- Reset the base model GUID from data.
      local baseData = GetPokemonDataByGUID({guid = guid})
      if baseData and baseData.model_GUID then
        pokemon.state.model_GUID = baseData.model_GUID
      end

      -- Reset the base offset to the "data" offset in case we changed it for a shiny.
      local baseData = GetPokemonDataByGUID({guid = guid})
      if baseData and baseData.offset and pokemon.base then
        -- Copy the original offset back.
        pokemon.base.offset = {
          x = baseData.offset.x,
          y = baseData.offset.y,
          z = baseData.offset.z
        }
      end
    end
  end
end

function onObjectCollisionEnter(hit_object, collision_info)
  local pokemon = get_active_pokemon_by_GUID(hit_object.getGUID())
  if pokemon then
    -- Model logic.
    wait_for_chip(pokemon)
  end
end

function onObjectHover(player_color, hover_object)
  if hover_object then
    local pokemon = get_active_pokemon_by_GUID(hover_object.getGUID())
    if pokemon and next(Player[player_color].getHoldingObjects()) and Player[player_color].getHoldingObjects()[1].getGUID() ~= pokemon.chip_GUID then
      if pokemon.model and has_something_on_top(pokemon) then
        -- de7152 is the BattleManager. If this functionality tries to destroy the BattleManager then the whole game breaks, lol.
        if type(pokemon.model) == "string" and pokemon.model == BATTLE_MANAGER_GUID then return end
        if pokemon.model.getGUID() == BATTLE_MANAGER_GUID then return end

        -- Safely despawn the model.
        despawn_now(pokemon)
        wait_for_empty_stack(pokemon)
      end
    end
  end
end

function onObjectPickUp(player_color, picked_up_object)
  pickUp(get_active_pokemon_by_GUID(picked_up_object.getGUID()))
end

function onObjectDrop(player_color, dropped_object)
  drop(get_active_pokemon_by_GUID(dropped_object.getGUID()))
end

function onObjectDestroy(dying_object)
  local guid = dying_object.getGUID()
  local pokemon_by_chip = get_active_pokemon_by_GUID(guid)
  if pokemon_by_chip then
    pokemon_by_chip.chip = nil
    despawn_now(pokemon_by_chip)
  else
    local pokemon_by_model = get_active_pokemon_by_GUID(guid, true)
    if pokemon_by_model then
      -- model is destroyed even though chip isn't (may happen during table flip)
      pokemon_by_model.model = nil
      active_models[guid] = nil
    end
  end
end

-- This is a helper function to prevent models from stealing our token before going into the Battle Models pokeball. 
-- The models are bags. You can't make this stuff up.
function tryObjectEnterContainer(container, object)
  if container.hasTag("Pokemon Model") then
    -- Check if the model is still here.
    local model = getObjectFromGUID(container.getGUID())
    if model ~= nil then
      model.setScale({global_scale, global_scale, global_scale})
      models_bag.putObject(model)
    end
    return false
  end
  return true -- Allows object to enter.
end

function onObjectStateChange(object, old_state_guid)
  -- Check if models are enabled.
  if object.hasTag("Pokemon Token") and models_enabled then
    -- Save off some data we care about.
    local pokemon_guid = object.guid
    local pokemon_position = object.getPosition()
    local pokemon_rotation = object.getRotation()

    -- Get the Pokemon data.
    local pokemon_data = GetPokemonDataByGUID({guid=pokemon_guid})
    if not pokemon_data then return end

    -- Check if there is a ball field.
    local color_index = 1
    if pokemon_data.ball then color_index = pokemon_data.ball end

    -- Get a handle on the pokeball that we care about.
    local pokeball = getObjectFromGUID(deploy_pokeballs[color_index])
    if not pokeball then
      print("Failed to get Pokéball handle to update the state model. Move this token to a Pokéball and pull it back out to get and updated model.")
      return
    end

    -- Put the Pokemon chip back in its place.
    pokeball.putObject(object)

    -- Wait for the token to go into the pokeball.
    Wait.condition(
      function()
        -- Take the chip back out of the pokeball.
        local takeParams = {guid=pokemon_guid, position={pokemon_position.x, 1.5, pokemon_position.z}, rotation=pokemon_rotation}
        pokeball.takeObject(takeParams)
      end,
      function() -- Condition function
        return getObjectFromGUID(pokemon_guid) == nil
      end,
      2
    )
  end
end

-- Helper function to get the name of a Pokemon that has this GUID.
-- For Rivals and Gym Leaders, the side of the card will be considered.
function GetNameOfPokemonWithGUID(guid)
  -- Get the Pokemon data.
  local pokemon_data = GetAnyPokemonDataByGUID({guid=guid})
  if pokemon_data then
    -- Return the name.
    return pokemon_data.name
  end

  -- It's not a typical pokemon token. Maybe it is a rival. Try to get the rival data.
  local rival_data = GetRivalPokemonDataByGuid(guid)
  if rival_data then
    local pokemon_data = isFaceUp(guid) and rival_data.pokemon[1] or rival_data.pokemon[2]
    if not pokemon_data then return end

    -- Return the name.
    return pokemon_data.name
  end

  -- It is probably a Gym Leader.
  local gym_data = GetGymDataByGUID({guid=guid})
  if gym_data then
    local pokemon_data = isFaceUp(guid) and gym_data.pokemon[1] or gym_data.pokemon[2]

    -- Return the name.
    return pokemon_data.name
  end

  return nil
end

-- Helper function to show a Pokeball effect.
-- Arguments: pokemon, effect_type
-- function create_pokeball_effect(params)
--   -- Allow callers to pass in a GUID instead of the actual objects. As far as I can tell,
--   -- calling a function via Global.call() does not allow this.
--   if type(params.pokemon.model) == "string" then
--     params.pokemon.model = getObjectFromGUID(pokemon.model)
--   end

--   -- Get a handle on the model object.
--   if not params.pokemon.model then return end
--   if not base_effects_pokeball then
--     print("Could not find Effects Pokeball")
--     return
--   end

--   -- Clone the effects Pokeball.
--   local cloned_pokeball = base_effects_pokeball.clone()
--   cloned_pokeball.setPosition(effect_position(params.pokemon.model))
--   cloned_pokeball.setRotation(model_rotation(params.pokemon))

--   -- Get the effects lists.
--   if not cloned_pokeball.AssetBundle then return false end

--   Wait.condition(
--     function()
--       -- See which effect to do.
--       if params.effect_type == effects_type_index.shiny then
--         cloned_pokeball.AssetBundle.playTriggerEffect(SHINY_TRIGGER_INDEX-1)
--         Wait.time(function() cloned_pokeball.AssetBundle.playTriggerEffect(SHINY_TRIGGER_INDEX) end, 0.25)
--         Wait.time(function() cloned_pokeball.AssetBundle.playLoopingEffect(SHINY_LOOP_INDEX) end, 1.0)
--         -- Delete the cloned effects ball.
--         Wait.time(function() destroyObject(cloned_pokeball) end, 5)
--       end
--     end,
--     function() -- Condition function
--       local triggerEffects = cloned_pokeball.AssetBundle.getTriggerEffects()
--       local loopEffects = cloned_pokeball.AssetBundle.getLoopingEffects()
--       return triggerEffects ~= nil and #triggerEffects > 0 and loopEffects ~= nil and #loopEffects > 0
--     end,
--     3, -- Timeout
--     function() -- Timeout function.
--       -- Delete the cloned effects ball.
--       destroyObject(cloned_pokeball)
--     end
--   )
-- end

-- -- Helper function to get the position for the Effect Pokeball.
-- function effect_position(model)
--   -- Allow callers to pass in a GUID instead of the actual objects. As far as I can tell,
--   -- calling a function via Global.call() does not allow this.
--   if type(model) == "string" then
--     model = getObjectFromGUID(model)
--   end
--   local position = model.positionToWorld (
--     model.positionToLocal(
--       model.getPosition()+{x=0, y=4.0, z=0}
--     )
--   )
--   return position
-- end

---------------------------------
-- Funky music functionality.
---------------------------------

function toggle_original_music_enabled()
  if original_music_enabled then
    original_music_enabled = false
  else
    original_music_enabled = true
  end

  -- Update the playlist.
  update_playlists()
end

function toggle_remix_music_enabled()
  if remix_music_enabled then
    remix_music_enabled = false
  else
    remix_music_enabled = true
  end

  -- Update the playlist.
  update_playlists()
end

-- Updates the playlist based on the selected music choices.
function update_playlists()
  -- Check if the music player should be restarted.
  local restart_player = false
  if MusicPlayer.player_status == "Loading" or MusicPlayer.player_status == "Play" then
    restart_player = true
  end

  -- Clear all of the playlists.
  route_playlist = {}
  team_rocket_playlist = {}
  battle_playlist = {}
  rival_playlist = {}
  elite_4_playlist = {}

  -- Check for the music conditionals.
  if original_music_enabled then
    add_music_to_playlist(route_playlist, original_route_tracks, remix_route_tracks)
    add_music_to_playlist(team_rocket_playlist, original_team_rocket_tracks, remix_team_rocket_tracks)
    add_music_to_playlist(battle_playlist, original_battle_tracks, remix_battle_tracks)
    add_music_to_playlist(rival_playlist, original_rival_tracks, remix_rival_tracks)
    add_music_to_playlist(elite_4_playlist, original_elite_4_tracks, remix_elite_4_tracks)
  end
  if remix_music_enabled then
    add_music_to_playlist(route_playlist, remix_route_tracks, original_route_tracks)
    add_music_to_playlist(team_rocket_playlist, remix_team_rocket_tracks, original_team_rocket_tracks)
    add_music_to_playlist(battle_playlist, remix_battle_tracks, original_battle_tracks)
    add_music_to_playlist(rival_playlist, remix_rival_tracks, original_rival_tracks)
    add_music_to_playlist(elite_4_playlist, remix_elite_4_tracks, original_elite_4_tracks)
  end

  -- Restart the music if needed.
  if restart_player then
    -- Determine which playlist to load.
    -- NOTE: BattleManager uses the following values for types (better not change it! <.<).
    --[[
          PLAYER = 0
          GYM = 1
          TRAINER = 2
          WILD = 3
          RIVAL = 4
    ]]
    local battleManager = getObjectFromGUID(BATTLE_MANAGER_GUID)
    if getObjectFromGUID(STARTER_POKEBALL_GUID) ~= nil then
      -- The setup is not complete, don't update the current song.
      return
    elseif not battleManager.call("isBattleInProgress") then
      PlayRouteMusic()
    else
      -- Check the defender type.
      local defenderType = battleManager.call("getDefenderType")
      if defenderType == 1 then
        -- Attacker is gym.
        PlayGymBattleMusic()
        return
      end

      local attackerType = battleManager.call("getAttackerType")
      if attackerType == 2 then
        -- Attacker is trainer.
        PlayTrainerBattleMusic()
        return
      elseif attackerType == 4 then
        -- Attacker is rival.
        PlayTrainerBattleMusic()
        return
      end

      -- Otherwise just play battle music.
      PlayTrainerBattleMusic()
    end
  end
end

-- Adds music to the prescribed playlist. Also includes a backup playlist variable in case the tracks is empty.
function add_music_to_playlist(playlist, tracks, backup_tracks)
  -- Protect ourselves from dumb people (me).
  if tracks == nil then
    tracks = {}
  end
  if backup_tracks == nil then
    backup_tracks = {}
  end

  if #tracks ~= 0 then
    for index, song in ipairs(tracks) do
      table.insert(playlist, song)
    end
  elseif #playlist == 0 then
    for index, song in ipairs(backup_tracks) do
      table.insert(playlist, song)
    end
  end
end

function get_original_music_enabled()
  return original_music_enabled
end

function get_remix_music_enabled()
  return remix_music_enabled
end

---------------------------------
-- Pokedex.
---------------------------------

-- Register the host.
function registerAllPlayersForPokedex()
  local handler = getObjectFromGUID(POKEDEX_HANDLER_GUID)
  if not handler then
    return
  end

  -- Register all players.
  for _, player in pairs(Player.getPlayers()) do
    if player.seated then
      handler.call("registerPlayer", { color = player.color })
    end
  end
end
