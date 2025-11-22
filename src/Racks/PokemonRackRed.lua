--------------------------------------------------------------------------------
-- Rack Data
--------------------------------------------------------------------------------
local playerColour = "Red"

local diceBagGUID = "3c7dbc"
local figureGUID = "c036ba"
RECORD_KEEPER_GUID = "ab319d"

local evolveRotation = 180

local xRotSend = 0
local yRotSend = 0
local zRotSend = 0
local xRotRecall = 0
local yRotRecall = 0
local zRotRecall = 0

local rackPosition = {x=21.50,y=0.14,z=-48.00}

--------------------------------------------------------------------------------
-- Generic Data
--------------------------------------------------------------------------------
local battleManager = "de7152"

local autoCamera = false

-- Positions
local badgesXPos = {0.15, -0.15, -0.35, -0.65, -0.85, -1.15, -1.35, -1.65}
local pokemonXPos = {1.475,0.885,0.295,-0.295,-0.885,-1.475}
local pokemonZPos = -0.1
local statusZPos = -0.5
local itemZPos = 0.46
local yLoc = 0.21 -- Button YPos
local zLoc = 0.89 -- Att/Def/Recall ZPos

-- Data
local rackData = {{},{},{},{},{},{}}

-- Arena Data
local inArena = false
local isAttacker = false
local arenaIndex = 0

--------------------------------------------------------------------------------
-- HP Rule 2 House Rule Data
--------------------------------------------------------------------------------

HEALTH_INDICATORS = {
    { position = {6.27,  0.43, -47.10}, rotation = {0, 180, 0} },
    { position = {11.57, 0.43, -47.10}, rotation = {0, 180, 0} },
    { position = {16.87, 0.43, -47.10}, rotation = {0, 180, 0} },
    { position = {22.17, 0.43, -47.10}, rotation = {0, 180, 0} },
    { position = {27.47, 0.43, -47.10}, rotation = {0, 180, 0} },
    { position = {32.77, 0.43, -47.10}, rotation = {0, 180, 0} },
}

HEALTH_INDICATOR_GUIDS = { }

--------------------------------------------------------------------------------
-- Pokedex Data
--------------------------------------------------------------------------------

POKEDEX_HANDLER_GUID = "ea518e"
local pokedexCaptures = {}
local pokedexRecentRequests = {}
local pokedexSteamId = nil
local POKEDEX_DUP_WINDOW = 3
local function resetPokedexCaches()
  pokedexCaptures = {}
  pokedexRecentRequests = {}
end

local function syncPokedexSteamId()
  local handler = getObjectFromGUID(POKEDEX_HANDLER_GUID)
  if not handler then
    return
  end
  local identity = handler.call("getSteamIdentityForColor", { color = playerColour })
  local steam_id = identity and identity.steam_id

  -- If a different player sits here, wipe stale saved captures for this rack.
  if steam_id and steam_id ~= pokedexSteamId then
    resetPokedexCaches()
    pokedexSteamId = steam_id
  end
end

function onSave()
    -- Create the save table.
  local save_table = {
    health_indicators_guids=HEALTH_INDICATOR_GUIDS,
    pokedex_captures=pokedexCaptures,
    pokedex_steam_id=pokedexSteamId,
  }
  return JSON.encode(save_table)
end

