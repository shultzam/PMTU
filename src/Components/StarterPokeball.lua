pokeballs = { "ec1e4b", "9c4411", "c988ea", "2cf16d", "986cb5", "f66036", "e46f90", "1feef7" }
evoPokeballs = { "757125", "6fd4a0", "23f409", "caf1c8", "35376b", "f353e7", "68c4b0" }
gyms = { "20bcd5", "ec01e5", "f2f4fe", "d8dc51", "b564fd", "22cc88", "c4bd30", "c9dd73" }

genLeadersPokeballGuids = { "1adc9d", "d6be18", "797253", "d6b981", "cd0374", "150632", "58ca45", "227356", "e4988b", "c4a729", "76b037" }
genTeamRocketPokeballGuids = { "c3b5fb", "e68807", "a926ef", "e98f45", "524ba4", "5498d4", "72fcef", "96992a", "6f3326", "3675ab", "e0ad1f" }

gen1Pokeballs = { "681d76", "d7d981", "818525", "30391b", "758036", "bb73fd", "78fdbb" }
gen1EvoPokeballs = { "e9d043", "7de53d", "f30baf", "ceb9a5", "5293ec", "98bf25", "01efbd" }
gen1LeadersArr = { "1adc9d", "8b26e1", "3ddf5f", "c3b5fb" }

gen2Pokeballs = { "d87f03", "2fd969", "2c76f4", "710bab", "521e8b", "9f4fb9", "f5d806" }
gen2EvoPokeballs = { "c6e80b", "d86df8", "f59319", "538c67", "6f201a", "ad0f19", "02db20" }
gen2LeadersArr = { "d6be18", "c3650f", "ec20b2", "e68807" }

gen3Pokeballs = { "e05c61", "b3ede1", "80c3c3", "5ded3e", "4f4570", "ee7d71", "feea6b" }
gen3EvoPokeballs = { "31b1ec", "9b3ecb", "613cb1", "1b49a8", "8d3dfb", "fd9bcb", "1bf5ba" }
gen3LeadersArr = { "797253", "61d7e4", "2a9746", "a926ef" }

gen4Pokeballs = { "be7627", "8079e7", "49e675", "f7a234", "fadfc3", "a63903", "9f5985" }
gen4EvoPokeballs = { "cccfb4", "e15056", "24a5c8", "a7d340", "bfb915", "7eb6b9", "96a1c9" }
gen4LeadersArr = { "d6b981", "9b50d1", "537124", "e98f45" }

gen5Pokeballs = { "291a17", "890df4", "1341cb", "6ee713", "de1f71", "48a192", "296ec5" }
gen5EvoPokeballs = { "db9cda", "425115", "aefa83", "cb4ad6", "e16953", "8abcf1", "59de2d" }
gen5LeadersArr = { "cd0374", "fe76e1", "3869d0", "524ba4" }

gen6Pokeballs = { "590ae3", "d80d72", "ce15ef", "9fe972", "7f1ebb", "401e23", "1fa353" }
gen6EvoPokeballs = { "315a95", "f02e17", "943c81", "c67911", "de7f1f", "750e11", "21b1c8" }
gen6LeadersArr = { "150632", "c85052", "ba0a27", "5498d4" }

gen7Pokeballs = { "426038", "b3a265", "a77d5e", "44c820", "4903d2", "652a56", "405d8e" }
gen7EvoPokeballs = { "6d2737", "2b7b9b", "79e3f4", "21ba50", "74eeff", "432142", "79ee2f" }
gen7LeadersArr = { "58ca45", "157ff9", "eeba9c", "72fcef" }

gen8Pokeballs = { "307988", "09cb0e", "99b8aa", "d6ef76", "0faf4d", "ad4ceb", "a1750a" }
gen8EvoPokeballs = { "bc1673", "4f7b73", "2d873a", "a32b0d", "d2b2ca", "637026", "02689f" }
gen8LeadersArr = { "227356", "b47fe7", "8e8fd2", "96992a" }

gen9Pokeballs = { "3168f8", "de981e", "7ced83", "345260", "d63e7c", "3fcea5", "79df8a" }
gen9EvoPokeballs = { "9c010b", "03ea82", "4217d6", "6ae5c4", "8963b5", "0dc3f5", "4e3f1d" }
gen9LeadersArr = { "e4988b", "7269d7", "80f567", "6f3326" }

genRanseiLeadersArr = { "c4a729", "d8fcd7", "8e77e6", "3675ab" }
genHisuiLeadersArr = { "76b037", "6f3f3d", "be633c", "e0ad1f" }

genOrangeIslandsLeadersArr = { "8c717e", false, "163374", "2317bd" }

customPokeballs = { "a927cf", "acd90d", "63bb92", "88b157", "8aaeef", "915bb4", "47780a" }
customEvoPokeballs = { "95fee8", "8a1c9a", "7f2cd7", "0d33b3", "8faab4", "34858b", "59b163" }
customLeadersArr = { "ab33b9", "f6be1f", "be2f56", "94584c" }

-- The Starter Pokeball should be placed at {0, 2.69, 34}.
buttonRelativePosition = { 0, -1, 2.3 }

setup_done = false

-- Custom Gym Leader Options.
NONE_SELECT = 0
ALLOW_SELECT = 1
ALWAYS_SELECT = 2

-- GUIDs.
elite4GymGuid = "a0f650"
rivalGymGuid = "c970ca"
teamRocketGymGuid = "19db0d"
mapManagerGuid = "026857"
deckBuilderGuid = "9f7796"

-- Map lookup table.
local map_lookup_table = {
    [1] = "Kanto",
    [2] = "Johto",
    [3] = "Hoenn",
    [4] = "Sinnoh",
    [5] = "Unova",
    [6] = "Kalos",
    [7] = "Alola",
    [8] = "Galar",
    [9] = "Paldea",
    [10] = "Ransei",
    [11] = "Hisui",
    [12] = "Orange Islands",
}

