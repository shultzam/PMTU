local pinkButtonPos = {-1.6, -3.15, 5}
local greenButtonPos = {0, -3.15, 5}
local blueButtonPos = {1.6, -3.15, 5}
local yellowButtonPos = {-0.8, -3.15, 6.5}
local redButtonPos = {0.8, -3.15, 6.5}

local region = nil
local trainerName = nil
local pokemonData = nil
local battleManager = "de7152"

-- All button Y values are the same.
local buttonOptionY = -3.15

-- Model button fields.
-- NOTE: It is pretty silly to tie the model buttons to this object but Rival Event object is permanent and really close to 
--       the button locations. I am not proud, but may the future developers here not judge me too harshly.
local MODEL_SIZE_CHANGE_STEP = 1.0
local SPAWN_DELAY_CHANGE_STEP = 0.1
local modelOptionX = -45.0
local modelOptionZ = -3.2
local modelOptionsShown = false
local modelOptionButtons = {}
local SHINY_CHANGE_STEP = 1   -- Percent

-- Music button fields.
-- NOTE: It is pretty silly to tie the music buttons to this object but Rival Event object is permanent and really close to 
--       the button locations. I am not proud, but may the future developers here not judge me too harshly.
local musicOptionX = -30.0
local musicOptionZ = -3.2
local musicOptionsShown = false
local musicOptionButtons = {}

-- Auto-Roller fields.
-- NOTE: It is pretty silly to ... you get the point.
local autoRollerOptionX = -30.0
local autoRollerOptionZ = 8.0
local currentAutoRollerIndex = 0
local autoRollersTable = { [0] = "No AutoRoller", [1] = "AutoRoller Logs", [2] = "AutoRoller Dice"  }

-- Turn Counter fields.
-- NOTE: you can't stop me.
local turnCounterOptionX = -45.0
local turnCounterOptionZ = 8.0
local turnCount = 0

-- Event Rival region table.
local REGION_TABLE = {
  "Kanto",
  "Johto",
  "Hoenn",
  "Sinnoh",
  "Unova",
  "Kalos",
  "Alola",
  "Galar",
  "Paldea",
  "Ransei",
  "Hisui",
  "Orange Islands"
}

function onSave()
  local saved_data = JSON.encode({saveRegion=region, saveTrainerName=trainerName, savePokemonData=pokemonData, saveCurrentAutoRollerIndex=currentAutoRollerIndex, turnCount=turnCount})
  return saved_data
end

function onLoad(saved_data)
  if saved_data ~= "" and saved_data ~= nil then
    local loaded_data = JSON.decode(saved_data)
    if loaded_data.saveRegion ~= nil and loaded_data.saveTrainerName ~= nil and loaded_data.savePokemonData ~= nil then
      region = loaded_data.saveRegion
      trainerName = loaded_data.saveTrainerName
      pokemonData = copyTable(loaded_data.savePokemonData)
    end

    currentAutoRollerIndex = loaded_data.saveCurrentAutoRollerIndex
    if currentAutoRollerIndex == nil then
      currentAutoRollerIndex = 0
    end

    turnCount = loaded_data.turnCount
    if turnCount == nil then
      turnCount = 0
    end
  end

  -- Create the buttons and hide them if there is no data.
  createButtons()
  moveAllButtons(pokemonData ~= nil)

  -- Model button functionality.
  self.createButton({ --Apply button
      label="3D Model Options", click_function="click_model_options",
      function_owner=self,
      position={modelOptionX, buttonOptionY, modelOptionZ}, height=2000, width=7000, font_size=1000
  })

  -- Music button functionality.
  self.createButton({ --Apply button
      label="Music Options", click_function="click_music_options",
      function_owner=self,
      position={musicOptionX, buttonOptionY, musicOptionZ}, height=2000, width=7000, font_size=1000,
  })

  -- AutoRoller button functionality.
  self.createButton({ --Apply button
    label=autoRollersTable[currentAutoRollerIndex], click_function="increment_auto_roller_index",
    function_owner=self,
    position={autoRollerOptionX, buttonOptionY, autoRollerOptionZ}, height=2000, width=7000, font_size=1000,
  })

  -- TurnCounter button functionality.
  self.createButton({ --Apply button
    label="Turn " .. tostring(turnCount), click_function="adjust_turn_counter",
    function_owner=self,
    position={turnCounterOptionX, buttonOptionY, turnCounterOptionZ}, height=2000, width=7000, font_size=1000,
  })