function onLoad(saved_data)
  self.tooltip = false

  self.createButton({label="REFRESH", click_function="rackRefreshPokemon", function_owner=self, tooltip="Refresh Pokémon", position={-0.80, yLoc, -0.92}, rotation={0,0,0}, height=60, width=150, font_size=30})
  self.createButton({label="POINTS", click_function="rackCalcPoints", function_owner=self, tooltip="Calculate Points", position={-0.80, yLoc, -0.79}, rotation={0,0,0}, height=60, width=150, font_size=30})
  self.createButton({label="FIGURE", click_function="panToPlayer", function_owner=self, tooltip="Move Camera to Trainer Figure", position={-1.37, yLoc, -0.815}, rotation={0,0,0}, height=52, width=150, font_size=30})
  self.createButton({label="ARENA", click_function="showArena", function_owner=Global, tooltip="Move Camera to Arena", position={-1.37, yLoc, -0.92}, rotation={0,0,0}, height=52, width=150, font_size=30})
  self.createButton({label="OFF", click_function="toggleAutoCamera", function_owner=self, tooltip="Toggle Auto Camera", position={-1.108, yLoc, -0.815}, rotation={0,0,0}, height=52, width=90, font_size=30})

  for i=1, 6 do
      local xPos = -1.6 + ( 0.59 * (i-1))
      self.createButton({label="ATT", click_function="attack"..i, function_owner=self, tooltip="",position={xPos, 1000, zLoc}, rotation={0,0,0}, height=60, width=130, font_size=30}) -- Attack Button
      self.createButton({label="DEF", click_function="defend"..i, function_owner=self, tooltip="",position={xPos + 0.26, 1000, zLoc}, rotation={0,0,0}, height=60, width=130, font_size=30}) -- Defend Button
      self.createButton({label="-", click_function="decrease"..i, function_owner=self, tooltip="",position={xPos - 0.09, 1000, 0.02}, rotation={0,0,0}, height=50, width=50, font_size=30}) -- Level Down Button
      self.createButton({label="+", click_function="increase"..i, function_owner=self, tooltip="",position={xPos + 0.34, 1000, 0.02}, rotation={0,0,0}, height=50, width=50, font_size=30}) -- Level Up Button
      self.createButton({label="RECALL", click_function="rackRecall", function_owner=self, tooltip="",position={-1.47 + ((i-1) * 0.59), 1000, zLoc}, rotation={0,0,0}, height=60, width=130, font_size=30,}) -- Recall Button
      self.createButton({label="E", click_function="evolve"..i, function_owner=self, tooltip="",position={pokemonXPos[7-i] + 0.215, 1000, pokemonZPos + 0.025}, rotation={0,0,0}, height=50, width=50, font_size=30}) -- Evolve Button
      self.createButton({label="1", click_function="evolve"..i, function_owner=self, tooltip="", position={pokemonXPos[7-i] + 0.19, 1000, pokemonZPos + 0.025}, rotation={0,0,0}, height=50, width=25, font_size=40}) -- Evolve1 Button
      self.createButton({label="2", click_function="evolveTwo"..i, function_owner=self, tooltip="",position={pokemonXPos[7-i] + 0.24, 1000, pokemonZPos + 0.025}, rotation={0,0,0}, height=50, width=25, font_size=40}) -- Evolve2 Button
  end
  rackRefreshPokemon()

  -- Stats button.
  self.createButton({label="STATS", click_function="handleStatsRequest", function_owner=self, tooltip="Print Stats", position={-0.50, yLoc, -0.92}, rotation={0,0,0}, height=60, width=150, font_size=30})

  local save_table
  if saved_data and saved_data ~= "" then
    save_table = JSON.decode(saved_data)
  end

  if save_table then
    HEALTH_INDICATOR_GUIDS = save_table.health_indicators_guids
    if not HEALTH_INDICATOR_GUIDS then HEALTH_INDICATOR_GUIDS = {} end
    if save_table.pokedex_captures and type(save_table.pokedex_captures) == "table" then
      pokedexCaptures = save_table.pokedex_captures
    end
    if save_table.pokedex_steam_id then
      pokedexSteamId = save_table.pokedex_steam_id
    end
  end
end


function toggleAutoCamera()

  local buttonIndex = 4
  if autoCamera then
    autoCamera = false
    self.editButton({index=buttonIndex, label="OFF"})
  else
    autoCamera = true
    self.editButton({index=buttonIndex, label="ON"})
  end
end

function panToPlayer(obj, color)

  local pokeOnePosX = getObjectFromGUID(figureGUID).getPosition()[1]
  local pokeOnePosZ = getObjectFromGUID(figureGUID).getPosition()[3]

  Player[color].lookAt({
      position = {x=pokeOnePosX,y=0.14,z=pokeOnePosZ},
      pitch    = 60,
      yaw      = 0,
      distance = 25,
  })
end