-- Iniital Rack GUIDs. These are based on the Johto GUIDs, since that is the initial state of the racks.
-- Order: Yellow, Green, Blue, Red, Purple, Orange.
initial_rack_guids = { "fa15d1", "4530dd", "8d5116", "88f43b", "2971d2", "7b8860" }
rack_urls = {
    Kanto = {
        "https://steamusercontent-a.akamaihd.net/ugc/2468621052564367522/62486D9D445F8D97B83E31714951794380A4F90D/",
        "https://steamusercontent-a.akamaihd.net/ugc/2468621052564367824/0AEA12BF0CD767188686A93CCC01C926A308F5EA/",
        "https://steamusercontent-a.akamaihd.net/ugc/2468621052564368625/1C84806D05F20E7F919E1A2095DA37030B3FB463/",
        "https://steamusercontent-a.akamaihd.net/ugc/2468621052564368221/2A006544F5BE9CCC70B9CA5FB402D7021183B863/",
        "https://steamusercontent-a.akamaihd.net/ugc/2468621052564367189/7DBCE90055D93019827F3E36BE7D7BE71AD6021D/",
        "https://steamusercontent-a.akamaihd.net/ugc/2468621052564366548/76CC4CA4EC054D579E645C05AADE147915751554/"
    },
    Johto = {
        "https://steamusercontent-a.akamaihd.net/ugc/2471992409989256155/E1D2C5038E001E2E83BEA4A8921A024B797995FC/",
        "https://steamusercontent-a.akamaihd.net/ugc/2471992409989260044/D8E9818836B7037FB36BE7D9A9855973F9D91ED3/",
        "https://steamusercontent-a.akamaihd.net/ugc/2471992409989260786/F3C58442C8806439BE0B4A3DC11339667F8D248B/",
        "https://steamusercontent-a.akamaihd.net/ugc/2471992409989257038/21B93BA6D59C2D76AA282E9538B4666DC1182787/",
        "https://steamusercontent-a.akamaihd.net/ugc/2471992409989257852/2955D0FA4838C9E3C1DBDE183E8D8CAD65BC04FF/",
        "https://steamusercontent-a.akamaihd.net/ugc/2471992409989258669/37F66A1F06735921AD13AD61C72E338FD98169F1/"
    },
    Hoenn = { 
        "https://steamusercontent-a.akamaihd.net/ugc/2452852831747401327/E5C912EEDF221B17936283F646115B411EFE8C2B/",
        "https://steamusercontent-a.akamaihd.net/ugc/2452852831747401561/D39F601F935A57A109F533A70DE3FD9DD89D6273/",
        "https://steamusercontent-a.akamaihd.net/ugc/2452852831747402071/568EB18F7EFD1D814F8DF352994B6ABAF23EE751/",
        "https://steamusercontent-a.akamaihd.net/ugc/2452852831747401816/2EA4A4E9CB4CA1A203925EFB67BFFD29F6AED20B/",
        "https://steamusercontent-a.akamaihd.net/ugc/2452852831747401055/7A87F7479DEFF7B2435F49DC9AD6A1F179F20FC4/",
        "https://steamusercontent-a.akamaihd.net/ugc/2452852831747400830/2E36C789DAD25149087A619E2657E5D18F9F9E1F/"
     },
    -- Order: Yellow, Green, Blue, Red, Purple, Orange.
    Sinnoh = { 
        "https://steamusercontent-a.akamaihd.net/ugc/2447224599454591681/83C2A89956FD23A2145D148A5D22B9468B025EE1/",
        "https://steamusercontent-a.akamaihd.net/ugc/2447224599454591473/5970BBC767375CF38EBCF3B8D707D65304C39C5C/",
        "https://steamusercontent-a.akamaihd.net/ugc/2447224599454591043/F90C643B7198B9368DD6A9C5A3C54AB3F51E949D/",
        "https://steamusercontent-a.akamaihd.net/ugc/2447224599454591258/29AB0A8B9AAA0FE8EBF64DE1B467301323C2DBB6/",
        "https://steamusercontent-a.akamaihd.net/ugc/2447224599454592149/94B2A1E1795CDEB841E68E031FB2E973FF39B27D/",
        "https://steamusercontent-a.akamaihd.net/ugc/2447224599454591944/095E1FB6EA14990762DBD31C9504B4C1FAC0B3BB/"
     },
    Unova = { 
        "https://steamusercontent-a.akamaihd.net/ugc/2376299162192006709/C0C0CD1DB14B08A430482ED1DC2CAB4239D65F70/",
        "https://steamusercontent-a.akamaihd.net/ugc/2376299162192005979/6160BAAC6F8A23A0627281A6AC5D6BBFE41DC151/",
        "https://steamusercontent-a.akamaihd.net/ugc/2376299162192004413/5690F4F4AD4557B52FE5A21203A6F5197118CFA2/",
        "https://steamusercontent-a.akamaihd.net/ugc/2376299162192004881/491548F1AA03DDF413DABDD4B66B553B22299B95/",
        "https://steamusercontent-a.akamaihd.net/ugc/2376299162192007211/52BB225A772190BDC20972080D9CF39A616252E2/",
        "https://steamusercontent-a.akamaihd.net/ugc/2376299162192007452/D5571D32C553B7DB862A9A7D124A02B687E4727A/"
     },
    Kalos = { 
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094401101/B25D53CE272B750F071BB4CAED1CEAC9E085A1C3/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094401308/6DDE7DE682E703EF3DC1BC3D726D4DE5BF2EE41C/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094401740/1EE53A6F2F72924D5EA7C5094D7F24AFF47DEFBB/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094401516/D5F00B7D9A9E68FA7BC9672EF0A50A5E4820FAE6/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094400844/6041242C1D5443BE356BDCF961F8948343AA01C1/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094400595/F80CF5D35CEDF74BFF112E81A9F17282CA02153B/"
     },
    -- Order: Yellow, Green, Blue, Red, Purple, Orange.
    Alola = { 
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094407259/8ADD0154FC5782959F960CC58D51C34D4207D310/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094407355/63795DE52ED4E878D6B0F4F8FE0228FE2815B1C9/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094407590/2A0533D45EF286D50E724702ECA105AB81D22F66/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094407450/48E53326A6AED3E794AC18A0F47118D422C9774F/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094407194/9B38F45CA958904E18EB113232BA11C55A11CD7E/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094407076/32F83176FDFC84AE94A27B43FC59FEDF012B83CE/"
     },
    Galar = { 
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094410855/011D6E69E118F873A9DD59A1BB1F2EC9C4BB0D14/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094410660/DF464D47738EF02BE30DACF45B4EBBD8BC4117C3/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094410420/56BDB82CC2EBEBFAE84827AE860F43D462468D06/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094410548/B44F6F190EBBC1F93B2D5DDD29289FDA8289BCAF/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094410973/C081E361958159944E9B1A217BD5C8F51644DB2B/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094411105/1B109D2A51CF6F50A0C2ECF9C80C6D1CEF8D7D8A/"
     },
    Paldea = { 
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094404147/2464E3F9FE7D8A559E3B612A44C37EE921F5A6D6/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094404257/4535DD8447ABD09F9E6B8BD46054A3C44CF18550/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094404499/09667228887F0BEDE4EE03FA43CB451E40E3E572/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094404369/FC6D151460A411B5F0B04FB7E2C5EAE8E1932548/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094404005/4E2AB9A8893E305B809AAC2F47FD54D96B1A8F2B/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094403885/ADAE8EE866C0C3B671C2E450AA8995A1C6B4112A/"
     },
    -- Order: Yellow, Green, Blue, Red, Purple, Orange.
    Ransei = {
        "https://steamusercontent-a.akamaihd.net/ugc/14495026167592481260/DCE5E214AF270D353AAE0F6BE04C93F548AABDDA/",
        "https://steamusercontent-a.akamaihd.net/ugc/13952032409084734457/D1E7D397865C56166EEF41FE5AE3F1C350A63242/",
        "https://steamusercontent-a.akamaihd.net/ugc/11352952635905886106/708EA807CC0C5EFF33FE3BE752D95DAF288BFD09/",
        "https://steamusercontent-a.akamaihd.net/ugc/11505974387789337526/608945BF271D414ACEBD26B1F8B5ACA6872DB17A/",
        "https://steamusercontent-a.akamaihd.net/ugc/16333773344373329365/E2229AF43BF8035F5C9687BB00738647B1B7BBE3/",
        "https://steamusercontent-a.akamaihd.net/ugc/9401982623111932656/A750704A2C0DDD28BE707E61CD4B0E4161C9A043/"
    },
    Hisui = {
        "https://steamusercontent-a.akamaihd.net/ugc/11926231543666186223/94FF0C4C5DB08161702718A767DECF5FD7734717/",
        "https://steamusercontent-a.akamaihd.net/ugc/12273569499826047020/0536395D261C191D1E8D14E6EA5480512A564A41/",
        "https://steamusercontent-a.akamaihd.net/ugc/13124238251907640585/1006D22D447D890CAAFD01A7E38E651950B563D4/",
        "https://steamusercontent-a.akamaihd.net/ugc/16982370318733867594/F720F26DA6B0B69629F133A71FA4A2B74D06F74C/",
        "https://steamusercontent-a.akamaihd.net/ugc/13572088602205379009/F83A7141A90EFAAE60E10732A53914D430891838/",
        "https://steamusercontent-a.akamaihd.net/ugc/17006682037092323425/188382A47137C6534FA111D78EE4F435AA8E9473/"
    },
    ["Orange Islands"] = { 
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094452154/5DE45931305977EDB788C867921FF5E49F06391D/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094452039/FA7968A10BF8AE7BD08B29F2E0538C41A07A5D2B/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094451690/66F3BAE8170B8BE0866DD9C5199766A0F8E66546/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094451858/9A8D966F666685EFEC5B77C1AB23068BF5828A90/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094452246/06194951A834DE1E0D98E781A7057B7023317816/",
        "https://steamusercontent-a.akamaihd.net/ugc/2455117542094452300/B2B5D20E5CE7DAEE736DF0B421475AA789197837/"
    }
}

-- The standard and extras pokeball GUIDs.
standard_guid = "35950f"
map_specific_guid = "18e364"

-- Counter GUIDs.
def_counter_guid = "b76b2a"
atk_counter_guid = "73b431"

-- Stupid Arena text GUID.
arena_text_guid = "f0b393"

-- Base Health Tracker object.
BASE_HEALTH_OBJECT_GUID = "5ab909"

-- GUIDs for removal. All will go in order, counterclockwise, starting with yellow.
rack_guids = {}     -- Gets populated after racks are changed to the map-specific rack.
dice_guids = { "2d0825", "abf34c", "c80faa", "806332", "6b0d57", "4334bb" }
trainer_token_guids = { "f5f4be", "bdde77", "f99b44", "c036ba", "1d1174", "f86514" }
city_token_guids = { "53b66d", "4cc429", "62de78", "f0f9dd", "60db28", "543e9e" }
pokecoin_counter_guids = { "b08b0e", "fe0861", "92cb92", "252975", "b15f1b", "68de04" }
stupid_thing_guids = { "1452fa", "81e2ef", "8805c0", "fff686", "03f8b7", "135ed9" }
-- These are a bit different since they only get deleted if both of the associated colors are not occupied.
yellow_green_status_token_bag_guid = "824d3c"
yellow_green_rule_book_guid = "1f9df8"
red_blue_status_token_bag_guid = "8e3fe3"
red_blue_rule_book_guid = "04c930"
purple_orange_status_token_bag_guid = "6c4bb9"
purple_orange_rule_book_guid = "7d5565"

-- Used for looping colors.
colors_loop = { "Yellow", "Green", "Blue", "Red", "Purple", "Orange" }

function onSave()
    return JSON.encode({settings_done=setup_done})
end

function onLoad(saved_data)
    -- Check for saved settings.
    local save_table
    if saved_data and saved_data ~= "" then
        save_table = JSON.decode(saved_data)
    end

    if save_table then
        setup_done = save_table.settings_done
    end

    -- Safety check on fields.
    if setup_done == nil then
        setup_done = false
    end

    if setup_done then
        self.createButton({ --Apply settings button
            label = "Start Game",
            click_function = "start",
            function_owner = self,
            tooltip = "Click to start game. Only click this when every player has a starter Pokémon.",
            position = buttonRelativePosition,
            rotation = { 0, 0, 0 },
            height = 600,
            width = 2000,
            font_size = 300,
        })
    else
        self.createButton({ --Apply settings button
            label = "Settings",
            click_function = "settings",
            function_owner = self,
            tooltip = "Setup Game",
            position = buttonRelativePosition,
            rotation = { 0, 0, 0 },
            height = 600,
            width = 2000,
            font_size = 300,
        })
    end
end