end

function createButtons()  
  self.createButton({
    label="+", click_function="battlePink",
    function_owner=self, tooltip="Start Pink Rival Event Battle",
    position=pinkButtonPos, height=700, width=700, font_size=400, color={255, 0, 255}
  })
  self.createButton({
    label="+", click_function="battleGreen",
    function_owner=self, tooltip="Start Green Rival Event Battle",
    position=greenButtonPos, height=700, width=700, font_size=400, color={0, 255, 0}
  })
  self.createButton({
    label="+", click_function="battleBlue",
    function_owner=self, tooltip="Start Blue Rival Event Battle",
    position=blueButtonPos, height=700, width=700, font_size=400, color={0, 0, 255}
  })
  self.createButton({
    label="+", click_function="battleYellow",
    function_owner=self, tooltip="Start Yellow Rival Event Battle",
    position=yellowButtonPos, height=700, width=700, font_size=400, color={255, 255, 0}
  })
  self.createButton({
    label="+", click_function="battleRed",
    function_owner=self, tooltip="Start Red Rival Event Battle",
    position=redButtonPos, height=700, width=700, font_size=400, color={255, 0, 0}
  })
end

function moveOtherButtons(visible)
  local yPos = visible and -3.15 or 1000
  self.editButton({index=0, position={pinkButtonPos[1], yPos, pinkButtonPos[3]}})
  self.editButton({index=2, position={blueButtonPos[1], yPos, blueButtonPos[3]}})
  self.editButton({index=3, position={yellowButtonPos[1], yPos, yellowButtonPos[3]}})
  self.editButton({index=4, position={redButtonPos[1], yPos, redButtonPos[3]}})
end

function moveAllButtons(visible)
  local yPos = visible and -3.15 or 1000
  self.editButton({index=0, position={pinkButtonPos[1], yPos, pinkButtonPos[3]}})
  self.editButton({index=1, position={greenButtonPos[1], yPos, greenButtonPos[3]}})
  self.editButton({index=2, position={blueButtonPos[1], yPos, blueButtonPos[3]}})
  self.editButton({index=3, position={yellowButtonPos[1], yPos, yellowButtonPos[3]}})
  self.editButton({index=4, position={redButtonPos[1], yPos, redButtonPos[3]}})
end

function battle(tier)

  if tier == nil then return end
  if pokemonData == nil then return end

  -- Determine which GUID to send out.
  local pokemonTokenInfo = getRivalPokemonGuid(tier)
  local params = {
    pokeballGUID = self.getGUID(),
    trainerName = trainerName,
    pokemonGUID = pokemonTokenInfo.guid,
    pokemonData = pokemonTokenInfo.pokemon
  }

  -- Send the appropriate pokemon token to the arena via the Battle Manager.
  local battleManager = getObjectFromGUID(battleManager)
  local sent = battleManager.call("sendToArenaRival", params)

  -- The battle manager will log any failure to send (we hope!).
  if not sent then
    return
  end

  -- Drop all buttons except the button that was pressed to send the token to the gym. Set the yPos to 1000.
  moveOtherButtons(false)

  -- Edit the button belonging to the tier to say recall.
  self.editButton({
    index=1, label="-", click_function="recall",
    function_owner=self, tooltip="Recall Rival Event Battle",
    position=greenButtonPos, color={1, 1, 1}
  })
end

function battlePink()
  battle(1)
end

function battleGreen()
  battle(2)
end

function battleBlue()
  battle(3)
end

function battleYellow()
  battle(4)
end

function battleRed()
  battle(5)
end

function recall()
  local battleManager = getObjectFromGUID(battleManager)
  battleManager.call("recallRival")

  Global.call("PlayRouteMusic",{})

  self.editButton({
    index=1, label="+", click_function="battleGreen",
    function_owner=self, tooltip="Start Green Rival Event Battle",
    position=greenButtonPos, color={0, 255, 0}
  })

  -- Bring the other buttons back.
  moveOtherButtons(true)
end