function rackRefreshPokemon()
    local params = {
        pokemonXPos = pokemonXPos,
        pokemonZPos = pokemonZPos,
        rackData = rackData,
        xPos = xPos,
        yLoc = yLoc,
        zLoc = zLoc,
        rackGUID = self.getGUID()
    }

    local battleManager = getObjectFromGUID(battleManager)
    rackData = battleManager.call("refreshPokemon", params)

    -- Try to capture each Pokemon.
    for _, slot in ipairs(rackData) do
        if slot and slot.pokemonGUID and slot.name then
            local shinyState = Global.call("get_token_shiny_status", slot.pokemonGUID) or false
            local isShiny = shinyState == true
            onCaptureResolved(slot.name, isShiny)
        end
    end
end


function rackSendToArena(params)

  inArena = true
  isAttacker = params.isAttacker
  arenaIndex = params.index
  local arenaParams = {
      index = params.index,
      isAttacker = params.isAttacker,
      zPos = pokemonZPos,
      slotData = rackData[params.index],
      inArena = true,
      playerColour = playerColour,
      pokemonXPos = pokemonXPos,
      pokemonZPos = pokemonZPos,
      pokemonLevels = pokemonLevels,
      statusZPos = statusZPos,
      itemArenaPos = itemArenaPos,
      statusArenaPos = statusArenaPos,
      itemZPos = itemZPos,
      xRotSend = xRotSend,
      yRotSend = yRotSend,
      zRotSend = zRotSend,
      yLoc = yLoc,
      zLoc = zLoc,
      rackGUID = self.getGUID(),
      autoCamera = autoCamera
  }

  -- Determine if HP Rule 2 is in effect.
  if #HEALTH_INDICATOR_GUIDS > 0 and Global.call("getHpRule2Set") then
    arenaParams.healthIndicatorGuid = HEALTH_INDICATOR_GUIDS[params.index]
  end

  getObjectFromGUID(battleManager).call("sendToArena", arenaParams)
end


function rackRecall()

  inArena = false
  local recallParams = {
      playerColour = playerColour,
      isAttacker = isAttacker,
      arenaAttack = arenaAttack,
      rackPosition = rackPosition,
      xRotRecall = xRotRecall,
      yRotRecall = yRotRecall,
      zRotRecall = zRotRecall,
      yLoc = yLoc,
      zLoc = zLoc,
      pokemonXPos = pokemonXPos,
      pokemonZPos = pokemonZPos,
      statusZPos = statusZPos,
      itemZPos = itemZPos,
      index = arenaIndex,
      rackGUID = self.getGUID(),
      autoCamera = autoCamera
  }
    getObjectFromGUID(battleManager).call("recall", recallParams)
end


function checkLevel(index, modifier, evolving)

    local params = {
        index = index,
        modifier = modifier,
        inArena = inArena,
        isAttacker = isAttacker,
        slotData = rackData[index],
        itemZPos = itemZPos,
        pokemonXPos = pokemonXPos,
        pokemonZPos = pokemonZPos,
        diceBagGUID = diceBagGUID,
        yRotRecall = yRotRecall,
        playerColour = playerColour,
        yLoc = yLoc,
        zLoc = zLoc,
        rackGUID = self.getGUID()
    }

    rackData[index] = getObjectFromGUID(battleManager).call("setLevel", params)
end


function rackEvolve(index, oneOrTwo)

    local evolveParams = {
        evolveRotation = evolveRotation,
        inArena = inArena,
        index = index,
        isAttacker = isAttacker,
        playerColour = playerColour,
        pokemonXPos = pokemonXPos,
        pokemonZPos = pokemonZPos,
        oneOrTwo = oneOrTwo,
        rackGUID = self.getGUID(),
        slotData = rackData[index]
    }

    local pokemonData = rackData[index]
    local evolveData = pokemonData.evoData[1]
    local evolveCost
    if type(evolveData.cost) == "string" then 
        evolveCost = 0
    else
        evolveCost = evolveData.cost
    end

    local evolveData = getObjectFromGUID(battleManager).call("evolvePoke", evolveParams)

    -- If we have multiple evolutions, the pokemon doesn't evolve straight away
    if evolveData ~= nil then
      rackData[index] = evolveData
    end

    checkLevel(index, -evolveCost, false)