function beginSetup2(params)
    -- Keep track of the leaders we have already retrieved. Can't retrieve them twice, lol.
    -- Load the required map shenanigans. If this map has multiple Gyms (like Alola, some Gym Leaders will get taken during this step).
    local leadersRetrieved = setup_map(params.selected_map, params.leadersGen, params.selectedGens, params.level_increase_set)

    -- Check if we need to merge the TMs. setup_map() moves the filtered TM deck onto the table so this should be a save merge.
    if not params.filterTMs then
        -- Get a handle on both TM decks
        local filtered_tm_deck = getObjectFromGUID("68d25d")
        local bad_tm_deck = getObjectFromGUID("f9d9d3")

        if filtered_tm_deck == nil or bad_tm_deck == nil then
            print("Failed to get a handle on the TM decks")
            return
        end

        Wait.condition(
            function() -- Conditional function.
                -- Merge the decks.
                local targetPos = filtered_tm_deck.getPosition()
                targetPos.y = targetPos.y + 5
                bad_tm_deck.setPosition(targetPos)
                bad_tm_deck.setLock(false)
            end,
            function() -- Condition function.
                return filtered_tm_deck ~= nil and filtered_tm_deck.resting
            end,
            2,
            function() -- Timeout function.
                print("Timed out waiting for TM deck to be resting")
            end
        )

        -- Wait a bit to let physics merge them.
        Wait.time(function()
            filtered_tm_deck.shuffle()
        end, 5)
    end

    -- Get a handle on the Map Manager and delete it.
    local map_manager = getObjectFromGUID(mapManagerGuid)
    if map_manager then
        destroyObject(map_manager)
    end

    -- Get a handle on the Deck Builder and delete it (unless gym boosters are enabled).
    if not params.gym_boosters then
        local deck_builder = getObjectFromGUID(deckBuilderGuid)
        if deck_builder then
            destroyObject(deck_builder)
        end
    end

    -- Check if we need to collect Beast Pokemon.
    if params.selected_map == "Alola" then
        moveBeastPokemon()
    end

    -- Tokens
    if params.selectedGens[1] then
        setupPokeballs(gen1Pokeballs, pokeballs)
        setupPokeballs(gen1EvoPokeballs, evoPokeballs)
    end

    if params.selectedGens[2] then
        setupPokeballs(gen2Pokeballs, pokeballs)
        setupPokeballs(gen2EvoPokeballs, evoPokeballs)
    end

    if params.selectedGens[3] then
        setupPokeballs(gen3Pokeballs, pokeballs)
        setupPokeballs(gen3EvoPokeballs, evoPokeballs)
    end

    if params.selectedGens[4] then
        setupPokeballs(gen4Pokeballs, pokeballs)
        setupPokeballs(gen4EvoPokeballs, evoPokeballs)
    end

    if params.selectedGens[5] then
        setupPokeballs(gen5Pokeballs, pokeballs)
        setupPokeballs(gen5EvoPokeballs, evoPokeballs)
    end

    if params.selectedGens[6] then
        setupPokeballs(gen6Pokeballs, pokeballs)
        setupPokeballs(gen6EvoPokeballs, evoPokeballs)
    end

    if params.selectedGens[7] then
        setupPokeballs(gen7Pokeballs, pokeballs)
        setupPokeballs(gen7EvoPokeballs, evoPokeballs)
    end

    if params.selectedGens[8] then
        setupPokeballs(gen8Pokeballs, pokeballs)
        setupPokeballs(gen8EvoPokeballs, evoPokeballs)
    end

    if params.selectedGens[9] then
        setupPokeballs(gen9Pokeballs, pokeballs)
        setupPokeballs(gen9EvoPokeballs, evoPokeballs)
    end

    if params.customGen then
        setupPokeballs(customPokeballs, pokeballs)
        setupPokeballs(customEvoPokeballs, evoPokeballs)
    end

    -- Get evo tokens we care about and throw them into the evo pokeballs.
    handle_evo_tokens(params.selectedGens)

    -- Delete Saves on starting
    local tmpelite4Gym = getObjectFromGUID(elite4GymGuid)
    local tmprivalGym = getObjectFromGUID(rivalGymGuid)
    tmpelite4Gym.call("deleteSave")
    tmprivalGym.call("deleteSave")

    -- gyms
    if params.leadersGen == 1 then
        setupGyms(gen1LeadersArr, 1, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 2 then
        setupGyms(gen2LeadersArr, 2, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 3 then
        setupGyms(gen3LeadersArr, 3, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 4 then
        setupGyms(gen4LeadersArr, 4, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 5 then
        setupGyms(gen5LeadersArr, 5, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 6 then
        setupGyms(gen6LeadersArr, 6, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 7 then
        setupGyms(gen7LeadersArr, 7, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 8 then
        setupGyms(gen8LeadersArr, 8, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 9 then
        setupGyms(gen9LeadersArr, 9, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 10 then
        setupGyms(genRanseiLeadersArr, 10, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 11 then
        setupGyms(genHisuiLeadersArr, 11, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == 12 then
        setupGyms(genOrangeIslandsLeadersArr, 12, params.customGymLeaderOption, leadersRetrieved)
    elseif params.leadersGen == -1 or params.leadersGen == -3 then
        -- Random Leaders or Gen Match.
        local gen

        -- Initialize the Gym Leaders pokeballs list. This assumes we are doing random.
        local gymPokeballs = { gen1LeadersArr[1], gen2LeadersArr[1], gen3LeadersArr[1], gen4LeadersArr[1], gen5LeadersArr[1], gen6LeadersArr[1], gen7LeadersArr[1], gen8LeadersArr[1], gen9LeadersArr[1], genRanseiLeadersArr[1], genHisuiLeadersArr[1] }

        -- If we are doing Gen match, we just need to remove a few from the gymPokeballs list.
        --  10: Ransie
        --  11: Hisui
        local gen_options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
        if params.leadersGen == -3 then
            -- Loop through the selectedGens table backwards removing any false indicies from the gymPokeballs table.
            for gen_i = #params.selectedGens, 1, -1 do
                if not params.selectedGens[gen_i] then
                    table.remove(gen_options, gen_i)
                end
            end
        end

        -- Collect Gym Leaders.
        for i = 1, 8 do
            -- Orange Islands only uses a scheme where gym 1 is tiers 1/2, gym 3 is tiers 3/4, etc.
            if params.selected_map ~= "Orange Islands" or i % 2 == 1 then
                -- Check if we need to consider custom Gym Leaders.
                local pokeballsList = shallowCopy(gymPokeballs)
                local custom_leaders_available = customs_available(customLeadersArr[1], i, leadersRetrieved)
                if params.customGymLeaderOption == ALLOW_SELECT and custom_leaders_available then
                    table.insert(pokeballsList, customLeadersArr[1])
                elseif params.customGymLeaderOption == ALWAYS_SELECT and custom_leaders_available then
                    pokeballsList = { customLeadersArr[1] }
                end

                -- Determine the gen.
                if params.leadersGen == -3 then
                    gen = gen_options[math.random(1, #gen_options)]
                else
                    gen = math.random(1, #pokeballsList)
                end

                local gymsPokeball = getObjectFromGUID(pokeballsList[gen])
                if (#pokeballsList == 1 and pokeballsList[1] == customLeadersArr[1]) or map_lookup_table[gen] == "Orange Islands" then
                    gen = "custom"
                end
                local leader = nil
                local random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen, tier=i, retrievedList=leadersRetrieved})
                
                -- There is a chance we already grabbed all the Gym Leaders at the selected gen for this tier.
                if random_leader_params.leader_gen ~= gen then
                    local checks = 0
                    repeat
                        gen = gen_options[math.random(1, #gen_options)]
                        random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen, tier=i, retrievedList=leadersRetrieved})
                        checks = checks + 1
                        gymsPokeball = getObjectFromGUID(pokeballsList[random_leader_params.leader_gen])
                    until (random_leader_params.leader_gen == gen) or (checks >= 5)
                end

                if random_leader_params.leader_gen ~= gen then
                    printToAll("ERROR: Failed to get a Gym Leader for the specific scenario - likely due to Gen Match on a Map with a lot of Gym Leaders and not a lot of Gens enabled; Reload and try a new scenario.", "Red")
                    return
                end
                leader = gymsPokeball.takeObject({ guid = random_leader_params.guid })

                -- Put the retrieved gym leader into the gym.
                local gym = getObjectFromGUID(gyms[i])
                gym.putObject(leader)
                gym.call("setLeaderGUID", { leader.guid })

                -- Add this to the leaders we have already retrieved list.
                table.insert(leadersRetrieved, leader.guid)
            end
        end

        -- Orange Islands does not have an Elite 4.
        if params.selected_map ~= "Orange Islands" then
            -- Initialize the Elite 4 pokeballs list and gym object.
            local eliteFourPokeballs = { gen1LeadersArr[2], gen2LeadersArr[2], gen3LeadersArr[2], gen4LeadersArr[2], gen5LeadersArr[2], gen6LeadersArr[2], gen7LeadersArr[2], gen8LeadersArr[2], gen9LeadersArr[2], genRanseiLeadersArr[2], genHisuiLeadersArr[2] }
            local elite4Gym = getObjectFromGUID(elite4GymGuid)
            for i = 1, 4 do
                -- Check if we need to consider custom Elite 4s.
                local pokeballsList = shallowCopy(eliteFourPokeballs)
                local custom_leaders_available = customs_available(customLeadersArr[2], 9, leadersRetrieved)
                if params.customGymLeaderOption == ALLOW_SELECT and custom_leaders_available then
                    table.insert(pokeballsList, customLeadersArr[2])
                elseif params.customGymLeaderOption == ALWAYS_SELECT and custom_leaders_available then
                    pokeballsList = { customLeadersArr[2] }
                end

                -- Determine the gen.
                if params.leadersGen == -3 then
                    gen = gen_options[math.random(1, #gen_options)]
                else
                    gen = math.random(1, #pokeballsList)
                end

                local elite4Pokeball = getObjectFromGUID(pokeballsList[gen])
                if (#pokeballsList == 1 and pokeballsList[1] == customLeadersArr[2]) or map_lookup_table[gen] == "Orange Islands" then
                    gen = "custom"
                end
                local leader = nil
                if elite4Pokeball.hasTag("MultipleGymLeaders") then
                    local random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen, tier=9, retrievedList=leadersRetrieved})
                    elite4Pokeball = getObjectFromGUID(pokeballsList[random_leader_params.leader_gen])
                    leader = elite4Pokeball.takeObject({ guid = random_leader_params.guid })
                else
                    elite4Pokeball.shuffle()
                    leader = elite4Pokeball.takeObject({})
                end
                elite4Gym.putObject(leader)
                elite4Gym.call("setLeaderGUID", { leader.guid })

                -- Add this to the leaders we have already retrieved list.
                table.insert(leadersRetrieved, leader.guid)
            end
        end

        -- Initialize the Rivals pokeballs list and gym object.
        local rivalPokeballs = { gen1LeadersArr[3], gen2LeadersArr[3], gen3LeadersArr[3], gen4LeadersArr[3], gen5LeadersArr[3], gen6LeadersArr[3], gen7LeadersArr[3], gen8LeadersArr[3], gen9LeadersArr[3], genRanseiLeadersArr[3], genHisuiLeadersArr[3] }
        local rivalGym = getObjectFromGUID(rivalGymGuid)
        for i = 1, 3 do
            -- Check if we need to consider custom Rivals.
            local pokeballsList = shallowCopy(rivalPokeballs)
            local custom_leaders_available = customs_available(customLeadersArr[3], 10, leadersRetrieved)
            if params.customGymLeaderOption == ALLOW_SELECT and custom_leaders_available then
                table.insert(pokeballsList, customLeadersArr[3])
            elseif params.customGymLeaderOption == ALWAYS_SELECT and custom_leaders_available then
                pokeballsList = { customLeadersArr[3] }
            end

            -- Determine the gen.
            if params.leadersGen == -3 then
                gen = gen_options[math.random(1, #gen_options)]
            else
                gen = math.random(1, #pokeballsList)
            end

            local rivalPokeball = getObjectFromGUID(pokeballsList[gen])
            if (#pokeballsList == 1 and pokeballsList[1] == customLeadersArr[3]) or map_lookup_table[gen] == "Orange Islands" then
                gen = "custom"
            end
            local leader = nil
            if rivalPokeball.hasTag("MultipleGymLeaders") then
                local random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen, tier=10, retrievedList=leadersRetrieved})
                rivalPokeball = getObjectFromGUID(pokeballsList[random_leader_params.leader_gen])
                leader = rivalPokeball.takeObject({ guid = random_leader_params.guid })
            else
                rivalPokeball.shuffle()
                leader = rivalPokeball.takeObject({})
            end
            rivalGym.putObject(leader)
            rivalGym.call("setLeaderGUID", { leader.guid })

            -- Add this to the leaders we have already retrieved list.
            table.insert(leadersRetrieved, leader.guid)
        end

        -- Initialize the Team Rocket pokeballs list.
        local teamRocketPokeballs = { gen1LeadersArr[4], gen2LeadersArr[4], gen3LeadersArr[4], gen4LeadersArr[4], gen5LeadersArr[4], gen6LeadersArr[4], gen7LeadersArr[4], gen8LeadersArr[4], gen9LeadersArr[4], genRanseiLeadersArr[4], genHisuiLeadersArr[4] }

        -- Check if we need to consider custom Team Rockets.
        local custom_leaders_available = customs_available(customLeadersArr[4], 11, leadersRetrieved)
        if params.customGymLeaderOption == ALLOW_SELECT and custom_leaders_available then
            table.insert(teamRocketPokeballs, customLeadersArr[4])
        elseif params.customGymLeaderOption == ALWAYS_SELECT and custom_leaders_available then
            teamRocketPokeballs = { customLeadersArr[4] }
        end
        
        -- Determine the gen.
        if params.leadersGen == -3 then
            gen = gen_options[math.random(1, #gen_options)]
        else
            gen = math.random(1, #teamRocketPokeballs)
        end

        -- Get the Team Rocket card.
        local teamRocketGym = getObjectFromGUID(teamRocketGymGuid)
        local teamRocketPokeball = getObjectFromGUID(teamRocketPokeballs[gen])
        if (#teamRocketPokeballs == 1 and teamRocketPokeballs[1] == customLeadersArr[4]) or map_lookup_table[gen] == "Orange Islands" then
            gen = "custom"
        end
        local random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen, tier=11, retrievedList=leadersRetrieved})       -- 11 signifes Team Rocket.
        teamRocketPokeball = getObjectFromGUID(teamRocketPokeballs[random_leader_params.leader_gen])
        local teamRocketLeader = teamRocketPokeball.takeObject({ guid = random_leader_params.guid })
        teamRocketGym.putObject(teamRocketLeader)
        teamRocketGym.call("setLeaderGUID", { teamRocketLeader.guid })

        -- Add this to the leaders we have already retrieved list.
        table.insert(leadersRetrieved, teamRocketLeader.guid)
    elseif params.leadersGen == -2 then
        -- Chaos: ENGAGE.

        -- Gens 1-8.
        for i = 1, 8 do
            local gym = getObjectFromGUID(gyms[i])
            gym.call("setLeaderGUID", { "CHAOS" })
        end

        -- Elite 4.
        local elite4Gym = getObjectFromGUID(elite4GymGuid)
        elite4Gym.call("setLeaderGUID", { "CHAOS" })

        -- Rival.
        local rivalGym = getObjectFromGUID(rivalGymGuid)
        rivalGym.call("setLeaderGUID", { "CHAOS" })

        -- Team Rocket.
        local teamRocketGym = getObjectFromGUID(teamRocketGymGuid)
        teamRocketGym.call("setLeaderGUID", { "CHAOS" })
    end

    if params.randomStarters then
        self.editButton({index=0, position={0, 1000, 0}})
        Wait.condition(onSetupFinished, function() return not self.spawning and not self.loading_custom end)
    else
        -- Remove the settings button and change it to a Start Game button.
        self.removeButton(0)
        self.createButton({ --Apply settings button
            label = "Start Game",
            click_function = "start",
            function_owner = self,
            tooltip = "Click to start game. Only click this when every player has a starter Pokémon.",
            position = buttonRelativePosition,
            rotation = { 0, 0, 0 },
            height = 600,
            width = 2000,
            font_size = 300,
        })

        -- Update the setup_done flag.
        setup_done = true
    end

    -- If set, remove the unused player objects (racks, dice bags, tokens, etc.)
    if params.remove_non_player_items then
        for index=1, #colors_loop do
            if Player[colors_loop[index]].steam_name == nil then
                -- Remove this color's items.
                -- Dice.
                local dice_obj = getObjectFromGUID(dice_guids[index])
                if dice_obj then 
                    destroyObject(dice_obj) 
                else
                    print("WARNING: failed to delete item for color: " .. tostring(colors_loop[index]))
                end
                -- Trainer Token.
                local trainer_token_obj = getObjectFromGUID(trainer_token_guids[index])
                if trainer_token_obj then 
                    destroyObject(trainer_token_obj) 
                else
                    print("WARNING: failed to delete item for color: " .. tostring(colors_loop[index]))
                end
                -- City Token.
                local city_token_obj = getObjectFromGUID(city_token_guids[index])
                if city_token_obj then 
                    destroyObject(city_token_obj) 
                else
                    print("WARNING: failed to delete item for color: " .. tostring(colors_loop[index]))
                end
                -- Pokecoin Counter.
                local pokecoin_counter_obj = getObjectFromGUID(pokecoin_counter_guids[index])
                if pokecoin_counter_obj then 
                    destroyObject(pokecoin_counter_obj) 
                else
                    print("WARNING: failed to delete item for color: " .. tostring(colors_loop[index]))
                end
                -- Stupid Things.
                local stupid_thing_obj = getObjectFromGUID(stupid_thing_guids[index])
                if stupid_thing_obj then 
                    destroyObject(stupid_thing_obj) 
                else
                    print("WARNING: failed to delete item for color: " .. tostring(colors_loop[index]))
                end
                -- Racks.
                local rack_obj = getObjectFromGUID(rack_guids[index])
                if rack_obj then 
                    destroyObject(rack_obj) 
                else
                    print("WARNING: failed to delete item for color: " .. tostring(colors_loop[index]))
                end
            end
        end

        -- Check for a few items that are only removed if two colors are both unoccupied.
        if Player["Yellow"].steam_name == nil and Player["Green"].steam_name == nil then
            -- Status Token bag.
            local obj = getObjectFromGUID(yellow_green_status_token_bag_guid)
            if obj then 
                destroyObject(obj) 
            else
                print("WARNING: failed to delete the Yellow/Green Status Token bag")
            end
            -- Rule Book.
            local obj = getObjectFromGUID(yellow_green_rule_book_guid)
            if obj then 
                destroyObject(obj) 
            else
                print("WARNING: failed to delete the Yellow/Green Rule Book")
            end
        end
        if Player["Red"].steam_name == nil and Player["Blue"].steam_name == nil then
            -- Status Token bag.
            local obj = getObjectFromGUID(red_blue_status_token_bag_guid)
            if obj then 
                destroyObject(obj) 
            else
                print("WARNING: failed to delete the Red/Blue Status Token bag")
            end
            -- Rule Book.
            local obj = getObjectFromGUID(red_blue_rule_book_guid)
            if obj then 
                destroyObject(obj) 
            else
                print("WARNING: failed to delete the Red/Blue Rule Book")
            end
        end
        if Player["Purple"].steam_name == nil and Player["Orange"].steam_name == nil then
            -- Status Token bag.
            local obj = getObjectFromGUID(purple_orange_status_token_bag_guid)
            if obj then 
                destroyObject(obj) 
            else
                print("WARNING: failed to delete the Purple/Orange Status Token bag")
            end
            -- Rule Book.
            local obj = getObjectFromGUID(purple_orange_rule_book_guid)
            if obj then 
                destroyObject(obj) 
            else
                print("WARNING: failed to delete the Purple/Orange Rule Book")
            end
        end
    end
end

function moveBeastPokemon()
    -- Get a handle on the Beast Pokeball.
    local beastPokeball = getObjectFromGUID(pokeballs[8])
    if not beastPokeball then
        print("Failed to find Beast Pokéball object")
        return
    end

    -- Gen VII Red & Legendary has Beast Pokemon.

    -- Get a handle on the Red Pokeball.
    local redGen7Pokeball = getObjectFromGUID(gen7Pokeballs[6])
    if not redGen7Pokeball then
        print("Failed to find Red Gen VII Pokéball object")
        return
    end
    -- Take the Pokemon we need.
    for index=1, #beastGuidTable.red do
        local pokemon_token = redGen7Pokeball.takeObject({guid=beastGuidTable.red[index]})
        if pokemon_token then
            -- Change this Pokemon's state so he does not have a Red back.
            pokemon_token = pokemon_token.setState(2)
            beastPokeball.putObject(pokemon_token)
        end
    end

    -- Get a handle on the Legendary Pokeball.
    local legendaryGen7Pokeball = getObjectFromGUID(gen7Pokeballs[7])
    if not legendaryGen7Pokeball then
        print("Failed to find Legendary Gen VII Pokéball object")
        return
    end
    -- Take the Pokemon we need.
    for index=1, #beastGuidTable.legendary do
        local pokemon_token = legendaryGen7Pokeball.takeObject({guid=beastGuidTable.legendary[index]})
        if pokemon_token then
            -- Change this Pokemon's state so he does not have a Red back.
            pokemon_token = pokemon_token.setState(2)
            beastPokeball.putObject(pokemon_token)
        end
    end
end

-- Table containing the GUIDs of all Beast Pokemon.
beastGuidTable = {
    red = {
        "6cadb0"
    },
    legendary = {
        "e53d16",
        "b97547",
        "c291b1",
        "6b596f",
        "6b8a57",
        "ed1c1b",
        "38816d",
        "4d5ae0",
        "94790b",
        "1446e4"
    }
}

function get_ransei_badge_tint(gym_index)
    if gym_index == 1 then
        return {31/255, 95/255, 37/255}
    elseif gym_index == 2 then
        return {119/255, 153/255, 76/255}
    elseif gym_index == 3 then
        return {154/255, 140/255, 93/255}
    elseif gym_index == 4 then
        return {71/255, 78/255, 105/255}
    elseif gym_index == 5 then
        return {193/255, 190/255, 181/255}
    elseif gym_index == 6 then
        return {89/255, 163/255, 191/255}
    elseif gym_index == 7 then
        return {70/255, 69/255, 76/255}
    elseif gym_index == 8 then
        return {83/255, 10/255, 115/255}
    end

    print("WARNING: received gym index " .. tostring(gym_index) .. " in get_ransei_badge_tint()")
    return "White"
end

function setup_map(selected_map_name, leadersGen, pokemonGens, levelIncreaseSet)
    -- Get a handle on the Map Manager.
    local map_manager = getObjectFromGUID(mapManagerGuid)
    if not map_manager then
        printToAll("ERROR: Cannot find the Map Manager :(. Reload the mod.", "Red")
        return
    end

    -- Get the map data from the Map Manager.
    local map_data = map_manager.call("get_map_data_for_region", selected_map_name)
    if not map_data then
        printToAll("Selected map has not been implemented yet: " .. tostring(selected_map_name) .. ". Reload the mod.", "Red")
        return
    end

    -- Snappoints.
    if map_data.snaps then
        Global.setSnapPoints(map_data.snaps)
    else
        printToAll("WARNING: no snappoint data found for " .. selected_map_name)
    end

    -- Board Pokemon.
    local unusedBoardPokeball = getObjectFromGUID("a09162")
    if unusedBoardPokeball then
        if map_data.board_pokemon then
            for pokemon_i=1, #map_data.board_pokemon do
                local board_pokemon_data = copyTable(map_data.board_pokemon[pokemon_i])
                local token = unusedBoardPokeball.takeObject({ guid = board_pokemon_data.guid, position = board_pokemon_data.position, rotation = {0, 180, 0} })
            end
        end
    end

    -- Initialize Tier 1-8 Pokeballs with Kanto locations.
    -- NOTE: pokeball_index starts at 2 to skip over the Starter Pokeball object.
    for pokeball_index=2, #pokeballs do
        local pokeball = getObjectFromGUID(pokeballs[pokeball_index])
        if pokeball then
            -- The -1 offset here is because the Map Manager does not consider the Starter Pokeball being a part of this.
            pokeball.call("initialize", map_data.kanto_locations[pokeball_index-1])
        end
    end

    -- Get a handle on the pokeball with the standard items that are common to every map.
    local standard_items_pokeball = getObjectFromGUID(standard_guid)

    -- Get the badge info for this gen. The format is {name, url}.
    local badge_info = map_data.badge_info

    -- Initialize a list of Gym Leaders retrieved (typically 0, but Alola is weird).
    local leaders_retrieved = {}

    -- Get a reference to the map specific pokeball.
    local map_specific_pokeball = getObjectFromGUID(map_specific_guid)
    if not map_specific_pokeball then
        print("Could not find the Map Specific Pokéball")
        return
    end

    -- Move the Map Specific Items.
    for map_sepecfic_index=1, #map_data.map_specific_items do
        local params = copyTable(map_data.map_specific_items[map_sepecfic_index])
        local object_reference = map_specific_pokeball.takeObject({guid = params.guid, position = params.position, rotation = params.rotation})
        object_reference.setLock(true)

        -- TODO: This functionality does not consider customs.
        -- Check if this map specific item is a secondary gym.
        if params.is_gym then
            if leadersGen == -2 then
                -- Initialize the Gym once it is stationary. Chaos.
                Wait.condition(
                    function() -- Conditional function.
                        local gym_object = getObjectFromGUID(params.guid)
                        if params.gym_tier == 12 then
                            gym_object.call("setTitanGUID", { "CHAOS" })
                        else
                            gym_object.call("setLeaderGUID", { "CHAOS" })
                        end
                    end,
                    function() -- Condition function
                        local gym_object = getObjectFromGUID(params.guid)
                        return gym_object ~= nil and gym_object.resting
                    end,
                    8
                )
            elseif params.gym_tier == 12 then
                --------------
                -- Titan.
                --------------

                -- Init some variables.
                local leader_guid = nil
                local gymPokeball = getObjectFromGUID("101621")

                -- Each Titan has a home. The Asado Desert area has two Titans so we will just grab one of the two.
                if params.guid == "6cf441" then
                    -- West Province.
                    leader_guid = "07a6ab"
                elseif params.guid == "6adbc2" then
                    -- Asado Desert.
                    local guid_options = { "ad1ecd", "a48265" }
                    leader_guid = guid_options[math.random(#guid_options)]
                elseif params.guid == "35cbfe" then
                    -- Casseroya Lake.
                    leader_guid = "3795a8"
                elseif params.guid == "81f7a4" then
                    -- South Province.
                    leader_guid = "7564fb"
                elseif params.guid == "d49f3a" then
                    -- East Province.
                    leader_guid = "68b218"
                end

                object_reference.putObject(gymPokeball.takeObject({ guid = leader_guid }))
    
                -- Add this to the leaders we have already retrieved list.
                table.insert(leaders_retrieved, leader_guid)

                -- Initialize the Gym once it is stationary.
                Wait.condition(
                    function() -- Conditional function.
                        local gym_object = getObjectFromGUID(params.guid)
                        gym_object.call("setTitanGUID", { leader_guid })
                    end,
                    function() -- Condition function
                        local gym_object = getObjectFromGUID(params.guid)
                        return gym_object ~= nil and gym_object.resting
                    end,
                    8
                )
            elseif selected_map_name == "Ransei" and map_lookup_table[leadersGen] == "Ransei" then
                --------------
                -- Special Ransei Gym Leaders.
                --------------

                -- Init some variables.
                local leader_guid = nil
                local gymPokeball = getObjectFromGUID("c4a729")

                -- There are three tier-1 and two tier-5 gyms in Ransei. Make sure they all get the correct home.
                if params.guid == "40bf4b" then
                    -- Fontaine. Tier 1.
                    leader_guid = "a49a60"
                elseif params.guid == "67ac73" then
                    -- Ignis. Tier 1.
                    leader_guid = "68b3fc"
                elseif params.guid == "48aa90" then
                    -- Viperia. Tier 5.
                    leader_guid = "9247d1"
                end

                object_reference.putObject(gymPokeball.takeObject({ guid = leader_guid }))

                -- Add this to the leaders we have already retrieved list.
                table.insert(leaders_retrieved, leader_guid)

                -- Initialize the Gym once it is stationary.
                Wait.condition(
                    function() -- Conditional function.
                        local gym_object = getObjectFromGUID(params.guid)
                        gym_object.call("setLeaderGUID", { leader_guid })
                    end,
                    function() -- Condition function
                        local gym_object = getObjectFromGUID(params.guid)
                        return gym_object ~= nil and gym_object.resting
                    end,
                    8
                )
            elseif selected_map_name == "Hisui" and map_lookup_table[leadersGen] == "Hisui" then
                --------------
                -- Special Hisui Gym Leaders.
                --------------
                
                -- Init some variables.
                local leader_guid = nil
                local gymPokeball = getObjectFromGUID("76b037")

                -- There are two tier-1, two tier-4 and two Team Rocket gyms in Hisui. 
                -- Make sure they get the correct home. In the case of Team Rocket, the order does not matter.
                if params.guid == "215aa8" then
                    -- Grandtree Arena. Tier 1.
                    leader_guid = "c03171"
                elseif params.guid == "431cce" then
                    -- Sand's Reach. Tier 4.
                    leader_guid = "064893"
                elseif params.guid == "30b80c" then
                    -- Sand's Reach Team Rocket. Tier 4.
                    local leaders_options = {"e845b1", "e2cd5b"}
                    leader_guid = leaders_options[math.random(1, #leaders_options)]
                    gymPokeball = getObjectFromGUID("e0ad1f")
                end

                object_reference.putObject(gymPokeball.takeObject({ guid = leader_guid }))

                -- Add this to the leaders we have already retrieved list.
                table.insert(leaders_retrieved, leader_guid)

                -- Initialize the Gym once it is stationary.
                Wait.condition(
                    function() -- Conditional function.
                        local gym_object = getObjectFromGUID(params.guid)
                        gym_object.call("setLeaderGUID", { leader_guid })
                    end,
                    function() -- Condition function
                        local gym_object = getObjectFromGUID(params.guid)
                        return gym_object ~= nil and gym_object.resting
                    end,
                    8
                )
            else
                -- Init the gen.
                local gen_to_use = nil
                local gen_options = {1, 2, 3, 4, 5, 6, 7, 8, 9}

                -- If the gen is -3 this means to Gen Match the Gym Leaders with the chosen Pokemon Generations.
                -- If we are doing Gen match, we just need to remove a few from the gymPokeballs list.
                if leadersGen == -3 then
                    -- Loop through the selectedGens table backwards removing any false indicies from the gymPokeballs table.
                    for gen_i = #pokemonGens, 1, -1 do
                        if not pokemonGens[gen_i] then
                            table.remove(gen_options, gen_i)
                        end
                    end
                end

                -- Random or Gen Match.
                if leadersGen == -1 or leadersGen == -3 then
                    gen_to_use = gen_options[math.random(1, #gen_options)]
                else
                    gen_to_use = leadersGen
                end

                -- Determine which pokeballs list to use.
                local leader_pokeballs = nil
                if params.gym_tier >= 1 and params.gym_tier <= 8 then
                    -- Normal gym.
                    leader_pokeballs = genLeadersPokeballGuids
                elseif params.gym_tier == 11 then
                    -- Team Rocket.
                    leader_pokeballs = genTeamRocketPokeballGuids
                else
                    -- Unhandled
                    print("ERROR unhandled map specific gym_tier parameter in Starter Pokeball: " .. tostring(params.gym_tier))
                    return
                end

                -- Get a GUID for a random leader of this gen.
                local random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen_to_use, tier=params.gym_tier, retrievedList=leaders_retrieved})
                local gymPokeball = getObjectFromGUID(leader_pokeballs[random_leader_params.leader_gen])
                object_reference.putObject(gymPokeball.takeObject({ guid = random_leader_params.guid }))
    
                -- Add this to the leaders we have already retrieved list.
                table.insert(leaders_retrieved, random_leader_params.guid)

                -- Initialize the Gym once it is stationary.
                Wait.condition(
                    function() -- Conditional function.
                        local gym_object = getObjectFromGUID(params.guid)
                        gym_object.call("setLeaderGUID", { random_leader_params.guid })
                    end,
                    function() -- Condition function
                        local gym_object = getObjectFromGUID(params.guid)
                        return gym_object ~= nil and gym_object.resting
                    end,
                    8
                )
            end
        end
    end

    -- Initialize and move the tier 1-8 gyms.
    for gym_index=1, #gyms do
        local gym_info = copyTable(map_data.gyms_info[gym_index])
        local gym = getObjectFromGUID(gyms[gym_index])
        -- gym_info == false indicates to skip this Gym. This only applies to Orange Islands.
        if gym and gym_info[1] ~= false and badge_info[1] ~= false then
            -- Determine what custom object to spawn based on the map chosen. Figurines are scaled to {1.13, ...}.
            local custom_type = "Custom_Tile"
            local custom_scale = {1.0, 1.0, 1.0}
            if selected_map_name == "Ransei" then
                custom_type = "Figurine_Custom"
                custom_scale = {1.13, 1.13, 1.13}
            elseif selected_map_name == "Alola" and gym_index % 2 == 1 then
                custom_scale = {0.8, 1.0, 1.0}
            end

            -- Spawn a base object.
            local badge = spawnObject(
                {
                    type = custom_type,
                    position = {0, 10, 0},
                    rotation = {0, 180, 0},
                    scale = custom_scale,
                    sound = false
                }
            )

            -- Give the base card its custom parameters.
            if selected_map_name ~= "Ransei" then
                -- Custom Tile.
                badge.setCustomObject(
                    {
                        type = 2,  -- Circle.
                        image = badge_info[gym_index].url,
                        image_bottom = badge_info[gym_index].url,
                        thickness = 0.1,
                        stackable = false,
                    }
                )
            else
                -- Custome Figurine.
                badge.setCustomObject(
                    {
                        image = badge_info[gym_index].url,
                        image_secondary = badge_info[gym_index].url,
                    }
                )

                -- Apply custom badge tint.
                badge.setColorTint(get_ransei_badge_tint(gym_index))
            end

            -- Name the badge.
            badge.setName(badge_info[gym_index].name)

            -- Apply the "Badge" tag to the original.
            badge.addTag("Badge")
            
            -- Clone the badge 5 times and put all clones into the gym.
            for badge_index = 1, 5 do
                local cloned_badge = badge.clone()
                gym.putObject(cloned_badge)
            end

            -- Put the original badge into the gym.
            gym.putObject(badge)
            
            -- Move the gym to its destination.
            move_gym_and_set_name({obj = gym, name = gym_info.name, position = gym_info.position, rotation = gym_info.rotation})
            gym.call("initialize", gym_info.button_pos)
        elseif not gym then
            print("ERROR: Could not find gym #" .. tostring(gym_index))
        end
    end

    -- Initialize the Elite 4 gym.
    local elite4Gym = getObjectFromGUID(elite4GymGuid)
    local elite4_info = copyTable(map_data.gyms_info[9])
    -- elite4_info == false indicates to skip this Gym. This only applies to Orange Islands.
    if elite4Gym and elite4_info[1] ~= false then
        move_gym_and_set_name({obj = elite4Gym, position = elite4_info.position, rotation = elite4_info.rotation})
        elite4Gym.call("initialize", elite4_info.button_pos)
    elseif not elite4Gym then
        print("ERROR: Could not find Elite 4 Gym")
    end

    -- Initialize the Rival/Champion gym.
    local rivalGym = getObjectFromGUID(rivalGymGuid)
    local rival_info = copyTable(map_data.gyms_info[10])
    -- rival_info == false indicates to skip this Gym. This only applies to Orange Islands.
    if rivalGym and rival_info[1] ~= false then
        move_gym_and_set_name({obj = rivalGym, position = rival_info.position, rotation = rival_info.rotation})
        rivalGym.call("initialize", { gym_button_position = rival_info.button_pos, victory_button_pos = rival_info.victory_button_pos })
    elseif not rivalGym then
        print("ERROR: Could not find Rival Gym")
    end

    -- Initialize the Team Rocket gym.
    local teamRocketGym = getObjectFromGUID(teamRocketGymGuid)
    local rocket_info = copyTable(map_data.gyms_info[11])
    -- rocket_info == false indicates to skip this Gym. This only applies to Orange Islands.
    if teamRocketGym and rocket_info[1] ~= false then
        move_gym_and_set_name({obj = teamRocketGym, name = rocket_info.name, position = rocket_info.position, rotation = rocket_info.rotation})
        teamRocketGym.call("initialize", { gym_button_position = rocket_info.button_pos, gym_name = rocket_info.name })
    elseif not teamRocketGym then
        print("ERROR: Could not find Team Rocket Gym")
    end

    -- Initialize the racks.
    local rack_guid_param = {}
    for rack_index=1, #initial_rack_guids do
        -- Get the rack by its initial GUID.
        local rack = getObjectFromGUID(initial_rack_guids[rack_index])

        -- Set the correct URL on the rack.
        local image_url = rack_urls[selected_map_name][rack_index]
        rack.setCustomObject(
            {
                type = 0,   -- Square
                image = image_url,
                image_bottom = image_url,
                thickness = 0.20,
                stackable = false
            }
        )
        local new_obj = rack.reload()

        -- Append the new GUID to the rack GUID param we are sending to the Battle Manager.
        table.insert(rack_guid_param, new_obj.getGUID())
    end

    -- Update rack_guids for removal (in case we are auto-removing items).
    rack_guids = copyTable(rack_guid_param)

    -- Tell the BattleManager what the rack GUIDs are.
    local battle_manager = getObjectFromGUID("de7152")
    battle_manager.call("initialize", rack_guid_param)

    -- Loop through the decks that we are building.
    local deckBuilder = getObjectFromGUID(deckBuilderGuid)
    if deckBuilder then
        for build_deck_index=1, #map_data.created_decks do
            -- Build the card decks.
            local params = copyTable(map_data.created_decks[build_deck_index])
            deckBuilder.call(
                "build_card_deck",
                {
                    map = selected_map_name,
                    type = params.type,
                    position = params.position,
                    rotation = params.rotation
                }
            )
        end
    else
        printToAll("Error: cannot find DeckBuilder object")
    end

    -- Loop through the decks.
    -- Deck order: Pokeballs, Shop Items, Boost Items, Item Cards, Event Cards, Z-Crystals, Type Boosters, Tera Types, TM Cards
    for deck_index=1, #map_data.deck_locations do
        -- Get the params.
        local params = copyTable(map_data.deck_locations[deck_index])
        -- Move the deck.
        local deck_obj = standard_items_pokeball.takeObject({guid=params.guid})

        -- Shuffle the deck. The shop items don't really need to be shuffled but oh well.
        deck_obj.shuffle()

        -- Move the deck to its destination.
        deck_obj.setPosition(params.position)
        deck_obj.setRotation(params.rotation)
    end

    -- Unova has decks off the base table area. So we need to populate some empty text strings for its decks.
    if selected_map_name == "Unova" then
        -- Z-Crystal Deck.
        local z_crystal_deck = getObjectFromGUID("e01b2d")
        if z_crystal_deck then
            z_crystal_deck.TextTool.setValue("Z-Crystals")
        end
        -- Type Boosters Deck.
        local type_enhancers_deck = getObjectFromGUID("012b94")
        if type_enhancers_deck then
            type_enhancers_deck.TextTool.setValue("Type Boosters")
        end
        -- Tera Types Deck.
        local tera_types_deck = getObjectFromGUID("b37916")
        if tera_types_deck then
            tera_types_deck.TextTool.setValue("Tera Types")
        end
    end

    -- Move counters.
    local def_counter = standard_items_pokeball.takeObject({guid=def_counter_guid, position={-30, 0.4, 10.72}, rotation={0,0,0}})
    def_counter.setLock(true)
    local atk_counter = standard_items_pokeball.takeObject({guid=atk_counter_guid, position={-30, 0.4, -10.72}, rotation={0,0,0}})
    atk_counter.setLock(true)

    -- Populate the "Arena" text.
    local arenaText = getObjectFromGUID(arena_text_guid)
    if arenaText then
        arenaText.TextTool.setValue("ARENA")
    end

    -- Move the additional items in the standard items list.
    for standard_index=1, #map_data.standard_items do
        local params = copyTable(map_data.standard_items[standard_index])
        local object_reference = standard_items_pokeball.takeObject(params)
        object_reference.setLock(true)
    end

    -- Check if HP Rule 2 is enabled.
    if Global.call("getHpRule2Set") then
        -- Take out the original health indicator object.
        local original_health_indicator = standard_items_pokeball.takeObject({guid=BASE_HEALTH_OBJECT_GUID})

        -- If HP Rule 2 is on, loop through the new Rack GUIDs and give them cloned Health Indicators.
        for rack_guid_index=1, #rack_guid_param do
            -- Get a handle on the rack objects.
            local rack = getObjectFromGUID(rack_guid_param[rack_guid_index])
            if rack then
                -- Wait until the rack loads.
                Wait.condition(
                    function() -- Conditional function.
                        -- Get the Health Indicator Positions.
                        local rack_indicator_positions = rack.call("getHealthIndicatorsLocations")
                
                        -- Clone the original Health Indicator object 6 times and place it into each Rack's locations.
                        local health_indicator_guids = {}
                        for i=1, 6 do
                            -- Clone the health indicator object at position.
                            local clone_coords = copyTable(rack_indicator_positions[i])
                            local cloned_health_indicator = original_health_indicator.clone()
                            cloned_health_indicator.setPosition(clone_coords.position)
                            cloned_health_indicator.setRotation(clone_coords.rotation)

                            -- Lock the indicators.
                            Wait.condition(
                                function()
                                    cloned_health_indicator.setLock(true)
                                end,
                                function()
                                    return cloned_health_indicator.resting
                                end,
                                5
                            )
                
                            -- Add the cloned object GUID to the GUID list.
                            table.insert(health_indicator_guids, cloned_health_indicator.guid)
                        end
                
                        -- Call setHealthIndicatorsGuids on the rack.
                        rack.call("setHealthIndicatorsGuids", health_indicator_guids)
                    end,
                    function() -- Condition function
                        return (not rack.loading_custom)
                    end,
                    20,
                    function() -- Timeout function.
                        -- Failed.
                        printToAll("Failed to find retrieve rack HP Health Indicator positions from rack with GUID " .. tostring(rack.guid), "Red")
                    end
                )
            end
        end

        -- Move the original Health Indicator into the sky out of sight.
        original_health_indicator.setPosition({97.46, 2.38, 70.17})
        original_health_indicator.interactable = false
        original_health_indicator.setLock(true)
    end

    -- Return the Gym Leaders already taken from the pool (if any).
    return leaders_retrieved
end

-- Helper function to name a gym, move and rotate it to its desired location.
function move_gym_and_set_name(params)
    if params.name then
        params.obj.setName(params.name)
    end
    params.obj.setPosition(params.position)
    params.obj.setRotation(params.rotation)
    params.obj.setLock(true)
end

-- Helper function that checks if there are custom Gym Leaders available for a particular tier that have not already been selected.
function customs_available(pokeballGuid, tier, retrievedList)
    local targetPokeball = getObjectFromGUID(pokeballGuid)
    if #targetPokeball.getObjects() == 0 then return false end
    return Global.call("GetCustomLeaderCount", {gen="custom", tier=tier, retrievedList=retrievedList}) ~= 0
end

function onSetupFinished()
    print('Ready!')
    
    --self.deal(1)

    self.shuffle()
    local dealOneAndStart = 
        function() 
            self.deal(1) 
            start()
        end
    Wait.time(dealOneAndStart, 1)
end

-- Moves tokens from one group of Pokeballs to another group of Pokeballs
function setupPokeballs(pokeballArr, targetPokeballArr)
    for i = 1, #pokeballArr do
        local pokeball = getObjectFromGUID(pokeballArr[i])
        local targetPokeball = getObjectFromGUID(targetPokeballArr[i])
        for j = 1, #pokeball.getObjects() do
            targetPokeball.putObject(pokeball.takeObject({}))
        end
    end
end

-- Moves gym leader cards into respective gyms
function setupGyms(leadersArr, gen, customGymLeaderOption, leadersRetrieved)
    -- Iniitalize some variables.
    local leader

    -- Loop through each gym.
    for i = 1, 8 do
        -- Orange Islands only uses a scheme where gym 1 is tiers 1/2, gym 3 is tiers 3/4, etc.
        if map_lookup_table[gen] ~= "Orange Islands" or i % 2 == 1 then
            -- Check if we need to consider custom Gym Leaders.
            local gymsPokeballs = { leadersArr[1] }
            local custom_leaders_available = customs_available(customLeadersArr[1], i, leadersRetrieved)
            if customGymLeaderOption == ALLOW_SELECT and custom_leaders_available then
                gymsPokeballs = { leadersArr[1], customLeadersArr[1] }
            elseif customGymLeaderOption == ALWAYS_SELECT and custom_leaders_available then
                gymsPokeballs = { customLeadersArr[1] }
            end

            -- gen_index will be either the generation that was selected or the custom gen.
            local gen_index = math.random(1, #gymsPokeballs)
            local gymsPokeball = getObjectFromGUID(gymsPokeballs[gen_index])
            local gen_to_use = gen
            if (#gymsPokeballs == 1 and gymsPokeballs[1] == customLeadersArr[1]) or gen_index == 2 then
                gen_to_use = "custom"
            end

            -- If this gym has multiple gym leader options per gym, we need to get creative about retrieving the correct gym.
            if gymsPokeball.hasTag("MultipleGymLeaders") then
                local random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen_to_use, tier=i, retrievedList=leadersRetrieved})
                leader = gymsPokeball.takeObject({ guid = random_leader_params.guid })
            else
                leader = gymsPokeball.takeObject({})
            end

            -- Move the card.
            local gym = getObjectFromGUID(gyms[i])
            gym.putObject(leader)
            gym.call("setLeaderGUID", { leader.guid })

            -- Add this to the leaders we have already retrieved list.
            table.insert(leadersRetrieved, leader.guid)
        end
    end

    -- Check if this gen has an Elite 4. Orange Islands does not have an Elite 4.
    if leadersArr[2] then
        local elite4Gym = getObjectFromGUID(elite4GymGuid)
        for i = 1, 4 do
            -- Check if we need to consider custom Gym Leaders.
            local gymsPokeballs = { leadersArr[2] }
            local custom_leaders_available = customs_available(customLeadersArr[2], 9, leadersRetrieved)
            if customGymLeaderOption == ALLOW_SELECT and custom_leaders_available then
                gymsPokeballs = { leadersArr[2], customLeadersArr[2] }
            elseif customGymLeaderOption == ALWAYS_SELECT and custom_leaders_available then
                gymsPokeballs = { customLeadersArr[2] }
            end
            
            -- gen_index will be either the generation that was selected or the custom gen.
            local gen_index = math.random(1, #gymsPokeballs)
            local elite4Pokeball = getObjectFromGUID(gymsPokeballs[gen_index])
            local gen_to_use = gen
            if (#gymsPokeballs == 1 and gymsPokeballs[1] == customLeadersArr[2]) or gen_index == 2 then
                gen_to_use = "custom"
            end

            -- If this gym has multiple gym leader options per gym, we need to get creative about retrieving the correct gym.
            if elite4Pokeball.hasTag("MultipleGymLeaders") then
                local random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen_to_use, tier=9, retrievedList=leadersRetrieved})
                leader = elite4Pokeball.takeObject({ guid = random_leader_params.guid })
            else
                leader = elite4Pokeball.takeObject({})
            end
            
            -- Move the card.
            elite4Gym.putObject(leader)
            elite4Gym.call("setLeaderGUID", { leader.guid })

            -- Add this to the leaders we have already retrieved list.
            table.insert(leadersRetrieved, leader.guid)
        end
    end

    local rivalGym = getObjectFromGUID(rivalGymGuid)
    for i = 1, 3 do
        -- Check if we need to consider custom Rivals.
        local gymsPokeballs = { leadersArr[3] }
        local custom_leaders_available = customs_available(customLeadersArr[3], 10, leadersRetrieved)
        if customGymLeaderOption == ALLOW_SELECT and custom_leaders_available then
            gymsPokeballs = { leadersArr[3], customLeadersArr[3] }
        elseif customGymLeaderOption == ALWAYS_SELECT and custom_leaders_available then
            gymsPokeballs = { customLeadersArr[3] }
        end
        
        -- gen_index will be either the generation that was selected or the custom gen.
        local gen_index = math.random(1, #gymsPokeballs)
        local rivalPokeball = getObjectFromGUID(gymsPokeballs[gen_index])
        local gen_to_use = gen
        if (#gymsPokeballs == 1 and gymsPokeballs[1] == customLeadersArr[3]) or gen_index == 2 then
            gen_to_use = "custom"
        end

        -- If this gym has multiple gym leader options per gym, we need to get creative about retrieving the correct gym.
        if rivalPokeball.hasTag("MultipleGymLeaders") then
            local random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen_to_use, tier=10, leadersRetrieved=leadersRetrieved})
            leader = rivalPokeball.takeObject({ guid = random_leader_params.guid })
        else
            leader = rivalPokeball.takeObject({})
        end

        -- Move the card.
        rivalGym.putObject(leader)
        rivalGym.call("setLeaderGUID", { leader.guid })

        -- Add this to the leaders we have already retrieved list.
        table.insert(leadersRetrieved, leader.guid)
    end

    -- Team Rocket.
    local silphCoGym = getObjectFromGUID(teamRocketGymGuid)

    -- Check if we need to consider custom Rivals.
    local gymsPokeballs = { leadersArr[4] }
    local custom_leaders_available = customs_available(customLeadersArr[4], 11, leadersRetrieved)
    if customGymLeaderOption == ALLOW_SELECT and custom_leaders_available then
        gymsPokeballs = { leadersArr[4], customLeadersArr[4] }
    elseif customGymLeaderOption == ALWAYS_SELECT and custom_leaders_available then
        gymsPokeballs = { customLeadersArr[4] }
    end

    -- gen_index will be either the generation that was selected or the custom gen.
    local gen_index = math.random(1, #gymsPokeballs)
    local silphCoPokeball = getObjectFromGUID(gymsPokeballs[gen_index])
    local gen_to_use = gen
    if (#gymsPokeballs == 1 and gymsPokeballs[1] == customLeadersArr[4]) or gen_index == 2 then
        gen_to_use = "custom"
    end

    local teamRocketLeader
    if silphCoPokeball.hasTag("MultipleGymLeaders") then
        local random_leader_params = Global.call("RandomGymGuidOfTier", {gen=gen_to_use, tier=11, retrievedList=leadersRetrieved}) -- 11 signifes Team Rocket.
        teamRocketLeader = silphCoPokeball.takeObject({ guid = random_leader_params.guid })
    else
        teamRocketLeader = silphCoPokeball.takeObject({})
    end
    silphCoGym.putObject(teamRocketLeader)
    silphCoGym.call("setLeaderGUID", { teamRocketLeader.guid })

    -- Add this to the leaders we have already retrieved list.
    table.insert(leadersRetrieved, teamRocketLeader.guid)
end

function start()
    local pinkPokeball = getObjectFromGUID("9c4411")
    local greenPokeball = getObjectFromGUID("c988ea")
    local bluePokeball = getObjectFromGUID("2cf16d")
    local yellowPokeball = getObjectFromGUID("986cb5")
    local redPokeball = getObjectFromGUID("f66036")
    local legendaryPokeball = getObjectFromGUID("e46f90")
    local beastPokeball = getObjectFromGUID("1feef7")

    if #self.getButtons() ~= 0 then
        self.removeButton(0)
    end

    local pinkPokeball = getObjectFromGUID("9c4411")
    -- Move Starter Pokémon to Pink Pokéball
    for _ = 1, #self.getObjects() do
        local starterPokemon = self.takeObject({})
        if starterPokemon.getDescription() == "Starter Only" then
            starterPokemon.destruct()
        else
            pinkPokeball.putObject(starterPokemon)
        end
    end

    -- Deal out all pokeballs
    local dealPink = function() pinkPokeball.call("begin") end
    local dealGreen = function() greenPokeball.call("begin") end
    local dealBlue = function() bluePokeball.call("begin") end
    local dealYellow = function() yellowPokeball.call("begin") end
    local dealRed = function() redPokeball.call("begin") end
    local dealLegendary = function() legendaryPokeball.call("begin") end
    local dealBeast = function() beastPokeball.call("begin") end
    local destroy = function() self.destruct() end

    Wait.time(dealPink, 2)
    Wait.time(dealGreen, 3)
    Wait.time(dealBlue, 4)
    Wait.time(dealYellow, 5)
    Wait.time(dealRed, 6)
    Wait.time(dealLegendary, 7)
    Wait.time(dealBeast, 8)
    Wait.time(destroy, 12)

    Global.call("PlayRouteMusic",{})
end

function settings()
    Global.call("PlayOpeningMusic",{})
    Global.call("ShowSettingsPopup",{})
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

-- Shallow-copy a table. If our data gets more complicated (nested tables, etc.) we will need a
-- deep copy instead.
function shallowCopy(orig_table)
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

function copyTable(original)
    local copy = {}
    for k, v in pairs(original) do
        if type(v) == "table" then
            v = copyTable(v)
        end
        copy[k] = v
    end
    return copy
end

-- Function used to snag evo tokens for Pokemon that we didn't explicitly include the gen of.
-- This is going to be such a pain in the ass.
function handle_evo_tokens(selected_gens)
    -- If we are including evey gen then we don't care about this at all.
    if selected_gens[1] and 
       selected_gens[2] and 
       selected_gens[3] and 
       selected_gens[4] and 
       selected_gens[5] and 
       selected_gens[6] and 
       selected_gens[7] and 
       selected_gens[8] and 
       selected_gens[9] then
        return
    end

    -- Walk evo chains across gens, seeding with selected gens and exploring chained-in gens once.
    local to_visit = {}
    local seen = {}
    for gen = 1, 9 do
        if selected_gens[gen] then
            table.insert(to_visit, gen)
            seen[gen] = true
        end
    end

    while #to_visit > 0 do
        local gen = table.remove(to_visit)

        -- Get the pokemon data for this gen.
        local gen_data = Global.call("getPokemonDataByGen", gen)
        if not gen_data then
            print("Failed to get gen data for gen " .. tostring(gen))
        else
            -- Loop through each Pokemon data entry in this gen.
            for index=1, #gen_data do
                -- Check if there is evoData.
                local evo_data = gen_data[index].evoData
                while evo_data ~= nil do
                    for evo_index=1, #evo_data do
                        local target_gen = evo_data[evo_index].gen
                        if not selected_gens[target_gen] then
                            for token_index=1, #(evo_data[evo_index].guids) do
                                -- Get the evo tokens required for this token, if any.
                                get_evo_token(target_gen, evo_data[evo_index].ball, evo_data[evo_index].guids[token_index])
                            end

                            -- Explore this gen once so we can pick up its downstream evoData (e.g., Megas).
                            if not seen[target_gen] then
                                seen[target_gen] = true
                                table.insert(to_visit, target_gen)
                            end
                        end
                    end

                    -- Get the next evoData.
                    evo_data = evo_data.evoData
                end
            end
        end
    end
end

-- Helper function used to get the evo tokens required for a particular token GUID.
-- Since a previous token for this same Pokemon may have already grabbed the required tokens,
-- this function should be error tolerant to an extent.
function get_evo_token(gen, ball_index, guid)
    -- Skip Fossil evo tokens in this flow.
    if ball_index == 8 then
        return false
    end

    -- Skip missing or non-standard ball indexes.
    if ball_index == nil then
        print("Cannot grab evo for guid " .. tostring(guid) .. "; please report this to the developers")
        return false
    end

    -- Only standard evo balls are used here.
    if ball_index < 1 or ball_index > #evoPokeballs then
        return false
    end

    -- Get the destination ball GUID.
    local evo_pokeball = getObjectFromGUID(evoPokeballs[ball_index])
    if not evo_pokeball then
        print("Failed to get evo Pokeball by ball index: " .. tostring(ball_index))
        return false
    end

    -- Get the token based on GUID, gen and ball index.
    local source_ball_guid = get_ball_guid(gen, ball_index)

    if source_ball_guid then
        -- Get a handle on the source Pokeball.
        local source_pokeball = getObjectFromGUID(source_ball_guid)
        if not source_pokeball then
            print("Failed to get source evo pokeball for gen/ball_index: " .. dump_table({gen, ball_index}))
            return false
        end

        -- Since takeObject() is dumb we have to check first that the token is still in there.
        if not check_token_is_in_pokeball(source_pokeball, guid) then
            return false
        end

        -- Take the token we care about and put it into the evo Pokeball. The token could already be gone.
        local token_obj = source_pokeball.takeObject({ guid = guid })
        if not token_obj then
            return false
        end

        -- Put the token into its destination.
        evo_pokeball.putObject(token_obj)
        return true
    else
        print("Failed to get ball GUID for gen/ball_index: " .. dump_table({gen, ball_index}))
    end
end

-- Helper function to get ball GUID based on the generation and ball index.
function get_ball_guid(gen, ball_index)
    local pokeballs = {}
    if gen == 1 then
        return gen1EvoPokeballs[ball_index]
    elseif gen == 2 then
        return gen2EvoPokeballs[ball_index]
    elseif gen == 3 then
        return gen3EvoPokeballs[ball_index]
    elseif gen == 4 then
        return gen4EvoPokeballs[ball_index]
    elseif gen == 5 then
        return gen5EvoPokeballs[ball_index]
    elseif gen == 6 then
        return gen6EvoPokeballs[ball_index]
    elseif gen == 7 then
        return gen7EvoPokeballs[ball_index]
    elseif gen == 8 then
        return gen8EvoPokeballs[ball_index]
    elseif gen == 9 then
        return gen9EvoPokeballs[ball_index]
    end

    print("Failed to get pokeballs GUID list for gen " .. tostring(gen))
    return nil
end

-- Helper function to check if a token is in a bag. We have to do this because takeObject() is not fault-tolerant.
function check_token_is_in_pokeball(pokeball, token_guid)
    local objects_in_bag = pokeball.getObjects()  -- returns a table of objects (each has .guid)
    for _, obj in ipairs(objects_in_bag) do
        if obj.guid == token_guid then
            return true
        end
    end
    return false
end