function setRivalRegion(regionArg)
  -- Save the region.
  region = regionArg

  if region == "Random" then
    region = REGION_TABLE[math.random(1, #REGION_TABLE)]
  end

  -- Filter and save off the appropriate pokemon data.
  local rivalData = Global.call("GetRivalDataByRegion", region)
  trainerName = rivalData.trainerName
  pokemonData = copyTable(rivalData.pokemonData)

  -- Show the buttons.
  moveAllButtons(true)
end

-- Helper to get the GUID of the pokemon we want to send to the arena based on the tier. This
-- assumes that pokemonData is not nil but will check.
function getRivalPokemonGuid(tier)
  if tier == nil then return end
  if pokemonData == nil then return end

  -- Unless this data gets more complicated, we can just get the index.
  return pokemonData[tier]
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

function click_model_options()
  if modelOptionsShown then
    modelOptionsShown = false
    for _, button_id in ipairs(modelOptionButtons) do
      local button = find_button(button_id)
      if button then self.removeButton(button.index) end
    end
    modelOptionButtons = {}
  else
    modelOptionsShown = true

    -- Enable Models
    self.createButton({
      label="Enable Models", click_function="splash", function_owner=self,
      position={modelOptionX-2.0,buttonOptionY,modelOptionZ+2.8}, height=0, width=0, font_size=600, font_color={1,1,1}
    })
    register_model_button("Enable Models")
    self.createButton({
      label="", click_function="toggle_models",
      function_owner=self, tooltip="Check to enable 3D models",
      position={modelOptionX+3.0,buttonOptionY,modelOptionZ+2.8}, height=400, width=400, font_size=600
    })
    register_model_button("toggle_models")
    set_enable_button()

    -- Model size
    self.createButton({
      label="Model Size", click_function="splash", function_owner=self,
      position={modelOptionX-2.0,buttonOptionY,modelOptionZ+4.1}, height=0, width=0, font_size=600, font_color={1,1,1}
    })
    register_model_button("Model Size")
    self.createButton({
      click_function="decrease_model_size",
      function_owner=self, tooltip="Click to decrease the model size",
      position={modelOptionX+2.5,buttonOptionY,modelOptionZ+4.1}, height=400, width=400, font_size=600, label="-"
    })
    register_model_button("decrease_model_size")
    self.createButton({
      click_function="increase_model_size",
      function_owner=self, tooltip="Click to increase the model size",
      position={modelOptionX+3.5,buttonOptionY,modelOptionZ+4.1}, height=400, width=400, font_size=600, label="+"
    })
    register_model_button("increase_model_size")

    -- Spawn delay
    self.createButton({
      label="Spawn Delay", click_function="splash", function_owner=self,
      position={modelOptionX-2.25,buttonOptionY,modelOptionZ+5.4}, height=0, width=0, font_size=600, font_color={1,1,1}
    })
    register_model_button("Spawn Delay")
    self.createButton({
      label="", click_function="splash_spawn_delay", function_owner=self,
      position={modelOptionX+5.7,buttonOptionY,modelOptionZ+5.4}, height=0, width=0, font_size=600, font_color={1,1,1}
    })
    register_model_button("splash_spawn_delay")
    set_spawn_delay_label()
    self.createButton({
      click_function="decrease_spawn_delay",
      function_owner=self, tooltip="Click to decrease the delay before the spawn animation shows (useful if some players cannot see the spawn animations).",
      position={modelOptionX+2.5,buttonOptionY,modelOptionZ+5.4}, height=400, width=400, font_size=600, label="-"
    })
    register_model_button("decrease_spawn_delay")
    self.createButton({
      click_function="increase_spawn_delay",
      function_owner=self, tooltip="Click to increase the delay before the spawn animation shows (useful if some players cannot see the spawn animations).",
      position={modelOptionX+3.5,buttonOptionY,modelOptionZ+5.4}, height=400, width=400, font_size=600, label="+"
    })
    register_model_button("increase_spawn_delay")

    -- Shiny Chance.
    self.createButton({
      label="Shiny Chance", click_function="splash", function_owner=self,
      position={modelOptionX-2.25,buttonOptionY,modelOptionZ+6.7}, height=0, width=0, font_size=600, font_color={1,1,1}
    })
    register_model_button("Shiny Chance")
    self.createButton({
      label="", click_function="splash_shiny_chance", function_owner=self,
      position={modelOptionX+5.7,buttonOptionY,modelOptionZ+6.7}, height=0, width=0, font_size=600, font_color={1,1,1}
    })
    register_model_button("splash_shiny_chance")
    set_shiny_chance_label()
    self.createButton({
      click_function="decrease_shiny_chance",
      function_owner=self, tooltip="Click to decrease the the chance for shiny models to spawn.",
      position={modelOptionX+2.5,buttonOptionY,modelOptionZ+6.7}, height=400, width=400, font_size=600, label="-"
    })
    register_model_button("decrease_shiny_chance")
    self.createButton({
      click_function="increase_shiny_chance",
      function_owner=self, tooltip="Click to increase the chance for shiny models to spawn.",
      position={modelOptionX+3.5,buttonOptionY,modelOptionZ+6.7}, height=400, width=400, font_size=600, label="+"
    })
    register_model_button("increase_shiny_chance")

    -- Force Shiny.
    self.createButton({
      label="Force Shiny", click_function="splash", function_owner=self,
      position={modelOptionX-2.25,buttonOptionY,modelOptionZ+8.0}, height=0, width=0, font_size=600, font_color={1,1,1}
    })
    register_model_button("Force Shiny")
    self.createButton({
      label="", click_function="toggle_force_shiny",
      function_owner=self, tooltip="Check to Force the Next (eligible) Model to be Shiny",
      position={modelOptionX+3.0,buttonOptionY,modelOptionZ+8.0}, height=400, width=400, font_size=600
    })
    register_model_button("toggle_force_shiny")
    set_force_shiny()
  end
end

function register_model_button(button_id)
  modelOptionButtons[#modelOptionButtons+1] = button_id
end

--Locates a button with a helper function
function find_button(button_id)
  for _, button in ipairs(self.getButtons()) do
    if button.label == button_id or button.click_function == button_id then
      return button
    end
  end
  return nil
end

function set_enable_button()
  local enable_button = find_button("toggle_models")
  if Global.call("get_models_enabled") then
    self.editButton({index=enable_button.index, label=string.char(10004), color={0,1,0}})
  else
    self.editButton({index=enable_button.index, label="", color={1,1,1}})
  end
end

function toggle_models()
  Global.Call("toggle_models_enabled")
  set_enable_button()
end

function increase_model_size()
  Global.Call("scale_models", {scale=MODEL_SIZE_CHANGE_STEP})
end

function decrease_model_size()
  Global.Call("scale_models", {scale=1/MODEL_SIZE_CHANGE_STEP})
end

function set_spawn_delay_label()
  local spawn_delay_label = find_button("splash_spawn_delay")
  self.editButton({index=spawn_delay_label.index, label=string.format("(%.1fs)", Global.Call("get_spawn_delay"))})
end

function increase_spawn_delay()
  Global.Call("increase_spawn_delay", {delay=SPAWN_DELAY_CHANGE_STEP})
  set_spawn_delay_label()
end

function decrease_spawn_delay()
  Global.Call("increase_spawn_delay", {delay=-SPAWN_DELAY_CHANGE_STEP})
  set_spawn_delay_label()
end

function set_shiny_chance_label()
  local shiny_chance_label = find_button("splash_shiny_chance")
  local shiny_label = Global.Call("get_shiny_chance") .. "%"
  self.editButton({index=shiny_chance_label.index, label=shiny_label})
end

function increase_shiny_chance()
  Global.Call("increase_shiny_chance", {chance=SHINY_CHANGE_STEP})
  set_shiny_chance_label()
end

function decrease_shiny_chance()
  Global.Call("increase_shiny_chance", {chance=-SHINY_CHANGE_STEP})
  set_shiny_chance_label()
end

function toggle_force_shiny()
  Global.Call("toggle_force_shiny")
  set_force_shiny()
end

function set_force_shiny()
  local forced_shiny_button = find_button("toggle_force_shiny")
  if Global.call("get_shiny_forced") then
    printToAll("Forcing the next model to be shiny (if eligible).")
    self.editButton({index=forced_shiny_button.index, label=string.char(10004), color={0,1,0}})
  else
    self.editButton({index=forced_shiny_button.index, label="", color={1,1,1}})
  end
end

function remove_forced_shiny()
  local forced_shiny_button = find_button("toggle_force_shiny")
  if forced_shiny_button then
    self.editButton({index=forced_shiny_button.index, label="", color={1,1,1}})
  end
end

function splash()
  --But nothing happened!
end

function splash_spawn_delay()
  --Nothing happened! But with style.
end

function splash_shiny_chance()
  --Nothing happened! But with style.
end

function click_music_options()
  if musicOptionsShown then
    musicOptionsShown = false
    for _,button_id in ipairs(musicOptionButtons) do
      local button = find_button(button_id)
      if button then self.removeButton(button.index) end
    end
    musicOptionButtons = {}
  else
    musicOptionsShown = true

    -- Enable original music.
    self.createButton({
      label="Original Music", click_function="splash", function_owner=self,
      position={musicOptionX-2.0,buttonOptionY,musicOptionZ+3.0}, height=0, width=0, font_size=600, font_color={1,1,1}
    })
    register_music_button("Original Music")
    self.createButton({
      label="", click_function="toggle_original_music",
      function_owner=self, tooltip="Check to enable the more traditional music",
      position={musicOptionX+3.0,buttonOptionY,musicOptionZ+3.0}, height=400, width=400, font_size=600
    })
    register_music_button("toggle_original_music")
    set_enable_originals_button()

    -- Enable remix music.
    self.createButton({
      label="Remixes", click_function="splash", function_owner=self,
      position={musicOptionX-0.5,buttonOptionY,musicOptionZ+4.5}, height=0, width=0, font_size=600, font_color={1,1,1}
    })
    register_music_button("Remixes")
    self.createButton({
      label="", click_function="toggle_remix_music",
      function_owner=self, tooltip="Check to enable some dope remixes :D",
      position={musicOptionX+3.0,buttonOptionY,musicOptionZ+4.5}, height=400, width=400, font_size=600
    })
    register_music_button("toggle_remix_music")
    set_enable_remixes_button()
  end
end

function register_music_button(button_id)
  musicOptionButtons[#musicOptionButtons+1] = button_id
end

function set_enable_originals_button()
  local enable_originals_button = find_button("toggle_original_music")
  if Global.call("get_original_music_enabled") then
    self.editButton({index=enable_originals_button.index, label=string.char(10004), color={0,1,0}})
  else
    self.editButton({index=enable_originals_button.index, label="", color={1,1,1}})
  end
end

function toggle_original_music()
  Global.Call("toggle_original_music_enabled")
  set_enable_originals_button()
end

function set_enable_remixes_button()
  local enable_remixes_button = find_button("toggle_remix_music")
  if Global.call("get_remix_music_enabled") then
    self.editButton({index=enable_remixes_button.index, label=string.char(10004), color={0,1,0}})
  else
    self.editButton({index=enable_remixes_button.index, label="", color={1,1,1}})
  end
end

function toggle_remix_music()
  Global.Call("toggle_remix_music_enabled")
  set_enable_remixes_button()
end

function increment_auto_roller_index()
  -- Get a handle on the Battle Manager.
  local battleManager = getObjectFromGUID(battleManager)
  if not battleManager then
    print("Could not find the BattleManager.. :(")
    return
  end

  -- Ensure we are not in battle.
  if battleManager.call("isBattleInProgress") then
    printToAll("Cannot toggle AutoRollers during battle.")
    return
  end

  -- Get the current button label.
  local current_label = autoRollersTable[currentAutoRollerIndex]

  -- Increment the index and take the modulos.
  currentAutoRollerIndex = currentAutoRollerIndex + 1
  currentAutoRollerIndex = currentAutoRollerIndex % (#autoRollersTable + 1)

  -- Edit the button to use the new label.
  local auto_rollers_button = find_button(current_label)
  self.editButton({index=auto_rollers_button.index, label=autoRollersTable[currentAutoRollerIndex]})
end

function get_auto_roller_type()
  return currentAutoRollerIndex
end

function adjust_turn_counter(obj, color, alt)
  -- Get the current button label.
  local current_label = turnCount

  -- Adjust the turn count.
  if alt then
    turnCount = turnCount - 1
  else
    turnCount = turnCount + 1
  end

  -- Make sure the Turn Count doesn't underflow.
  if turnCount < 0 then turnCount = 0 end

  -- Edit the button to use the new label.
  local turn_count_button = find_button("Turn " .. current_label)
  self.editButton({index=turn_count_button.index, label="Turn " .. tostring(turnCount)})
end

function increment_turn_counter()
  adjust_turn_counter(0, 0, false)
end