end


function rackCalcPoints(obj, color)
    local pointsParams = {
        badgesXPos = badgesXPos,
        rackGUID = self.getGUID(),
        rackColour = playerColour,
        clickerColour = color,
        rackData = rackData
    }
    getObjectFromGUID(battleManager).call("calcPoints", pointsParams)
end

function updatePokemonData(params)

  print(params.index)
  print(params.pokemonGUID)

  local evolvedPokemonData = Global.call("GetPokemonDataByGUID",{guid=params.pokemonGUID})
  print(evolvedPokemonData.name)
  print(evolvedPokemonData.types[1])
  setNewPokemon(rackData[params.index], evolvedPokemonData, params.pokemonGUID)

end

function setNewPokemon(data, newPokemonData, pokemonGUID)

  data.name = newPokemonData.name
  data.types = copyTable(newPokemonData.types)
  data.baseLevel = newPokemonData.level
  data.effects = {}

  data.moves = copyTable(newPokemonData.moves)
  local movesData = {}
  for i=1, #data.moves do
    moveData = copyTable(Global.call("GetMoveDataByName", data.moves[i]))
    moveData.status = DEFAULT
    moveData.isTM = false
    table.insert(movesData, moveData)
  end
  data.movesData = movesData

  data.pokemonGUID = pokemonGUID
  if newPokemonData.evoData ~= nil then
    data.evoData = copyTable(newPokemonData.evoData)
  else
    data.evoData = nil
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

--------------------------------------------------------------------------------
-- SLOT BUTTON FUNCTIONS
--------------------------------------------------------------------------------

function attack1()

    rackSendToArena({index = 1, isAttacker = true})
end

function attack2()

    rackSendToArena({index = 2, isAttacker = true})
end

function attack3()

    rackSendToArena({index = 3, isAttacker = true})
end

function attack4()

    rackSendToArena({index = 4, isAttacker = true})
end

function attack5()

    rackSendToArena({index = 5, isAttacker = true})
end

function attack6()

    rackSendToArena({index = 6, isAttacker = true})
end

function defend1()

    rackSendToArena({index = 1, isAttacker = false})
end

function defend2()

    rackSendToArena({index = 2, isAttacker = false})
end

function defend3()

    rackSendToArena({index = 3, isAttacker = false})
end

function defend4()

    rackSendToArena({index = 4, isAttacker = false})
end

function defend5()

    rackSendToArena({index = 5, isAttacker = false})
end

function defend6()

    rackSendToArena({index = 6, isAttacker = false})
end

function increase1()

    checkLevel(1, 1, false)
end

function increase2()

    checkLevel(2, 1, false)
end

function increase3()

    checkLevel(3, 1, false)
end

function increase4()

    checkLevel(4, 1, false)
end

function increase5()

    checkLevel(5, 1, false)
end

function increase6()

    checkLevel(6, 1, false)
end

function decrease1()

    checkLevel(1, -1, false)
end

function decrease2()

    checkLevel(2, -1, false)
end

function decrease3()

    checkLevel(3, -1, false)
end

function decrease4()

    checkLevel(4, -1, false)
end

function decrease5()

    checkLevel(5, -1, false)
end

function decrease6()

    checkLevel(6, -1, false)
end

function evolve1()

    rackEvolve(1, 1)
end

function evolve2()

    rackEvolve(2, 1)
end

function evolve3()

    rackEvolve(3, 1)
end

function evolve4()

    rackEvolve(4, 1)
end

function evolve5()

    rackEvolve(5, 1)
end

function evolve6()

    rackEvolve(6, 1)
end

function evolveTwo1()

    rackEvolve(1, 2)
end

function evolveTwo2()

    rackEvolve(2, 2)
end

function evolveTwo3()

    rackEvolve(3, 2)
end

function evolveTwo4()

    rackEvolve(4, 2)
end

function evolveTwo5()

    rackEvolve(5, 2)
end

function evolveTwo6()

    rackEvolve(6, 2)
end

--------------------------------------------------------------------------------
-- ARENA BUTTON FUNCTIONS
--------------------------------------------------------------------------------

function increase(mParams)

    checkLevel(arenaIndex, 1)
end

function decrease(mParams)

  checkLevel(arenaIndex, -1)
end

function evolveArena(attDefParams)

    if inArena ~= false then
        rackEvolve(arenaIndex, 1)
    end
end

function evolveTwoArena(attDefParams)

    if inArena ~= false then
        rackEvolve(arenaIndex, 2)
    end
end

function getAvailablePokemonXPos()
    local temp_x_pos = copyTable(pokemonXPos)
    local count_removed = 0
    for index=1, #temp_x_pos do
        if next(rackData[index]) ~= nil then
            table.remove(temp_x_pos, index - count_removed)
            count_removed = count_removed + 1
        end
    end
    return temp_x_pos
end

function getHealthIndicatorsLocations()
    return HEALTH_INDICATORS
end

function setHealthIndicatorsGuids(guid_table)
    -- Update the GUIDs.
    HEALTH_INDICATOR_GUIDS = guid_table

    -- Loop through the GUID list and set the color tint to ours.
    for guid_index=1, #guid_table do
        -- Get a handle on the object.
        local health_indicator = getObjectFromGUID(guid_table[guid_index])
        if health_indicator then
            health_indicator.setColorTint(playerColour)
        else
            printToAll(playerColour .. " rack is missing Health Indicator with GUID " .. tostring(guid_table[guid_index]))
        end
    end
end

function getHealthIndicatorsGuids()
    return HEALTH_INDICATOR_GUIDS
end

--------------------------------------------------------------------------------
-- STATS
--------------------------------------------------------------------------------

function handleStatsRequest(obj, color, alt)
    local record_keeper = getObjectFromGUID(RECORD_KEEPER_GUID)
    if record_keeper then
        record_keeper.call("handle_roll_stats_request", {obj=nil, color=playerColour, alt=alt})
    else
        print("Failed to find Record Keeper")
    end
end

---------------------------------
-- Pokedex.
---------------------------------

local function shouldSendPokedexCapture(pokemon_name, isShiny)
    if not pokemon_name or pokemon_name == "" then
        return false
    end

    -- If a new player is at this rack, clear stale persisted captures.
    syncPokedexSteamId()

    local now = os.time()
    local recentTs = pokedexRecentRequests[pokemon_name]
    if recentTs and (now - recentTs) < POKEDEX_DUP_WINDOW then
        return false
    end

    local recorded = pokedexCaptures[pokemon_name]
    if recorded then
        if recorded.shiny or (not isShiny and recorded.normal) then
            return false
        end
    end
    return true
end

local function markPokedexRequest(pokemon_name)
    pokedexRecentRequests[pokemon_name] = os.time()
end

function onPokedexCaptureRecorded(params)
    if not params or not params.pokemon_name then
        return
    end
    local isShiny = params.shiny == true
    local entry = pokedexCaptures[params.pokemon_name] or { normal = false, shiny = false }
    if isShiny then
        entry.shiny = true
        entry.normal = true
    else
        entry.normal = true
    end
    pokedexCaptures[params.pokemon_name] = entry
end

-- Called when a capture is resolved in-game.
function onCaptureResolved(pokemon_name, isShiny)
    if not shouldSendPokedexCapture(pokemon_name, isShiny) then
        return
    end

    markPokedexRequest(pokemon_name)

    -- Get a handle on the pokedex handler.
    local handler = getObjectFromGUID(POKEDEX_HANDLER_GUID)
    if not handler then
        return
    end

    -- Record the capture.
    handler.call("recordCapture", {
        color = playerColour,
        pokemon_name = pokemon_name,
        shiny = isShiny == true,
        rack_guid = self.getGUID(),
    })
end

-- Requests the dex for the given player color.
function requestMyDex(player_color)
    -- Get a handle on the pokedex handler.
    local handler = getObjectFromGUID(POKEDEX_HANDLER_GUID)
    if not handler then
        return
    end
    
    -- Get a handle on the pokedex handler.
    handler.call("fetchDex", { color = player_color })
end
