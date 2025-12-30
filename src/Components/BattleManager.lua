-- Battle State
NO_BATTLE = 0
SELECT_POKEMON = 1
PRE_MOVE_RESOLVE_STATUS = 2
SELECT_MOVE = 3
ROLL_EFFECTS = 4
RESOLVE_STATUS = 5
ROLL_ATTACK = 6
RESOLVE = 7

-- Roll State
PLACING = 0
NONE = 1
ROLLING = 2
CALCULATE = 3

-- Move State
DISABLED = -7
IMMUNE = -5
SUPER_WEAK = -3
WEAK = -2
DEFAULT = 0
EFFECTIVE = 2
SUPER_EFFECTIVE = 3

-- Trainer type
PLAYER = 0
GYM = 1
TRAINER = 2
WILD = 3
RIVAL = 4
TITAN = 5

-- Global constants representing Battle Arena side.
ATTACKER = true
DEFENDER = false

-- Pink, Green, Blue, Yellow, Red, Legendary, Beast.
local deploy_pokeballs = { "9c4411", "c988ea", "2cf16d", "986cb5", "f66036", "e46f90", "1feef7" }
-- Zones.
local wildPokeZone = "f10ab0"
local defenderZones = { fieldEffect = "357206", status = "3eb652", battleCard = "095fac" }
local attackerZones = { fieldEffect = "fce3fb", status = "f47feb", battleCard = "f96667" }

local blueRack = nil
local greenRack = nil
local orangeRack = nil
local purpleRack = nil
local redRack = nil
local yellowRack = nil
local evolvePokeballGUID = {"757125", "6fd4a0", "23f409", "caf1c8", "35376b", "f353e7", "68c4b0", "96358f"}
local evolvedPokeballGUID = "140fbd"
local effectDice="6a319d"
local critDice="229313"
local d4Dice="7c6144"
local d6Dice="15df3c"
local statusGUID = {burned="3b8a3d", poisoned="26c816", sleep="00dbc5", paralyzed="040f66", frozen="d8769a", confused="d2fe3e", cursed="5333b9"}
boosterDeckGUID = "b66e98"
BASE_HEALTH_OBJECT_GUID = "5ab909"
RECORD_KEEPER_GUID = "ab319d"
DECK_BUILDER_GUID = "9f7796"

local levelDiceXOffset = 0.205
local levelDiceZOffset = 0.13

-- Arena Effects were moved to an external field independent of the Attacker/Defender Data
-- because it is easier to preserve the information when one Pokemon recalls.
-- Format: { name = field_effect_ids.effect, guid = XXXXXX }
local atkFieldEffect = {name = nil, guid = nil}
local defFieldEffect = {name = nil, guid = nil}

DEFAULT_ARENA_DATA = {
  type = nil,
  dice = {},
  attackValue={level=0, movePower=0, effectiveness=0, effect=0, attackRoll=0, item=0, booster=0, status=0, total=0, immune=false},
  previousMove={},
  canSelectMove=true,
  selectedMoveIndex=-1,
  selectedMoveData=nil,
  diceMod=0,
  addDice=0,
  teraType=nil,
  model_GUID=nil,
  health_indicator_guid=nil
}

local attackerData = {
  type = nil,
  dice = {},
  attackValue={level=0, movePower=0, effectiveness=0, effect=0, attackRoll=0, item=0, booster=0, status=0, total=0, immune=false},
  previousMove={},
  canSelectMove=true,
  selectedMoveIndex=-1,
  selectedMoveData=nil,
  diceMod=0,
  addDice=0,
  teraType=nil,
  model_GUID=nil,
  health_indicator_guid=nil
}
local attackerPokemon=nil

local defenderData = {
  type = nil,
  dice = {},
  attackValue={level=0, movePower=0, effectiveness=0, effect=0, attackRoll=0, item=0, booster=0, status=0, total=0, immune=false},
  previousMove={},
  canSelectMove=true,
  selectedMoveIndex=-1,
  selectedMoveData=nil,
  diceMod=0,
  addDice=0,
  teraType=nil,
  model_GUID=nil,
  health_indicator_guid=nil
}
local defenderPokemon=nil

local atkCounter="73b431"
local atkMoveText={"d91743","8895de", "0390e6", "e2635c"}
local atkText="a5671b"
local defCounter="b76b2a"
local defMoveText={"9e8ac1","68aee8", "8099cc", "145335"}
local defText="e6c686"
local roundText="0f03b4"
local arenaTextGUID="f0b393"
local currRound = 0

-- Arena Button Positions
local incLevelAtkPos = {x=8.14, z=6.28}
local decLevelAtkPos = {x=6.53, z=6.28}
local incStatusAtkPos = {x=12.98, z=6.81}
local decStatusAtkPos = {x=11.18, z=6.81}
local movesAtkPos = {x=10.50, z=2.47}
local teamAtkPos = {x=12.00, z=2.47}
local recallAtkPos = {x=13.50, z=2.47}
local atkEvolve1Pos = {x=5.69, z=5.07}
local atkEvolve2Pos = {x=8.90, z=5.07}
local atkMoveZPos = 8.3
local atkMoveDisableZPos = 7.8
local atkConfirmPos = {x=7.29, z=11.87}

-- Status card buttons.
local curseAtkPos = {x=10.9, z=3.9}
local burnAtkPos =  {x=11.7, z=3.9}
local poisonAtkPos = {x=12.5, z=3.9}
local sleepAtkPos = {x=13.3, z=3.9}
local paralysisAtkPos = {x=11.3, z=4.5}
local frozenAtkPos = {x=12.1, z=4.5}
local confusedAtkPos = {x=12.9, z=4.5}

local incLevelDefPos = {x=8.14, z=-6.12}
local decLevelDefPos = {x=6.53, z=-6.12}
local incStatusDefPos = {x=12.98, z=-6.60}
local decStatusDefPos = {x=11.18, z=-6.60}
local movesDefPos = {x=10.49, z=-2.47}
local teamDefPos = {x=11.99, z=-2.47}
local recallDefPos = {x=13.49, z=-2.47}
local defEvolve1Pos = {x=5.69, z=-4.94}
local defEvolve2Pos = {x=8.90, z=-4.94}
local defMoveZPos = -8.85
local defMoveDisableZPos = -9.35
local defConfirmPos = {x=7.35, z=-11.74}

-- Status card buttons.
local curseDefPos = {x=10.9, z=-3.9}
local burnDefPos = {x=11.7, z=-3.9}
local poisonDefPos = {x=12.5, z=-3.9}
local sleepDefPos = {x=13.3, z=-3.9}
local paralysisDefPos = {x=11.3, z=-4.5}
local frozenDefPos = {x=12.1, z=-4.5}
local confusedDefPos = {x=12.9, z=-4.5}

local gymFlipButtonPos = {x=7.33, z=-6.28}
local rivalFlipButtonPos = {x=7.33, z=6.28}

-- AutoRoll and Simulation values.
local BATTLE_ROUND = 1
local autoRollAtkPos = {x=13.4, z=12.2}
local autoRollAtkDicePos = {purple={x=12.6, z=12.77}, white={x=13.4, z=12.77}, blue={x=14.2, z=12.77}, red={x=13.4, z=13.34}}
local autoRollDefPos = {x=13.4, z=-12.2}
local autoRollDefDicePos = {purple={x=12.6, z=-12.77}, white={x=13.4, z=-12.77}, blue={x=14.2, z=-12.77}, red={x=13.4, z=-13.34}}

local atkAutoRollCounts = {purple=0, white=1, blue=0, red=0}
local defAutoRollCounts = {purple=0, white=1, blue=0, red=0}

local auto_roller_positions = {
  {-37, 1.45, 13}, {-35.5, 1.45, 13}, {-34, 1.45, 13},
  {-37, 1.45, 14.5}, {-35.5, 1.45, 14.5}, {-34, 1.45, 14.5}, {-32.5, 1.45, 14.5},
  {-37, 1.45, 16}, {-35.5, 1.45, 16}, {-34, 1.45, 16}, {-32.5, 1.45, 16}
}

-- Button ids (creation order).
local BUTTON_ID = {
  -- Arena: Attacker controls.
  atkFaint = "atkFaint",
  atkMoves = "atkMoves",
  atkRecall = "atkRecall",
  atkLevelUp = "atkLevelUp",
  atkLevelDown = "atkLevelDown",
  atkStatusUp = "atkStatusUp",
  atkStatusDown = "atkStatusDown",
  atkEvo1 = "atkEvo1",
  atkEvo2 = "atkEvo2",
  atkMove1 = "atkMove1",
  atkMove2 = "atkMove2",
  atkMove3 = "atkMove3",
  atkMove4 = "atkMove4",
  atkMove1Disable = "atkMove1Disable",
  atkMove2Disable = "atkMove2Disable",
  atkMove3Disable = "atkMove3Disable",
  atkMove4Disable = "atkMove4Disable",
  atkRandomMove = "atkRandomMove",

  -- Arena: Defender controls.
  defFaint = "defFaint",
  defMoves = "defMoves",
  defRecall = "defRecall",
  defLevelUp = "defLevelUp",
  defLevelDown = "defLevelDown",
  defStatusUp = "defStatusUp",
  defStatusDown = "defStatusDown",
  defEvo1 = "defEvo1",
  defEvo2 = "defEvo2",
  defMove1 = "defMove1",
  defMove2 = "defMove2",
  defMove3 = "defMove3",
  defMove4 = "defMove4",
  defMove1Disable = "defMove1Disable",
  defMove2Disable = "defMove2Disable",
  defMove3Disable = "defMove3Disable",
  defMove4Disable = "defMove4Disable",
  defRandomMove = "defRandomMove",

  -- Multi-evolution selector buttons.
  multiEvo1 = "multiEvo1",
  multiEvo2 = "multiEvo2",
  multiEvo3 = "multiEvo3",
  multiEvo4 = "multiEvo4",
  multiEvo5 = "multiEvo5",
  multiEvo6 = "multiEvo6",
  multiEvo7 = "multiEvo7",
  multiEvo8 = "multiEvo8",
  multiEvo9 = "multiEvo9",

  -- Gym/Titan battle controls.
  battleWild = "battleWild",
  nextPokemon = "nextPokemon",

  -- Tera controls + rival flip.
  teraAttacker = "teraAttacker",
  teraDefender = "teraDefender",
  nextRival = "nextRival",

  -- Auto roll controls.
  autoRollAttacker = "autoRollAttacker",
  autoRollAtkBlue = "autoRollAtkBlue",
  autoRollAtkWhite = "autoRollAtkWhite",
  autoRollAtkPurple = "autoRollAtkPurple",
  autoRollAtkRed = "autoRollAtkRed",
  autoRollDefender = "autoRollDefender",
  autoRollDefBlue = "autoRollDefBlue",
  autoRollDefWhite = "autoRollDefWhite",
  autoRollDefPurple = "autoRollDefPurple",
  autoRollDefRed = "autoRollDefRed",

  -- Status buttons for attacker.
  atkStatusCurse = "atkStatusCurse",
  atkStatusBurn = "atkStatusBurn",
  atkStatusPoison = "atkStatusPoison",
  atkStatusSleep = "atkStatusSleep",
  atkStatusParalysis = "atkStatusParalysis",
  atkStatusFrozen = "atkStatusFrozen",
  atkStatusConfuse = "atkStatusConfuse",

  -- Status buttons for defender.
  defStatusCurse = "defStatusCurse",
  defStatusBurn = "defStatusBurn",
  defStatusPoison = "defStatusPoison",
  defStatusSleep = "defStatusSleep",
  defStatusParalysis = "defStatusParalysis",
  defStatusFrozen = "defStatusFrozen",
  defStatusConfuse = "defStatusConfuse",
}

local buttonIndexById = {}

-- Registers button.
local function register_button(id)
  local buttons = self.getButtons()
  if not buttons or #buttons == 0 then
    return
  end

  buttonIndexById[id] = buttons[#buttons].index
end

-- Creates button params supplies inputs.
local function create_button(id, params)
  self.createButton(params)
  register_button(id)
end

-- Locates a button by label or click function.
local function find_button(id)
  local buttons = self.getButtons()
  if not buttons then
    return nil
  end

  for _, button in ipairs(buttons) do
    if button.label == id or button.click_function == id then
      return button
    end
  end

  return nil
end

-- Edits button params supplies inputs.
local function edit_button(id, params)
  local button_index = buttonIndexById[id]
  if not button_index then
    local button = find_button(id)
    if not button then
      print("Button id not found: " .. tostring(id))
      return
    end

    button_index = button.index
    buttonIndexById[id] = button_index
  end

  params.index = button_index
  self.editButton(params)
end

-- Table to track dice that need to be despawned.
ATK_SPAWNED_DICE_TABLE = {}
DEF_SPAWNED_DICE_TABLE = {}

-- Table to standardize the status strings.
local status_ids = {
  -- Status names.
  burn = "Burn", 
  paralyze = "Paralyze", 
  poison = "Poison", 
  sleep = "Sleep", 
  freeze = "Freeze", 
  confuse = "Confuse", 
  curse = "Curse", 
  doubleadvantage = "DoubleAdvantage",
  advantage = "Advantage",
  disadvantage = "Disadvantage",
  doubledisadvantage = "DoubleDisadvantage",
  addDice = "AddDice",
  addDice2 = "AddDice2",
  recharge = "Recharge",
  enraged = "Enraged",
  protection = "Protection",
  priority = "Priority",
  KO = "KO",
  switch = "Switch",
  neutral = "Neutral",                    -- Indicates that the move ignores any advantage/disadvantage schemes.
  reversal = "Reversal",
  d4Dice = "D4Dice",
  knockOff = "KnockOff",
  statDown = "StatDown",                  -- Not implemented.
  conditionBoost = "ConditionBoost",
  lifeRecovery = "LifeRecovery",
  statusHeal = "StatusHeal",
  revival = "Revival",
  disable = "Disable",

  -- More special statuses.
  custom = "Custom",                      -- We don't want a lot of these. Simulation deal breakers.
  iceFang = "IceFang",
  thunderFang = "ThunderFang",
  fireFang = "FireFang",
  direClaw = "DireClaw",
  saltCure = "SaltCure",
  escapePrevention = "EscapePrevention",  -- Not implemented.
  
  -- Status characteristics.
  enemy = "Enemy",
  the_self = "Self"
}

local status_bag_guid_by_status = {
  [status_ids.burn] = statusGUID.burned,
  [status_ids.paralyze] = statusGUID.paralyzed,
  [status_ids.poison] = statusGUID.poisoned,
  [status_ids.sleep] = statusGUID.sleep,
  [status_ids.freeze] = statusGUID.frozen,
  [status_ids.confuse] = statusGUID.confused,
  [status_ids.curse] = statusGUID.cursed
}

local status_immunity_types = {
  [status_ids.burn] = { Fire = true },
  [status_ids.poison] = { Poison = true, Steel = true },
  [status_ids.paralyze] = { Electric = true },
  [status_ids.freeze] = { Ice = true }
}

-- Field effects or other arena specific items.
-- This weird syntax is required because of how we are checking for Field Effects (lazily).
local field_effect_ids = {
  safeguard = "Safeguard",
  mist = "Mist",
  spikes = "Spikes",
  electricterrain = "ElectricTerrain",  -- Whole arena.
  grassyterrain = "GrassyTerrain",      -- Whole arena.
  hail = "Hail",                        -- Whole arena.
  psychicterrain = "PsychicTerrain",    -- Whole arena.
  rain = "Rain",                        -- Whole arena.
  harshsunlight = "HarshSunlight",      -- Whole arena.
  sandstorm = "Sandstorm",              -- Whole arena.
  stealthrock = "StealthRock",
  toxicspikes = "ToxicSpikes",
  mistyterrain = "MistyTerrain",        -- Whole arena.
  renewal = "Renewal",
  fieldClear = "FieldClear"             -- Whole arena.
}

-- Table to keep track of Field Effect tile GUIDs and which side. The first side is the front.
local field_effect_tile_data = {
  ["490b0f"] = { effects = { field_effect_ids.safeguard, field_effect_ids.mist }, position = {-51, 1.31, 50} },
  ["f13b22"] = { effects = { field_effect_ids.safeguard, field_effect_ids.mist }, position = {-48.5, 1.31, 50} },
  ["bda854"] = { effects = { field_effect_ids.renewal, field_effect_ids.spikes }, position = {-46, 1.31, 50} },
  ["b9d199"] = { effects = { field_effect_ids.electricterrain, field_effect_ids.grassyterrain }, position = {-51, 1.31, 47.5} },
  ["6cd428"] = { effects = { field_effect_ids.hail, field_effect_ids.psychicterrain }, position = {-48.5, 1.31, 47.5} },
  ["efa792"] = { effects = { field_effect_ids.spikes, field_effect_ids.renewal }, position = {-46, 1.31, 47.5} },
  ["7b691a"] = { effects = { field_effect_ids.toxicspikes, field_effect_ids.mistyterrain }, position = {-51, 1.31, 45} },
  ["76d12c"] = { effects = { field_effect_ids.rain, field_effect_ids.harshsunlight }, position = {-48.5, 1.31, 45} },
  ["114ddd"] = { effects = { field_effect_ids.stealthrock, field_effect_ids.sandstorm }, position = {-46, 1.31, 45} },
  ["03704f"] = { effects = { field_effect_ids.toxicspikes, field_effect_ids.stealthrock }, position = {-51, 1.31, 42.5} }
}

local noMoveData = {name="NoMove", power=0, dice=6, status=DEFAULT}
local wildPokemonGUID = nil
local wildPokemonKanto = nil
local wildPokemonColorIndex = nil
local gymLeaderGuid = nil
local isSecondTrainer = false

local multiEvolving = false
local multiEvoData={}
-- Used for models during multi-evo.
local multiEvoGuids={}

-- States.
local inBattle = false

--Arena Positions
local defenderPos = {pokemon={-36.01, 4.19}, dice={-36.03, 6.26}, status={-31.25, 4.44}, statusCounters={-31.25, 6.72}, item={-40.87, 4.26}, moveDice={-36.11, 8.66}, booster={-41.09, 13.40}, healthIndicator={-38, 1.06, 2.34}}
local attackerPos = {pokemon={-36.06,-4.23}, dice={-36.03,-6.15}, status={-31.25,-4.31}, statusCounters={-31.25,-6.74}, item={-40.87,-4.13}, moveDice={-36.11,-8.53}, booster={-41.10, -13.28}, healthIndicator={-38, 1.06, -2.34}}

--------------------------
-- Save/Load functions.
--------------------------

-- Basic initialize function that receives the rack GUIDs.
function initialize(params)
  yellowRack = params[1]
  greenRack = params[2]
  blueRack = params[3]
  redRack = params[4]
  purpleRack = params[5]
  orangeRack = params[6]
end

-- Event handler for save.
function onSave()
  local save_table = {
    in_battle = inBattle,
    blueRack = blueRack,
    greenRack = greenRack,
    orangeRack = orangeRack,
    purpleRack = purpleRack,
    redRack = redRack,
    yellowRack = yellowRack
  }
  return JSON.encode(save_table)
end

-- Event handler for load.
function onLoad(saved_data)
    -- Check if there is saved data.
    local save_table
    if saved_data and saved_data ~= "" then
      save_table = JSON.decode(saved_data)
    end

    -- Parse the saved data.
    if save_table then
      inBattle = save_table.in_battle
      blueRack = save_table.blueRack
      greenRack = save_table.greenRack
      orangeRack = save_table.orangeRack
      purpleRack = save_table.purpleRack
      redRack = save_table.redRack
      yellowRack = save_table.yellowRack
    end
  
    -- Do some safety checks.
    if inBattle == nil then
      inBattle = false
    end

    buttonIndexById = {}

    -- Create Arena Buttons
    create_button(BUTTON_ID.atkFaint, {label="FAINT", click_function="recallAndFaintAttackerPokemon",function_owner=self, tooltip="Recall and Faint Pokémon",position={teamAtkPos.x, 1000, teamAtkPos.z}, height=300, width=720, font_size=200})
    create_button(BUTTON_ID.atkMoves, {label="MOVES", click_function="seeMoveRules",function_owner=self, tooltip="Show Move Rules",position={movesAtkPos.x, 1000, movesAtkPos.z}, height=300, width=720, font_size=200})
    create_button(BUTTON_ID.atkRecall, {label="RECALL", click_function="recallAtkArena",function_owner=self, tooltip="Recall Pokémon",position={recallAtkPos.x, 1000, recallAtkPos.z}, height=300, width=720, font_size=200})
    create_button(BUTTON_ID.atkLevelUp, {label="+", click_function="increaseAtkArena",function_owner=self, tooltip="Increase Level",position={incLevelAtkPos.x, 1000, incLevelAtkPos.z}, height=300, width=240, font_size=200})
    create_button(BUTTON_ID.atkLevelDown, {label="-", click_function="decreaseAtkArena",function_owner=self, tooltip="Decrease Level",position={decLevelAtkPos.x, 1000, decLevelAtkPos.z}, height=300, width=240, font_size=200})
    create_button(BUTTON_ID.atkStatusUp, {label="+", click_function="addAtkStatus",function_owner=self, tooltip="Add Status Counter",position={incStatusAtkPos.x, 1000, incStatusAtkPos.z}, height=300, width=200, font_size=200})
    create_button(BUTTON_ID.atkStatusDown, {label="-", click_function="removeAtkStatus",function_owner=self, tooltip="Remove Status Counter",position={decStatusAtkPos.x, 1000, decStatusAtkPos.z}, height=300, width=200, font_size=200})
    create_button(BUTTON_ID.atkEvo1, {label="E1", click_function="evolveAtk",function_owner=self, tooltip="Choose Evolution 1",position={-42.5, 1000, -0.33}, height=300, width=240, font_size=200})
    create_button(BUTTON_ID.atkEvo2, {label="E2", click_function="evolveTwoAtk",function_owner=self, tooltip="Choose Evolution 2",position={-45.15, 1000, -0.33}, height=300, width=240, font_size=200})
    create_button(BUTTON_ID.atkMove1, {label="Move 1", click_function="attackMove1", function_owner=self, position={-45, 1000, atkMoveZPos}, height=300, width=1600, font_size=200})
    create_button(BUTTON_ID.atkMove2, {label="Move 2", click_function="attackMove2", function_owner=self, position={-40, 1000, atkMoveZPos}, height=300, width=1600, font_size=200})
    create_button(BUTTON_ID.atkMove3, {label="Move 3", click_function="attackMove3", function_owner=self, position={-35, 1000, atkMoveZPos}, height=300, width=1600, font_size=200})
    create_button(BUTTON_ID.atkMove4, {label="Move 4", click_function="attackMove4", function_owner=self, position={-30, 1000, atkMoveZPos}, height=300, width=1600, font_size=200})
    create_button(BUTTON_ID.atkMove1Disable, {label="Disable", click_function="atkMove1Disable", function_owner=self, position={-30, 1000, atkMoveDisableZPos}, height=200, width=1030, font_size=120})
    create_button(BUTTON_ID.atkMove2Disable, {label="Disable", click_function="atkMove2Disable", function_owner=self, position={-30, 1000, atkMoveDisableZPos}, height=200, width=1030, font_size=120})
    create_button(BUTTON_ID.atkMove3Disable, {label="Disable", click_function="atkMove3Disable", function_owner=self, position={-30, 1000, atkMoveDisableZPos}, height=200, width=1030, font_size=120})
    create_button(BUTTON_ID.atkMove4Disable, {label="Disable", click_function="atkMove4Disable", function_owner=self, position={-30, 1000, atkMoveDisableZPos}, height=200, width=1030, font_size=120})
    create_button(BUTTON_ID.atkRandomMove, {label="RANDOM MOVE", click_function="randomAttackMove", function_owner=self, position={atkConfirmPos.x, 1000, atkConfirmPos.z}, height=300, width=1600, font_size=200})

    create_button(BUTTON_ID.defFaint, {label="FAINT", click_function="recallAndFaintDefenderPokemon",function_owner=self, tooltip="Recall and Faint Pokémon",position={teamDefPos.x, 1000, teamDefPos.z}, height=300, width=720, font_size=200})
    create_button(BUTTON_ID.defMoves, {label="MOVES", click_function="seeMoveRules",function_owner=self, tooltip="Show Move Rules",position={movesDefPos.x, 1000, movesDefPos.z}, height=300, width=720, font_size=200})
    create_button(BUTTON_ID.defRecall, {label="RECALL", click_function="recallDefArena",function_owner=self, tooltip="Recall Pokémon",position={recallDefPos.x, 1000, recallDefPos.z}, height=300, width=720, font_size=200})
    create_button(BUTTON_ID.defLevelUp, {label="+", click_function="increaseDefArena",function_owner=self, tooltip="Increase Level",position={incLevelDefPos.x, 1000, incLevelDefPos.z}, height=300, width=240, font_size=200})
    create_button(BUTTON_ID.defLevelDown, {label="-", click_function="decreaseDefArena",function_owner=self, tooltip="Decrease Level",position={decLevelDefPos.x, 1000, decLevelDefPos.z}, height=300, width=240, font_size=200})
    create_button(BUTTON_ID.defStatusUp, {label="+", click_function="addDefStatus",function_owner=self, tooltip="Add Status Counter",position={incStatusDefPos.x, 1000, incStatusDefPos.z}, height=300, width=200, font_size=200})
    create_button(BUTTON_ID.defStatusDown, {label="-", click_function="removeDefStatus",function_owner=self, tooltip="Remove Status Counter",position={decStatusDefPos.x, 1000, decStatusDefPos.z}, height=300, width=200, font_size=200})
    create_button(BUTTON_ID.defEvo1, {label="E1", click_function="evolveDef",function_owner=self, tooltip="Choose Evolution 1",position={-38, 1000, -7.19}, height=300, width=240, font_size=200})
    create_button(BUTTON_ID.defEvo2, {label="E2", click_function="evolveTwoDef",function_owner=self, tooltip="Choose Evolution 2",position={-37, 1000, -7.19}, height=300, width=240, font_size=200})
    create_button(BUTTON_ID.defMove1, {label="Move 1", click_function="defenseMove1", function_owner=self, position={-45, 1000, defMoveZPos}, height=300, width=1600, font_size=200})
    create_button(BUTTON_ID.defMove2, {label="Move 2", click_function="defenseMove2", function_owner=self, position={-40, 1000, defMoveZPos}, height=300, width=1600, font_size=200})
    create_button(BUTTON_ID.defMove3, {label="Move 3", click_function="defenseMove3", function_owner=self, position={-35, 1000, defMoveZPos}, height=300, width=1600, font_size=200})
    create_button(BUTTON_ID.defMove4, {label="Move 4", click_function="defenseMove4", function_owner=self, position={-30, 1000, defMoveZPos}, height=300, width=1600, font_size=200})
    create_button(BUTTON_ID.defMove1Disable, {label="Disable", click_function="defMove1Disable", function_owner=self, position={-25, 1000, defMoveDisableZPos}, height=200, width=1030, font_size=120})
    create_button(BUTTON_ID.defMove2Disable, {label="Disable", click_function="defMove2Disable", function_owner=self, position={-20, 1000, defMoveDisableZPos}, height=200, width=1030, font_size=120})
    create_button(BUTTON_ID.defMove3Disable, {label="Disable", click_function="defMove3Disable", function_owner=self, position={-15, 1000, defMoveDisableZPos}, height=200, width=1030, font_size=120})
    create_button(BUTTON_ID.defMove4Disable, {label="Disable", click_function="defMove4Disable", function_owner=self, position={-10, 1000, defMoveDisableZPos}, height=200, width=1030, font_size=120})
    create_button(BUTTON_ID.defRandomMove, {label="RANDOM MOVE", click_function="randomDefenseMove", function_owner=self, position={defConfirmPos.x, 1000, defConfirmPos.z}, height=300, width=1600, font_size=200})

    -- Multi Evolution Buttons
    create_button(BUTTON_ID.multiEvo1, {label="SELECT", click_function="multiEvo1", function_owner=self, position={0, 1000, 0}, height=300, width=1000, font_size=200})
    create_button(BUTTON_ID.multiEvo2, {label="SELECT", click_function="multiEvo2", function_owner=self, position={0, 1000, 0}, height=300, width=1000, font_size=200})
    create_button(BUTTON_ID.multiEvo3, {label="SELECT", click_function="multiEvo3", function_owner=self, position={0, 1000, 0}, height=300, width=1000, font_size=200})
    create_button(BUTTON_ID.multiEvo4, {label="SELECT", click_function="multiEvo4", function_owner=self, position={0, 1000, 0}, height=300, width=1000, font_size=200})
    create_button(BUTTON_ID.multiEvo5, {label="SELECT", click_function="multiEvo5", function_owner=self, position={0, 1000, 0}, height=300, width=1000, font_size=200})
    create_button(BUTTON_ID.multiEvo6, {label="SELECT", click_function="multiEvo6", function_owner=self, position={0, 1000, 0}, height=300, width=1000, font_size=200})
    create_button(BUTTON_ID.multiEvo7, {label="SELECT", click_function="multiEvo7", function_owner=self, position={0, 1000, 0}, height=300, width=1000, font_size=200})
    create_button(BUTTON_ID.multiEvo8, {label="SELECT", click_function="multiEvo8", function_owner=self, position={0, 1000, 0}, height=300, width=1000, font_size=200})
    create_button(BUTTON_ID.multiEvo9, {label="SELECT", click_function="multiEvo9", function_owner=self, position={0, 1000, 0}, height=300, width=1000, font_size=200})
    
    create_button(BUTTON_ID.battleWild, {label="BATTLE", click_function="battleWildPokemon", function_owner=self, position={defConfirmPos.x, 1000, -6.2}, height=300, width=1600, font_size=200})
    create_button(BUTTON_ID.nextPokemon, {label="NEXT POKEMON", click_function="flipGymLeader", function_owner=self, position={3.5, 1000, -0.6}, height=300, width=1600, font_size=200})

    -- Tera buttons.
    create_button(BUTTON_ID.teraAttacker, {label="", click_function="changeAttackerTeraType", function_owner=self, tooltip="Terastallize Attacker", position={3.5, 1000, -0.6}, height=300, width=2200, font_size=200})
    create_button(BUTTON_ID.teraDefender, {label="", click_function="changeDefenderTeraType", function_owner=self, tooltip="Terastallize Defender", position={3.5, 1000, -0.6}, height=300, width=2200, font_size=200})
    -- Next Rival.
    create_button(BUTTON_ID.nextRival, {label="NEXT POKEMON", click_function="flipRivalPokemon", function_owner=self, position={3.5, 1000, -0.6}, height=300, width=1600, font_size=200})
    -- AutoRoller buttons.
    create_button(BUTTON_ID.autoRollAttacker, {label="Autoroll", click_function="autoRollAttacker", function_owner=self, tooltip="AutoRoll Attacker", position={3.5, 1000, -0.6}, height=300, width=1200, font_size=200})
    create_button(BUTTON_ID.autoRollAtkBlue, {label="0", click_function="adjustAtkDiceBlue", function_owner=self, tooltip="D8 Dice", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color="Blue"})
    create_button(BUTTON_ID.autoRollAtkWhite, {label="1", click_function="adjustAtkDiceWhite", function_owner=self, tooltip="D6 Dice", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color="White"})
    create_button(BUTTON_ID.autoRollAtkPurple, {label="0", click_function="adjustAtkDicePurple", function_owner=self, tooltip="D4 Dice", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color="Purple"})
    create_button(BUTTON_ID.autoRollAtkRed, {label="Effect Roll", click_function="rollAtkEffectDie", function_owner=self, tooltip="Roll One Effect Die", position={3.5, 1000, -0.6}, height=300, width=1200, font_size=200, color="Red"})
    create_button(BUTTON_ID.autoRollDefender, {label="Autoroll", click_function="autoRollDefender", function_owner=self, tooltip="AutoRoll Defender", position={3.5, 1000, -0.6}, height=300, width=1200, font_size=200})
    create_button(BUTTON_ID.autoRollDefBlue, {label="0", click_function="adjustDefDiceBlue", function_owner=self, tooltip="D8 Dice", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color="Blue"})
    create_button(BUTTON_ID.autoRollDefWhite, {label="1", click_function="adjustDefDiceWhite", function_owner=self, tooltip="D6 Dice", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color="White"})
    create_button(BUTTON_ID.autoRollDefPurple, {label="0", click_function="adjustDefDicePurple", function_owner=self, tooltip="D4 Dice", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color="Purple"})
    create_button(BUTTON_ID.autoRollDefRed, {label="Effect Roll", click_function="rollDefEffectDie", function_owner=self, tooltip="Roll One Effect Die", position={3.5, 1000, -0.6}, height=300, width=1200, font_size=200, color="Red"})
    -- Attacker status buttons.
    create_button(BUTTON_ID.atkStatusCurse, {label="CRS", click_function="applyCursedAttacker", function_owner=self, tooltip="Apply Cursed Status to Attacker", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={106/255, 102/255, 187/255}})
    create_button(BUTTON_ID.atkStatusBurn, {label="BRN", click_function="applyBurnedAttacker", function_owner=self, tooltip="Apply Burned Status to Attacker", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={255/255, 68/255, 34/255}})
    create_button(BUTTON_ID.atkStatusPoison, {label="PSN", click_function="applyPoisonedAttacker", function_owner=self, tooltip="Apply Poisoned Status to Attacker", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={170/255, 85/255, 153/255}})
    create_button(BUTTON_ID.atkStatusSleep, {label="SLP", click_function="applySleepAttacker", function_owner=self, tooltip="Apply Sleep Status to Attacker", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={255/255, 85/255, 153/255}})
    create_button(BUTTON_ID.atkStatusParalysis, {label="PAR", click_function="applyParalyzedAttacker", function_owner=self, tooltip="Apply Paralysis Status to Attacker", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={255/255, 204/255, 51/255}})
    create_button(BUTTON_ID.atkStatusFrozen, {label="FRZ", click_function="applyFrozenAttacker", function_owner=self, tooltip="Apply Frozen Status to Attacker", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={102/255, 204/255, 255/255}})
    create_button(BUTTON_ID.atkStatusConfuse, {label="CNF", click_function="applyConfusionAttacker", function_owner=self, tooltip="Apply Confusion Status to Attacker", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={255/255, 85/255, 153/255}})
    -- Defender status buttons.
    create_button(BUTTON_ID.defStatusCurse, {label="CRS", click_function="applyCursedDefender", function_owner=self, tooltip="Apply Cursed Status to Defender", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={106/255, 102/255, 187/255}})
    create_button(BUTTON_ID.defStatusBurn, {label="BRN", click_function="applyBurnedDefender", function_owner=self, tooltip="Apply Burned Status to Defender", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={255/255, 68/255, 34/255}})
    create_button(BUTTON_ID.defStatusPoison, {label="PSN", click_function="applyPoisonedDefender", function_owner=self, tooltip="Apply Poisoned Status to Defender", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={170/255, 85/255, 153/255}})
    create_button(BUTTON_ID.defStatusSleep, {label="SLP", click_function="applySleepDefender", function_owner=self, tooltip="Apply Sleep Status to Defender", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={255/255, 85/255, 153/255}})
    create_button(BUTTON_ID.defStatusParalysis, {label="PAR", click_function="applyParalyzedDefender", function_owner=self, tooltip="Apply Paralysis Status to Defender", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={255/255, 204/255, 51/255}})
    create_button(BUTTON_ID.defStatusFrozen, {label="FRZ", click_function="applyFrozenDefender", function_owner=self, tooltip="Apply Frozen Status to Defender", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={102/255, 204/255, 255/255}})
    create_button(BUTTON_ID.defStatusConfuse, {label="CNF", click_function="applyConfusionDefender", function_owner=self, tooltip="Apply Confusion Status to Defender", position={3.5, 1000, -0.6}, height=300, width=400, font_size=200, color={255/255, 85/255, 153/255}})

    -- Check if we are in battle.
    if inBattle then
      -- Panic, <wave hand>. We are no longer in battle.
      inBattle = false

      -- Clear texts.
      clearMoveText(ATTACKER)
      clearMoveText(DEFENDER)
      
      -- Mass clear of buttons and labels.
      hideRandomMoveButton(DEFENDER)
      showFlipRivalButton(false)
      edit_button(BUTTON_ID.battleWild, { label="BATTLE"})
      showWildPokemonButton(false)
      showFlipGymButton(false)
      hideRandomMoveButton(ATTACKER)
      showAtkButtons(false)
      showDefButtons(false)
      showAutoRollButtons(false)
      moveStatusButtons(false)

      -- Clear data.
      clearPokemonData(DEFENDER)
      clearTrainerData(DEFENDER)
      clearPokemonData(ATTACKER)
      clearTrainerData(ATTACKER)

      Global.call("PlayRouteMusic",{})
    end

  -- Make this object not interactable.
  self.interactable = false
end

--------------------------
-- Support functions called by Global.lua or other scripts.
--------------------------

function isBattleInProgress()
  -- TODO: this returns true if the Trainer controlled attacker Pokemon is in the arena waiting. This is fine *for now*.
  -- NOTE: I am dumb. I forgot there is a "inBattle" variable. Can it be trusted? >.>
  if attackerData == nil or defenderData == nil then return false end
  return attackerData.type ~= nil or defenderData.type ~= nil
end

-- Returns attacker type.
function getAttackerType()
  if attackerData == nil or attackerData.type == nil then
    return nil
  end

  return attackerData.type
end

-- Returns defender type.
function getDefenderType()
  if defenderData == nil or defenderData.type == nil then
    return nil
  end

  return defenderData.type
end

--------------------------
-- Tera related functions.
--------------------------

function createAttackerTeraLabel()
  local label = attackerPokemon.types[1]
  if attackerPokemon.teraActive then
    label = attackerPokemon.teraType
  elseif Global.call("getDualTypeEffectiveness") and attackerPokemon.types[2] then
    label = label .. "/" .. attackerPokemon.types[2]
  else
  end
  return label
end

-- Handles change attacker tera type.
function changeAttackerTeraType()
  if attackerPokemon.teraType == nil or attackerPokemon.types == nil then
    print("Cannot Terastallize the attacker without a Tera card!")
    return
  end
  
  -- Toggle the tera active.
  if attackerPokemon.teraActive == nil then attackerPokemon.teraActive = false end
  attackerPokemon.teraActive = not (attackerPokemon.teraActive)

  -- Update the effectiveness of moves.
  updateTypeEffectiveness()

  -- Show the attacker tera buttons.
  local label = createAttackerTeraLabel()
  showAttackerTeraButton(true, label)
end

-- Shows attacker tera button.
function showAttackerTeraButton(visible, type_label)
  local yPos = visible and 0.5 or 1000
  local label = type_label and "Current: " .. type_label or ""
  edit_button(BUTTON_ID.teraAttacker, { label=label, position={2.6, yPos, 0.6}})
end

-- Creates defender tera label.
function createDefenderTeraLabel()
  local label = defenderPokemon.types[1]
  if defenderPokemon.teraActive then
    label = defenderPokemon.teraType
  elseif Global.call("getDualTypeEffectiveness") and defenderPokemon.types[2] then
    label = label .. "/" .. defenderPokemon.types[2]
  end
  return label
end

-- Handles change defender tera type.
function changeDefenderTeraType()
  if defenderPokemon.teraType == nil or defenderPokemon.types == nil then
    print("Cannot Terastallize the defender without a Tera card!")
    return
  end

  -- Toggle the tera active.
  if defenderPokemon.teraActive == nil then defenderPokemon.teraActive = false end
  defenderPokemon.teraActive = not (defenderPokemon.teraActive)

  -- Update the effectiveness of moves.
  updateTypeEffectiveness()

  -- Show the defender tera buttons.
  local label = createDefenderTeraLabel()
  showDefenderTeraButton(true, label)
end

-- Shows defender tera button.
function showDefenderTeraButton(visible, type_label)
  local yPos = visible and 0.5 or 1000
  local label = type_label and "Current: " .. type_label or ""
  edit_button(BUTTON_ID.teraDefender, { label=label, position={2.6, yPos, -0.6}})
end

--------------------------
-- Core BattleManager functionality.
--------------------------

function flipGymLeader()
  if defenderData.type ~= GYM then
    return
  end

  showDefenderTeraButton(false)

  -- Check if we had a Booster and discard it.
  if defenderData.boosterGuid ~= nil then
    discardBooster(DEFENDER)
    defenderPokemon.teraActive = false
  end

  -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.) This is extra gross because
  -- I didn't feel like figuring out to fake allllll of the initialization process for RivalData models that may 
  -- never ever get seen for a game. Also it is extra complicated because we need two models per token.
  if Global.call("get_models_enabled") then
    -- Get the active model GUID. This prevents despawning the wrong model.
    local model_guid = Global.call("get_model_guid", defenderPokemon.pokemonGUID)
    if model_guid == nil then
      model_guid = defenderPokemon.model_GUID
    end
    
    local despawn_data = {
      chip = defenderPokemon.pokemonGUID,
      state = defenderPokemon,
      base = defenderPokemon,
      model = model_guid
    }

    Global.call("despawn_now", despawn_data)
  end

  -- Remove the current data 
  Global.call("remove_from_active_chips_by_GUID", defenderPokemon.pokemonGUID)

  -- Update pokemon and arena info
  setNewPokemon(defenderPokemon, defenderPokemon.pokemon2, defenderPokemon.pokemonGUID)

  -- Check if this Gym Leader gets a booster.
  local booster_chance = Global.call("getBoostersChance")
  if math.random(1,100) > (100 - booster_chance) then
    getBooster(DEFENDER, nil)
  end

  -- Check if we have a TM booster.
  local cardMoveData = nil
  if defenderData.tmCard then
    local cardObject = getObjectFromGUID(defenderData.boosterGuid)
    if cardObject then
      cardMoveData = copyTable(Global.call("GetMoveDataByName", cardObject.getName()))
    end
  end

  -- Update the moves.
  updateMoves(DEFENDER, defenderPokemon, cardMoveData)
  showFlipGymButton(false)

  -- Check if we have a Tera booster.
  if defenderData.teraType then
    local teraData = Global.call("GetTeraDataByGUID", defenderData.boosterGuid)
    if teraData ~= nil then
      -- Update the pokemon data.
      defenderPokemon.teraType = teraData.type
      -- Create the Tera label.
      local label = defenderPokemon.pokemon2.types[1]
      if Global.call("getDualTypeEffectiveness") and defenderPokemon.pokemon2.types[2] then
        label = label .. "/" .. defenderPokemon.pokemon2.types[2]
      end
      -- Show the defender Tera button.
      showDefenderTeraButton(true, label)
    end
  end

  -- Update the defender pokemon value counter.
  defenderData.attackValue.level = defenderPokemon.pokemon2.baseLevel
  updateAttackValueCounter(DEFENDER)

  -- Get the rival token object handle.
  local gymLeaderCard = getObjectFromGUID(defenderData.trainerGUID)

  -- Handle the model.
  local pokemonModelData = nil
  if Global.call("get_models_enabled") then
    -- The model fields don't get passed in via params here because the gyms don't save it. Modifying all of
    -- files would make me very sad.
    local gymData = Global.call("GetGymDataByGUID", {guid=defenderData.trainerGUID})
    
    -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.) This is extra gross because
    -- I didn't feel like figuring out to fake allllll of the initialization process for RivalData models that may 
    -- never ever get seen for a game. Also it is extra complicated because we need two models per token.
    pokemonModelData = {
      chip_GUID = defenderData.trainerGUID,
      base = {
        name = defenderPokemon.name,
        created_before = false,
        in_creation = false,
        persistent_state = true,
        picked_up = false,
        despawn_time = 1.0,
        model_GUID = defenderPokemon.model_GUID,
        custom_rotation = {gymLeaderCard.getRotation().x, gymLeaderCard.getRotation().y, gymLeaderCard.getRotation().z}
      },
      picked_up = false,
      in_creation = false,
      scale_set = {},
      isTwoFaced = true
    }
    pokemonModelData.chip = defenderData.trainerGUID
    Global.call("force_shiny_spawn", {guid=defenderData.trainerGUID, state=false})

    -- Copy the base to a state.
    pokemonModelData.state = pokemonModelData.base

    -- Check if the params have field overrides.
    if gymData.pokemon[2].offset == nil then pokemonModelData.base.offset = {x=0, y=0, z=-0.17} else pokemonModelData.base.offset = gymData.pokemon[2].offset end
    if gymData.pokemon[2].custom_scale == nil then pokemonModelData.base.custom_scale = 1 else pokemonModelData.base.custom_scale = gymData.pokemon[2].custom_scale end
    if gymData.pokemon[2].idle_effect == nil then pokemonModelData.base.idle_effect = "Idle" else pokemonModelData.base.idle_effect = gymData.pokemon[2].idle_effect end
    if gymData.pokemon[2].spawn_effect == nil then pokemonModelData.base.spawn_effect = "Special Attack" else pokemonModelData.base.spawn_effect = gymData.pokemon[2].spawn_effect end
    if gymData.pokemon[2].run_effect == nil then pokemonModelData.base.run_effect = "Run" else pokemonModelData.base.run_effect = gymData.pokemon[2].run_effect end
    if gymData.pokemon[2].faint_effect == nil then pokemonModelData.base.faint_effect = "Faint" else pokemonModelData.base.faint_effect = gymData.pokemon[2].faint_effect end
  end

  -- Flip the gym leader card.
  gymLeaderCard.unlock()
  gymLeaderCard.flip()

  if Global.call("get_models_enabled") then
    -- Add it to the active chips.
    local model_already_created = Global.call("add_to_active_chips_by_GUID", {guid=defenderPokemon.pokemonGUID, data=pokemonModelData})
    pokemonModelData.base.created_before = model_already_created

    -- Wait until the gym leader card is idle.
    Wait.condition(
      function() -- Conditional function.
        -- Spawn in the model with the above arguments.
        Global.call("check_for_spawn_or_despawn", pokemonModelData)
      end,
      function() -- Condition function
        return gymLeaderCard ~= nil and gymLeaderCard.resting
      end,
      2,
      function() -- Timeout function.
        -- Spawn in the model with the above arguments. But this time the card is still moving, darn.
        Global.call("check_for_spawn_or_despawn", pokemonModelData)
      end
    )
    
    -- Sometimes the model gets placed upside down (I have no idea why lol). Detect it and fix it if needed.
    Wait.condition(
      function() -- Conditional function.
        -- Get a handle to the model.
        local model_guid = Global.call("get_model_guid", defenderData.trainerGUID)
        if model_guid == nil then return end
        local model = getObjectFromGUID(model_guid)
        if model ~= nil then
          local model_rotation = model.getRotation()
          if math.abs(model_rotation.z-180) < 1 or math.abs(model_rotation.x-0) then
            model.setRotation({0, model_rotation.y, 0})
          end
        end
      end,
      function() -- Condition function
        return Global.call("get_model_guid", defenderData.trainerGUID) ~= nil
      end,
      2
    )
  end

  Wait.condition(
    function()
      -- Lock the gym card in place.
      gymLeaderCard.lock()
    end,
    function() -- Condition function
      return gymLeaderCard ~= nil and gymLeaderCard.resting
    end,
    2
  )

  -- Check if we need to adjust a health indicator.
  if Global.call("getHpRule2Set") then
    -- Get a handle on the object.
    local health_indicator = getObjectFromGUID(defenderData.health_indicator_guid)
    if health_indicator then
      health_indicator.call("setValue", defenderPokemon.pokemon2.baseLevel)
    end
  end

  -- Delete any status cards or status tokens.
  removeStatusAndTokens(DEFENDER)

  -- Clear texts.
  clearMoveText(ATTACKER)
  clearMoveText(DEFENDER)
end

-- Flips rival pokemon.
function flipRivalPokemon()
  if attackerData.type ~= RIVAL then
    return
  end

  showAttackerTeraButton(false)

  -- Check if we had a Booster and discard it.
  if attackerData.boosterGuid ~= nil then
    discardBooster(ATTACKER)
    attackerPokemon.teraActive = false
  end

  -- Check if this Rival gets a booster.
  local booster_chance = Global.call("getBoostersChance")
  if math.random(1,100) > (100 - booster_chance) then
    getBooster(ATTACKER, nil)
  end

  -- Check if we have a TM booster.
  local cardMoveData = nil
  if attackerData.tmCard then
    local cardObject = getObjectFromGUID(attackerData.boosterGuid)
    if cardObject then
      cardMoveData = copyTable(Global.call("GetMoveDataByName", cardObject.getName()))
    end
  end

  -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.) This is extra gross because
  -- I didn't feel like figuring out to fake allllll of the initialization process for RivalData models that may 
  -- never ever get seen for a game. Also it is extra complicated because we need two models per token.
  if Global.call("get_models_enabled") then
    -- Get the active model GUID. This prevents despawning the wrong model.
    local model_guid = Global.call("get_model_guid", attackerPokemon.pokemonGUID)
    if model_guid == nil then
      model_guid = attackerPokemon.model_GUID
    end

    local despawn_data = {
      chip = attackerPokemon.pokemonGUID,
      state = attackerPokemon,
      base = attackerPokemon,
      model = model_guid
    }

    Global.call("despawn_now", despawn_data)
  end

  -- Remove the current data 
  Global.call("remove_from_active_chips_by_GUID", attackerPokemon.pokemonGUID)

  -- Update pokemon and arena info
  setNewPokemon(attackerPokemon, attackerPokemon.pokemon2, attackerPokemon.pokemonGUID)
  updateMoves(ATTACKER, attackerPokemon, cardMoveData)
  showFlipRivalButton(false)

  -- Check if we have a Tera booster.
  if attackerData.teraType then
    local teraData = Global.call("GetTeraDataByGUID", attackerData.boosterGuid)
    if teraData ~= nil then
      -- Update the pokemon data.
      attackerPokemon.teraType = teraData.type
      -- Create the Tera label.
      local label = attackerPokemon.pokemon2.types[1]
      if Global.call("getDualTypeEffectiveness") and attackerPokemon.pokemon2.types[2] then
        label = label .. "/" .. attackerPokemon.pokemon2.types[2]
      end
      -- Show the defender Tera button.
      showAttackerTeraButton(true, label)
    end
  end

  -- Update the attacker value counter.
  attackerData.attackValue.level = attackerPokemon.baseLevel
  updateAttackValueCounter(ATTACKER)

  -- Get the rival token object handle.
  local rivalCard = getObjectFromGUID(attackerPokemon.pokemonGUID)
  
  -- Handle the model.
  local pokemonModelData = nil
  if Global.call("get_models_enabled") then
    -- Reformat the data so that the model code can use it to spawn the next model. (Sorry, I know this is hideous.) 
    -- This is extra gross because I didn't feel like figuring out to fake allllll of the initialization process for
    -- RivalData models that may never ever get seen for a game. Also it is extra complicated because we need two models per token.
    pokemonModelData = {
      chip_GUID = attackerPokemon.pokemonGUID,
      base = {
        name = attackerPokemon.name,
        created_before = false,
        in_creation = false,
        persistent_state = true,
        picked_up = false,
        despawn_time = 1.0,
        model_GUID = attackerPokemon.model_GUID,
        custom_rotation = {rivalCard.getRotation().x, rivalCard.getRotation().y + 180.0, rivalCard.getRotation().z}
      },
      picked_up = false,
      in_creation = false,
      scale_set = {},
      isTwoFaced = true
    } 
    pokemonModelData.chip = attackerPokemon.pokemonGUID
    Global.call("force_shiny_spawn", {guid=attackerPokemon.pokemonGUID, state=false})

    -- Copy the base to a state.
    pokemonModelData.state = pokemonModelData.base

    -- Check if the params have field overrides.
    if attackerPokemon.offset == nil then pokemonModelData.base.offset = {x=0, y=0, z=-0.17} else pokemonModelData.base.offset = attackerPokemon.offset end
    if attackerPokemon.custom_scale == nil then pokemonModelData.base.custom_scale = 1 else pokemonModelData.base.custom_scale = attackerPokemon.custom_scale end
    if attackerPokemon.idle_effect == nil then pokemonModelData.base.idle_effect = "Idle" else pokemonModelData.base.idle_effect = attackerPokemon.idle_effect end
    if attackerPokemon.spawn_effect == nil then pokemonModelData.base.spawn_effect = "Special Attack" else pokemonModelData.base.spawn_effect = attackerPokemon.spawn_effect end
    if attackerPokemon.run_effect == nil then pokemonModelData.base.run_effect = "Run" else pokemonModelData.base.run_effect = attackerPokemon.run_effect end
    if attackerPokemon.faint_effect == nil then pokemonModelData.base.faint_effect = "Faint" else pokemonModelData.base.faint_effect = attackerPokemon.faint_effect end
  end

  -- Flip the rival token.
  rivalCard.unlock()
  rivalCard.flip()
  
  if Global.call("get_models_enabled") then
    -- Add it to the active chips.
    local model_already_created = Global.call("add_to_active_chips_by_GUID", {guid=attackerPokemon.pokemonGUID, data=pokemonModelData})

    -- Spawn in the model with the above arguments.
    pokemonModelData.base.created_before = model_already_created
    Global.call("check_for_spawn_or_despawn", pokemonModelData)
  end

  -- Lock the rival token in place.
  Wait.condition(
    function()
      -- Lock the rival in place.
      rivalCard.lock()
    end,
    function() -- Condition function
      return rivalCard ~= nil and rivalCard.resting
    end,
    2
  )

  -- Check if we need to adjust a health indicator.
  if Global.call("getHpRule2Set") then
    -- Get a handle on the object.
    local health_indicator = getObjectFromGUID(attackerData.health_indicator_guid)
    if health_indicator then
      health_indicator.call("setValue", attackerPokemon.baseLevel)
    end
  end

  -- Clear texts.
  clearMoveText(ATTACKER)
  clearMoveText(DEFENDER)
end

-- This function is called by Global. When called, the BattleManager will move the Wild token 
-- to the arena and start the battle. The params.recall_params will allow a recall button to show.
function moveAndBattleWildPokemon(params)
  -- Check if a battle is in progress or if the Defender position is already occupied.
  if getDefenderType() ~= nil then
    printToAll("There is already a defending Pokémon in the arena")
    return
  end

  -- Get a handle on the model.
  local token = getObjectFromGUID(params.chip_guid)
  if not token then
    printToAll("Failed to find token for GUID " .. tostring(params.chip_guid))
    return
  end

  -- Move the Pokemon to the defender position.
  token.setPosition({defenderPos.pokemon[1], 2, defenderPos.pokemon[2]})

  -- Move the model.
  local pokemonData = Global.call("simple_get_active_pokemon_by_GUID", params.chip_guid)
  if pokemonData.model and Global.call("get_models_enabled") then
    -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.)
    pokemonData.chip = params.chip_guid

    Wait.condition(
      function() -- Conditional function.
        -- Move the model.
        pokemonData.model.setPosition(Global.call("model_position", pokemonData))
        pokemonData.model.setRotation({token.getRotation().x, token.getRotation().y, token.getRotation().z})
        pokemonData.model.setLock(true)
      end,
      function() -- Condition function
        return token ~= nil and token.resting and token.getPosition().y < 1.0
      end,
      2,
      function() -- Timeout function.
        -- Move the model. But the token is still moving, darn.
        pokemonData.model.setPosition(Global.call("model_position", pokemonData))
        pokemonData.model.setRotation({token.getRotation().x, token.getRotation().y, token.getRotation().z})
        pokemonData.model.setLock(true)
      end
    )
  end

  -- Wait for the token to come to a rest, then wait 0.5 seconds longer and start the battle.
  Wait.condition(
    function()
      Wait.time(function() battleWildPokemon(params.wild_battle_params, true) end, 0.5)
    end,
    function() -- Condition function
      return token.resting
    end,
    2
  )
end

-- Runs wild pokemon.
function battleWildPokemon(wild_battle_params, is_automated)
  -- Check if in a battle.
  if inBattle == false then
    -- Check if we have a GUID.
    if not wildPokemonGUID then return end

    -- Get the data of the Pokemon token we think is present.
    local pokemonData = Global.call("GetPokemonDataByGUID",{guid=wildPokemonGUID})

    -- Check if the pokemon token is on the table.
    local token = getObjectFromGUID(wildPokemonGUID)
    if not token then
      if pokemonData then
        printToAll(pokemonData.name " token is not on the table")
      else
        printToAll("No data known for this token or the token is not on the table")
      end
      wildPokemonGUID = nil
      wildPokemonKanto = nil
      wildPokemonColorIndex = nil
      return
    end

    -- Lock the wild token.
    token.lock()

    -- Give the status buttons.
    showDefStatusButtons(true)

    -- Update the BM data.
    setTrainerType(DEFENDER, WILD)
    defenderPokemon = {}
    setNewPokemon(defenderPokemon, pokemonData, wildPokemonGUID)

    inBattle = true
    
    Global.call("PlayTrainerBattleMusic",{})
    printToAll("Wild " .. defenderPokemon.name .. " appeared!")
    promptGymLeaderControl("Wild")

    updateMoves(DEFENDER, defenderPokemon)

    -- Update the defender value counter.
    defenderData.attackValue.level = defenderPokemon.baseLevel
    updateAttackValueCounter(DEFENDER)

    local numMoves = #defenderPokemon.moves
    if numMoves > 1 then
      showRandomMoveButton(DEFENDER)
    end
    edit_button(BUTTON_ID.battleWild, { label="END BATTLE"})
    showAutoRollButtons(true)
    moveStatusButtons(true)
    
    -- Create a button that allows someone to click it to catch the wild Pokemon.
    edit_button(BUTTON_ID.defFaint, { position={teamDefPos.x, 0.4, teamDefPos.z}, click_function="wildPokemonCatch", label="CATCH", tooltip="Catch Pokemon"})

    -- Check if this is an automated Wild Battle.
    -- NOTE: When using the BATTLE button manually this field is not empty since we are using
    --       an Object-owned button. Userdata nonsense gets put in front of our arguments. So
    --       we can't just check the wild_battle_params.
    if type(is_automated) == "boolean" and is_automated then
      -- Check if we can give a Recall button.
      if wild_battle_params.position then
        -- Valid position received.
        wildPokemonKanto = wild_battle_params.position
        edit_button(BUTTON_ID.defMoves, { position={movesDefPos.x, 0.4, movesDefPos.z}, click_function="wildPokemonFlee", label="FLEE", tooltip="Wild Pokemon Flees"})
      else
        print("Invalid Recall color given to battleWildPokemon: " .. tostring(wild_battle_params.color_index))
      end
      
      -- Check if we can give a Faint button.
      if wild_battle_params.color_index then
        if wild_battle_params.color_index > 0 and wild_battle_params.color_index < 8 then
          -- Valid color_index received.
          wildPokemonColorIndex = wild_battle_params.color_index
          edit_button(BUTTON_ID.defRecall, { position={recallDefPos.x, 0.4, recallDefPos.z}, click_function="wildPokemonFaint", label="FAINT", tooltip="Wild Pokemon Faints"})
        else
          print("Invalid Faint color given to battleWildPokemon: " .. tostring(wild_battle_params.color_index))
        end
      end 
    end

    -- Check if HP Rule 2 is enabled.
    if Global.call("getHpRule2Set") then
      cloneTempHpRuleHealthIndicatorToArena(DEFENDER, pokemonData.level)
    end
  else
    -- Check if the pokemon token is on the table.
    local token = getObjectFromGUID(wildPokemonGUID)
    if token then
      -- Unock the wild token.
      token.unlock()
    end

    inBattle = false
    text = getObjectFromGUID(defText)
    text.setValue(" ")
    hideRandomMoveButton(DEFENDER)

    showAutoRollButtons(false)
    moveStatusButtons(false)

    -- Check if HP Rule 2 is enabled.
    if Global.call("getHpRule2Set") then
      -- Destroy the temporary Health Indicator.
      destroyTempHealthIndicator(DEFENDER)
    end

    clearPokemonData(DEFENDER)
    clearTrainerData(DEFENDER)
    edit_button(BUTTON_ID.battleWild, { label="BATTLE"})

    Global.call("PlayRouteMusic",{})

    -- Clear the wild Pokemon data.
    wildPokemonGUID = nil
    wildPokemonKanto = nil
    wildPokemonColorIndex = nil

    -- Give the status buttons.
    showDefStatusButtons(false)
    
    -- Reset the buttons.
    edit_button(BUTTON_ID.defFaint, { position={teamDefPos.x, 1000, teamDefPos.z}, click_function="recallAndFaintDefenderPokemon", label="FAINT", tooltip="Recall and Faint Pokémon"})
    edit_button(BUTTON_ID.defMoves, { position={movesDefPos.x, 1000, movesDefPos.z}, click_function="seeMoveRules", label="MOVES", tooltip="Show Move Rules"})
    edit_button(BUTTON_ID.defRecall, { position={recallDefPos.x, 1000, recallDefPos.z}, click_function="recallDefArena", label="RECALL", tooltip="Recall Pokémon"})
  end
end

--------------------------
-- Wild Battle Functions
--------------------------

function wildPokemonCatch(obj, player_color)
  -- First, save off the wild Pokemon's GUID.
  local wild_chip_guid = wildPokemonGUID
  local color_index = wildPokemonColorIndex

  -- Check if the user that clicked the button is the same user who is on attack, if applicable.
  if attackerData.playerColor ~= nil and attackerData.playerColor ~= player_color then return end

  -- Next, end the battle.
  battleWildPokemon()

  -- Figure out which rack we are dealing with.
  local rack = nil
  local rotation = { 0, 0, 0 }
  if player_color == "Yellow" then
    rack = getObjectFromGUID(yellowRack)
    rotation[2] = -90
  elseif player_color == "Green" then
    rack = getObjectFromGUID(greenRack)
    rotation[2] = -90
  elseif player_color == "Blue" then
    rack = getObjectFromGUID(blueRack)
    rotation[2] = -180
  elseif player_color == "Red" then
    rack = getObjectFromGUID(redRack)
    rotation[2] = -180
  elseif player_color == "Purple" then
    rack = getObjectFromGUID(purpleRack)
    rotation[2] = -270
  elseif player_color == "Orange" then
    rack = getObjectFromGUID(orangeRack)
    rotation[2] = -270
  else
    return
  end

  -- Make sure the rack exists.
  if not rack then
    print("Failed to get rack handle to allow a wild Pokémon to be caught. WHAT DID YOU DO?")
    return
  end

  -- Get a handle on the chip.
  local token = getObjectFromGUID(wild_chip_guid)
  if not token then
    print("Failed to get chip handle to allow a wild Pokémon to Flee. WHAT DID YOU DO?")
    return
  end

  -- Get the rack X Pokemon positions.
  local pokemon_x_pos_list = rack.call("getAvailablePokemonXPos")

  -- Initialize the cast params.
  local castParams = {}
  castParams.direction = {0,-1,0}
  castParams.type = 1
  castParams.max_distance = 0.7
  castParams.debug = debug

  -- Loop through each X position and find the first empty slot.
  local new_pokemon_position = nil
  for x_index=1, #pokemon_x_pos_list do
    local origin = {pokemon_x_pos_list[x_index], 0.94, -0.1}
    castParams.origin = rack.positionToWorld(origin)
    local hits = Physics.cast(castParams)

    if #hits == 0 then -- Empty Slot
      new_pokemon_position = castParams.origin
      break
    end
  end

  -- Check if the Trainer has no empty slots.
  if not new_pokemon_position then
    -- Determine the player's name.
    local player_name = player_color
    if Player[player_color].steam_name ~= nil then
        player_name = Player[player_color].steam_name
    end
    printToAll(player_name .. " needs to release a Pokémon (including statuses, attach cards and level dice) before they can catch a wild Pokémon", player_color)
    return
  end

  -- Catch the Pokemon.
  token.setPosition(new_pokemon_position)
  token.setRotation(rotation)

  -- Move the model.
  local pokemonData = Global.call("simple_get_active_pokemon_by_GUID", wild_chip_guid)
  if pokemonData.model and Global.call("get_models_enabled") then
    -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.)
    pokemonData.chip = wild_chip_guid

    Wait.condition(
      function() -- Conditional function.
        -- Move the model.
        pokemonData.model.setPosition(Global.call("model_position", pokemonData))
        pokemonData.model.setRotation({token.getRotation().x, token.getRotation().y, token.getRotation().z})
        pokemonData.model.setLock(true)
      end,
      function() -- Condition function
        return token ~= nil and token.resting and token.getPosition().y < 0.4
      end,
      2,
      function() -- Timeout function.
        -- Move the model. But the token is still moving, darn.
        pokemonData.model.setPosition(Global.call("model_position", pokemonData))
        pokemonData.model.setRotation({token.getRotation().x, token.getRotation().y, token.getRotation().z})
        pokemonData.model.setLock(true)
      end
    )
  end

  -- Wait for the token to come to a rest, then wait 0.2 seconds longer and start the battle.
  Wait.condition(
    function()
      -- Refresh the rack.
      rack.call("rackRefreshPokemon")
    end,
    function() -- Condition function
      return token.resting and token.getPosition().y < 0.4
    end,
    2
  )

  -- Get a handle on the pokeball that we care about.
  local pokeball = nil
  if color_index ~= nil then
    pokeball = getObjectFromGUID(deploy_pokeballs[color_index])
    if not pokeball then
      print("Failed to get Pokeball handle to allow a wild Pokémon to be caught. WHAT DID YOU DO?")
      return
    end
  else
    printToAll("Cannot deal a new Pokémon token unless you utilize the hotkey to initiate Wild Pokémon battles (Options > Game Keys > Wild Battle Pokemon)", player_color)
  end

  -- Wait for the token to come to a rest, then wait 0.3 seconds longer and deal a new token.
  -- Only call this function if it is not the Legendary ball.
  if pokeball ~= nil and color_index ~= 6 then
    Wait.condition(
      function()
        -- Deal a new Pokemon chip of the appropriate color.
        Wait.time(function() pokeball.call("deal") end, 0.3)
      end,
      function() -- Condition function
        return token.resting
      end,
      2
    )
  end
end

-- Handles wild pokemon flee.
function wildPokemonFlee()
  -- First, save off the wild Pokemon's GUID and kanto location.
  local wild_chip_guid = wildPokemonGUID
  local kanto_location = wildPokemonKanto

  -- Detect status cards and tokens. Wilds can delete them.
  removeStatusAndTokens(DEFENDER)

  -- Next, end the battle.
  battleWildPokemon()

  -- Get a handle on the chip.
  local token = getObjectFromGUID(wild_chip_guid)
  if not token then
    print("Failed to get chip handle to allow a wild Pokémon to Flee. WHAT DID YOU DO?")
    return
  end
  
  -- Move the Pokemon chip back to its kanto location.
  token.setPosition({kanto_location.x, 2, kanto_location.z})

  -- Move the model.
  local pokemonData = Global.call("simple_get_active_pokemon_by_GUID", wild_chip_guid)
  if pokemonData.model and Global.call("get_models_enabled") then
    -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.)
    pokemonData.chip = wild_chip_guid

    Wait.condition(
      function() -- Conditional function.
        -- Move the model.
        pokemonData.model.setPosition(Global.call("model_position", pokemonData))
        pokemonData.model.setRotation({token.getRotation().x, token.getRotation().y, token.getRotation().z})
        pokemonData.model.setLock(true)
      end,
      function() -- Condition function
        return token ~= nil and token.resting and token.getPosition().y < 1.1
      end,
      2,
      function() -- Timeout function.
        -- Move the model. But the token is still moving, darn.
        pokemonData.model.setPosition(Global.call("model_position", pokemonData))
        pokemonData.model.setRotation({token.getRotation().x, token.getRotation().y, token.getRotation().z})
        pokemonData.model.setLock(true)
      end
    )
  end
end

-- Handles wild pokemon faint.
function wildPokemonFaint()
  -- First, save off the wild Pokemon's GUID and color index.
  local wild_chip_guid = wildPokemonGUID
  local color_index = wildPokemonColorIndex

  -- Detect status cards and tokens. Wilds can delete them.
  removeStatusAndTokens(DEFENDER)

  -- Next, end the battle.
  battleWildPokemon()

  -- Get a handle on the chip.
  local chip = getObjectFromGUID(wild_chip_guid)
  if not chip then
    print("Failed to get chip handle to allow a wild Pokémon to Faint. WHAT DID YOU DO?")
    return
  end

  -- Get a handle on the pokeball that we care about.
  local pokeball = getObjectFromGUID(deploy_pokeballs[color_index])
  if not pokeball then
    print("Failed to get Pokeball handle to allow a wild Pokémon to Faint. WHAT DID YOU DO?")
    return
  end

  -- Put the Pokemon chip back in its place.
  pokeball.putObject(chip)

  -- Wait for the token to come to a rest, then wait 0.3 seconds longer and deal a new token.
  -- Only call this function if it is not the Legendary ball.
  if color_index ~= 6 then
    Wait.condition(
      function()
        -- Deal a new Pokemon chip of the appropriate color.
        Wait.time(function() pokeball.call("deal") end, 0.3)
      end,
      function() -- Condition function
        return getObjectFromGUID(wildPokemonGUID) == nil
      end,
      2
    )
  end
end

-- Clears move data isAttacker selects attacker/defender.
function clearMoveData(isAttacker, reason)

  if isAttacker then
    move = attackerMove
    atkValue = attackerAttackValue
    textfield = atkText
    pokemonName = attackerData.name
    attackerData.canSelectMove = false
  else
    move = defenderMove
    atkValue = defenderAttackValue
    textfield = defText
    pokemonName = defenderData.name
    defenderData.canSelectMove = false
  end

  if move.name ~= nil and move.name == "NoMove" then
    return
  end

  atkValue.movePower = 0
  atkValue.effectiveness = 0
  atkValue.immune = false
  local textObj = getObjectFromGUID(textfield)
  textObj.TextTool.setValue(" ")

  if isAttacker then
    attackerMove = noMoveData
  else
    defenderMove = noMoveData
  end
end

-- Performs move 1.
function attackMove1()
  selectMove(1, ATTACKER)
end

-- Performs move 2.
function attackMove2()
  selectMove(2, ATTACKER)
end

-- Performs move 3.
function attackMove3()
  selectMove(3, ATTACKER)
end

-- Performs move 4.
function attackMove4()
  selectMove(4, ATTACKER)
end

-- Performs move 1.
function defenseMove1()
  selectMove(1, DEFENDER)
end

-- Performs move 2.
function defenseMove2()
  selectMove(2, DEFENDER)
end

-- Performs move 3.
function defenseMove3()
  selectMove(3, DEFENDER)
end

-- Performs move 4.
function defenseMove4()
  selectMove(4, DEFENDER)
end

-- Returns random move index.
local function getRandomMoveIndex(movesData)
  if not movesData then
    return nil
  end

  local valid = {}
  for i=1, 4 do
    local move = movesData[i]
    if move and move.status ~= DISABLED then
      table.insert(valid, i)
    end
  end

  if #valid == 0 then
    return nil
  end

  return valid[math.random(#valid)]
end

-- Handles random attack move.
function randomAttackMove()
  if not attackerPokemon or not attackerPokemon.movesData then
    return
  end

  local index = getRandomMoveIndex(attackerPokemon.movesData)
  if index then
    selectMove(index, ATTACKER, true)
  end
end

-- Handles random defense move.
function randomDefenseMove()
  if not defenderPokemon or not defenderPokemon.movesData then
    return
  end

  local index = getRandomMoveIndex(defenderPokemon.movesData)
  if index then
    selectMove(index, DEFENDER, true)
  end
end

-- Helper function used to determine an initial move power.
function handleStringPowerLevels(pokemonData, selfPower, opponentPower)
  if not pokemonData then
    print("WARNING: nil pokemonData when determining power levels")
    return 0
  end

  if type(pokemonData.attackValue.movePower) == "string" then 
    if pokemonData.attackValue.movePower == status_ids.the_self then
      return math.floor(selfPower / 2)
    elseif pokemonData.attackValue.movePower == status_ids.enemy then
      return math.floor(opponentPower / 2)
    else
      print("Unrecognized move power: " .. moveData.power)
      return 0 
    end
  end

  return pokemonData.attackValue.movePower
end

-- Helper function used to determine if a move has a specific effect.
local function moveHasEffect(moveData, effectToFind)
  if not moveData or not moveData.effects then
    return false
  end

  -- Check for the desired effect.
  for _, eff in pairs(moveData.effects) do
    if eff and eff.name == effectToFind then
        return true
    end
  end

  return false
end

-- Returns whether opponent immune to move.
local function isOpponentImmuneToMove(moveData, opponentPokemon)
  if not moveData or not moveData.type or not opponentPokemon or not opponentPokemon.types then
    return false
  end

  local opponent_types = {}
  if opponentPokemon.teraActive and opponentPokemon.teraType ~= nil and opponentPokemon.teraType ~= "Stellar" then
    opponent_types = { opponentPokemon.teraType }
  elseif Global.call("getDualTypeEffectiveness") and opponentPokemon.types[2] ~= nil then
    opponent_types = { opponentPokemon.types[1], opponentPokemon.types[2] }
  else
    opponent_types = { opponentPokemon.types[1] }
  end

  local immunityData = Global.call("GetImmunityDataByName", moveData.type)
  for _, immune_type in ipairs(immunityData.immune or {}) do
    for _, opponent_type in ipairs(opponent_types) do
      if immune_type == opponent_type then
        return true
      end
    end
  end

  return false
end

-- Handles parse type enhancer type.
local function parseTypeEnhancerType(card_name)
  if not card_name then
    return nil
  end

  -- Extract the first word when the second is "Booster".
  local first_word, second_word = string.match(card_name, "^(%S+)%s+(%S+)$")
  if first_word and second_word == "Booster" then
    return first_word
  end

  return nil
end

-- Handles select move isAttacker selects attacker/defender.
function selectMove(index, isAttacker, isRandom)
  -- For safety, sanitize the isRandom parameter.
  if isRandom == nil then
    isRandom = false
  end

  local pokemon = nil
  local pokemonData = nil
  local moveData = nil
  local text = nil
  if isAttacker then
    pokemon = attackerPokemon
    pokemonData = attackerData
    moveData = attackerPokemon.movesData[index]
    attackerData.selectedMoveIndex = index
    attackerData.selectedMoveData = moveData
    text = getObjectFromGUID(atkText)
  else
    pokemon = defenderPokemon
    pokemonData = defenderData
    moveData = defenderPokemon.movesData[index]
    defenderData.selectedMoveIndex = index
    defenderData.selectedMoveData = moveData
    text = getObjectFromGUID(defText)
  end

  -- Re-initialize the attackValue values.
  local pokemonLevel = pokemonData.attackValue.level
  local burnPenalty = pokemonData.attackValue.status
  pokemonData.attackValue = copyTable(DEFAULT_ARENA_DATA.attackValue)
  pokemonData.attackValue.level = pokemonLevel
  pokemonData.attackValue.status = burnPenalty
  pokemonData.diceMod = 0
  pokemonData.addDice = 0

  if moveData.status == DISABLED then
    local pokemonName = isAttacker and attackerPokemon.name or defenderPokemon.name
    printToAll(pokemonName .. " cannot use the disabled move " .. moveData.name .. ".")
    return
  end

  -- Update the appropriate move value.
  pokemonData.attackValue.movePower = moveData.power

  -- Check if the Pokemon is using a move with Attack power of Self or Enemy.
  local opponentData = isAttacker and defenderData or attackerData
  pokemonData.attackValue.movePower = handleStringPowerLevels(pokemonData, pokemonData.attackValue.level, opponentData.attackValue.level)

  -- Stab. If the pokemon is the same type then add 1 to the attack power.
  if (moveData.type == pokemon.types[1] or moveData.type == pokemon.types[2]) and pokemonData.attackValue.movePower > 0 and moveData.STAB then 
    pokemonData.attackValue.movePower = pokemonData.attackValue.movePower + 1
  end

  -- Check for a few different attach cards.
  if pokemon.vitamin then
    -- Vitamin. Tasty.
    pokemonData.vitamin = true
    pokemonData.attackValue.item = 1
  elseif pokemon.alpha then
    -- Alpha boy. Shudders.
    pokemonData.alpha = true
    if pokemonData.attackValue.movePower > 3 then
      pokemonData.attackValue.item = 0
    elseif pokemonData.attackValue.movePower == 3 then
      pokemonData.attackValue.item = 1
    else
      pokemonData.attackValue.item = 2
    end
  elseif pokemon.type_enhancer then
    -- Preserve the actual enhancer type for later checks.
    pokemonData.type_enhancer = pokemon.type_enhancer
    local enhancer_type = pokemon.type_enhancer
    -- Only apply if the move matches the enhancer type (or Judgement, which inherits it).
    local move_matches_enhancer = moveData.type ~= nil and moveData.type == enhancer_type
    local judgement_with_enhancer = moveData.name == "Judgement" and enhancer_type ~= nil
    if (move_matches_enhancer or judgement_with_enhancer) and pokemonData.attackValue.movePower > 0 and not pokemonData.attackValue.immune then
      pokemonData.attackValue.item = 1
    end
  end

  local opponent_pokemon = isAttacker and defenderPokemon or attackerPokemon
  local is_stellar = pokemon.teraActive == true and pokemon.teraType == "Stellar"
  local move_is_immune = is_stellar and false or isOpponentImmuneToMove(moveData, opponent_pokemon)

  -- Check if this move has Disable effects.
  if not move_is_immune and moveHasEffect(moveData, status_ids.disable) then
    showMoveDisableButtons(not isAttacker, true)
  end

  -- Recharge disables the selected move for the user, even if the opponent is immune.
  if moveHasEffect(moveData, status_ids.recharge) then
    if pokemon and pokemon.movesData and pokemon.movesData[index] then
      pokemon.movesData[index].status = DISABLED
      updateTypeEffectiveness()
    end
  end

  -- Check for special effects.
  if not isAttacker then
    -- Get Pokemon names, move and immunity status.
    local attacker_pokemon_name = getPokemonNameInPlay(ATTACKER)
    local defender_pokemon_name = getPokemonNameInPlay(DEFENDER)
    local attacker_move_data = attackerData and (attackerData.selectedMoveData or (attackerPokemon and attackerPokemon.movesData and attackerPokemon.movesData[attackerData.selectedMoveIndex])) or nil
    local attacker_move_is_immune = isOpponentImmuneToMove(attacker_move_data, defenderPokemon)
    if attackerPokemon and attackerPokemon.teraActive == true and attackerPokemon.teraType == "Stellar" then
      attacker_move_is_immune = false
    end
    
    -- Adjust the Defender move power for Reversal effects.
    if not attacker_move_is_immune and moveHasEffect(attackerData.selectedMoveData, status_ids.reversal) then
      -- Adjust the Attacker move power for Reversal effects.
      updateAttackValueCounter(ATTACKER)
      local adjustment = pokemonData.attackValue.movePower
      if defenderData.vitamin == nil or defenderData.vitamin == false then
        adjustment = pokemonData.attackValue.movePower + defenderData.attackValue.item
      end
      if adjustment > 0 then
        adjustAttackValueCounter(ATTACKER, adjustment)
        printToAll("Adjusting "  .. attacker_pokemon_name .. "'s Attack Strength by " .. tostring(adjustment) .. " for the Reversal effect.")
      end
    end
    -- Adjust the Attacker (opponent) data for Reversal effects. 
    if not move_is_immune and moveHasEffect(moveData, status_ids.reversal) then
      -- Make sure the Defender did not pick their move first like a dummy.
      if opponentData and opponentData.attackValue.level then
        pokemonData.attackValue.movePower = handleStringPowerLevels(opponentData, opponentData.attackValue.level, pokemonData.attackValue.level)
        if attackerData.vitamin == nil or attackerData.vitamin == false then
          pokemonData.attackValue.movePower = pokemonData.attackValue.movePower + attackerData.attackValue.item
        end
        if pokemonData.attackValue.movePower > 0 then
          printToAll("Adjusting "  .. defender_pokemon_name .. "'s Attack Strength by " .. tostring(pokemonData.attackValue.movePower) .. " for the Reversal effect.")
        end
      end
    end

    -- Adjust the Defender move power for Protection effects.
    if not attacker_move_is_immune and moveHasEffect(attackerData.selectedMoveData, status_ids.protection) then
      pokemonData.attackValue.movePower = 0
      if defenderData.vitamin == nil or defenderData.vitamin == false then
        pokemonData.attackValue.item = 0
      end
      printToAll(attacker_pokemon_name .. " protected itself!")
    end
    -- Adjust the Attacker (opponent) move power for Protection effects.
    if not move_is_immune and moveHasEffect(moveData, status_ids.protection) then
      if opponentData and opponentData.attackValue.level then
        opponentData.attackValue.movePower = 0
        if attackerData.vitamin == nil or attackerData.vitamin == false then
          opponentData.attackValue.item = 0
        end
        updateAttackValueCounter(ATTACKER)
        printToAll(defender_pokemon_name .. " protected itself!")
      end
    end
  end

  -- Adjust the move power for ConditionBoost effects.
  if not move_is_immune and moveHasEffect(moveData, status_ids.conditionBoost) then
    local opponentPokemon = isAttacker and defenderPokemon or attackerPokemon
    if opponentPokemon and opponentPokemon.status ~= nil then
      pokemonData.attackValue.effect = 1
      local pokemon_name = getPokemonNameInPlay(isAttacker)
      printToAll("Adjusting "  .. pokemon_name .. "'s Attack Strength by 1 for the Condition Boost effect.")
    end
  end

  -- Calculate effectiveness.
  pokemonData.attackValue.effectiveness = DEFAULT
  local opponent_data = isAttacker and defenderPokemon or attackerPokemon
  -- If the defender chose a move first like a dummy (or attacker chose before defender is in place) the opponent data will be nil.
  if not opponent_data then return end

  -- Get the opponent types.
  local opponent_types = { "N/A" }
  if opponent_data.teraActive and opponent_data.teraType ~= nil and opponent_data.teraType ~= "Stellar" then
    -- Tera is active.
    opponent_types = { opponent_data.teraType }
  else
    -- Tera is not active.
    if opponent_data ~= nil and opponent_data.types ~= nil then
      opponent_types[1] = opponent_data.types[1]
      if opponent_data.types[2] ~= nil then
        opponent_types[2] = opponent_data.types[2]
      else
        opponent_types[2] = "N/A"
      end
    end
  end

  -- If this move is Judgement we need to change the type if there is a Type Enhancer.
  if moveData.name == "Judgement" then
    local pokemon_data = isAttacker and attackerPokemon or defenderPokemon
    local enhancer_type = pokemon_data.type_enhancer
    if enhancer_type ~= nil then
      moveData.type = tostring(enhancer_type)
    end
  end

  -- Get the type data for this move.
  local typeData = Global.call("GetTypeDataByName", moveData.type)

  -- If a Pokemon is Stellar TeraTyped, they don't get effectiveness.
  local calculateEffectiveness = true
  if is_stellar then 
    calculateEffectiveness = false
    pokemonData.attackValue.immune = false
  end

  -- If move had NEUTRAL effect, don't calculate effectiveness.
  if moveData.effects ~= nil then
    for i=1, #moveData.effects do
        if moveData.effects[i].name == status_ids.neutral then
          calculateEffectiveness = false
          break
        end
    end
  end
  
  -- Get the typeData and calculate effectiveness.
  if calculateEffectiveness then
    pokemonData.attackValue.effectiveness = calculateMoveEffectiveness(moveData, typeData, opponent_types, pokemonData.attackValue, opponent_data.name)
  end

  -- If this is Flying Press, we should check which is better out of Fighting/Flying. The default is Fighting.
  local moveType = moveData.type
  if calculateEffectiveness and moveData.name == "Flying Press" then
    -- Determine the effectiveness when Flying type.
    local tempMoveDataFlying = copyTable(moveData)
    tempMoveDataFlying.type = "Flying"
    local tempTypeDataFlying = Global.call("GetTypeDataByName", tempMoveDataFlying.type)
    local tempEffectiveness = calculateMoveEffectiveness(tempMoveDataFlying, tempTypeDataFlying, opponent_types, pokemonData.attackValue, opponent_data.name)

    -- Determine which effectiveness to keep.
    if tempEffectiveness > pokemonData.attackValue.effectiveness then
      pokemonData.attackValue.effectiveness = tempEffectiveness
      moveType = tempMoveDataFlying.type
    end
  end

  -- Check for the self's tera type.
  if (pokemon.teraActive and pokemon.teraType == moveType) and not pokemonData.attackValue.immune then
    pokemonData.attackValue.movePower = pokemonData.attackValue.movePower + 1 
  end

  -- If the move is immune then all attach cards except Vitamin and Alpha are ignored.
  if pokemonData.attackValue.item ~= 0 and pokemonData.attackValue.immune then
    if not pokemonData.vitamin then
      -- Ignore the item.
      printToAll("Non-Vitamin attach card ignored due to Immunity", "Red")
      pokemonData.attackValue.item = 0
    end
  end

  -- Update the counter.
  updateAttackValueCounter(isAttacker)

  -- Update the move text tool.
  local moveName = moveData.name
  text.TextTool.setValue(moveName)

  -- Get the active model GUID. This prevents calling animations for the wrong model.
  local model_guid = nil
  local pokemonModelData = isAttacker and attackerPokemon or defenderPokemon
  if pokemonModelData ~= nil then
    local chip_guid = isAttacker and attackerPokemon.pokemonGUID or defenderPokemon.pokemonGUID
    model_guid = Global.call("get_model_guid", chip_guid)
    if model_guid == nil then
      model_guid = pokemonModelData.model_GUID
    end
  end

  -- Call attack animations.
  if model_guid ~= nil and Global.call("get_models_enabled") then
    local model = getObjectFromGUID(model_guid)
    if model ~= nil then
      local triggerList = model.AssetBundle.getTriggerEffects()
      if triggerList ~= nil then
        local triggerListLength = #triggerList
        
        -- We have a lot of attack animation scenarios to consider based on the amount of animations available.
        if triggerListLength == 1 then
          Global.call("try_activate_effect", {model=model, effectName=triggerList[1].name or "Physical Attack"})
        elseif triggerListLength >= 3 and triggerListLength <= 5 then
          -- If there is a 5th animation and it matches the selected move then always use that.
          if triggerListLength == 5 and moveData.name == triggerList[5].name then
            Global.call("try_activate_effect", {model=model, effectName=triggerList[5].name or "Physical Attack"})
          else
            -- Gen 9 and Hisuian Models fall under this category. Unfortunately, some of these models suck and only have one
            -- relevant animation. Some are cool with three (Physical Attack, Special Attack and Status Attack).
            -- Some have a cool signature attack animation. We have to deal with all of that cool/lame stuff.
            local animations_table = {}
            for animation_index=1, triggerListLength do
              local move_name = triggerList[animation_index].name
              if string.find(move_name, "Attack") then
                table.insert(animations_table, move_name)
              elseif move_name == "Spiky Shield" then
                -- Mega Chesnaught has a cool signature animation. Sue me.
                table.insert(animations_table, move_name)
              end
            end
            
            -- We also want to consider the signature animation.
            if triggerListLength == 5 and animations_table[#animations_table] ~= triggerList[5].name then
              table.insert(animations_table, triggerList[5].name)
            end

            -- Call a random animation from our list.
            local animationName = animations_table[math.random(#animations_table)]
            Global.call("try_activate_effect", {model=model, effectName=animationName})
          end
        elseif triggerListLength < 100 then
          local animationName = triggerList[math.random(triggerListLength - 1)].name
          Global.call("try_activate_effect", {model=model, effectName=animationName or "Physical Attack"})
        else
          -- We need to prevent choosing all the rubbish animations. 109, 110 and 111 are the attack indexes.
          local animationName = triggerList[math.random(109, 111)].name
          Global.call("try_activate_effect", {model=model, effectName=animationName or "Physical Attack"})
        end
      end
    end
  end

  -- Easter egg. 1% chance to say funny names.
  local easter_egg_chance = math.random(100)
  if moveName == "Pin Missile" and easter_egg_chance == 1 then
    moveName = "Piss Missile"
  elseif moveName == "Mindstorm" and easter_egg_chance == 1 then
    moveName = "Shitstorm"
  end

  -- Log the move.
  local pokemonName = isAttacker and attackerPokemon.name or defenderPokemon.name
  local opponentName = getPokemonNameInPlay(not isAttacker)
  local immunitiesEnabled = Global.call("getImmunitiesEnabled")
  if isRandom then
    printToAll(pokemonName .. " randomly used " .. string.upper(moveName) .. "!")
  else
    printToAll(pokemonName .. " used " .. string.upper(moveName) .. "!")
  end

  -- Give a cool print statement if the move was immune.
  if immunitiesEnabled and pokemonData and pokemonData.attackValue and pokemonData.attackValue.immune then
    printToAll("It doesn't affect the opposing " .. tostring(opponentName) .. "...")
  end
end

-- Clears selected move isAttacker selects attacker/defender.
function clearSelectedMove(isAttacker)
  -- Safety guard.
  local data = isAttacker and attackerData or defenderData
  if not data or not data.attackValue then
    return
  end

  data.selectedMoveIndex = -1
  data.selectedMoveData = nil

  -- Reset move-related values while preserving persistent modifiers.
  local level = data.attackValue.level
  local status = data.attackValue.status
  local booster = data.attackValue.booster
  local item = data.attackValue.item
  data.attackValue = copyTable(DEFAULT_ARENA_DATA.attackValue)
  data.attackValue.level = level
  data.attackValue.status = status
  data.attackValue.booster = booster
  data.attackValue.item = item
  data.diceMod = 0
  data.addDice = 0

  -- Update the counter.
  updateAttackValueCounter(isAttacker)

  -- Remove the text for the selected move.
  clearMoveText(isAttacker)
end

-- Helper function to calculate effectiveness for a particular move.
function calculateMoveEffectiveness(moveData, typeData, opponent_types, attack_value_table, opponent_pokemon_name)
  -- Detrermine if we are doing dual type effectiveness.
  local type_length = 1
  if Global.call("getDualTypeEffectiveness") then
    type_length = 2
  end

  -- Get the immunities table.
  local immunityData = Global.call("GetImmunityDataByName", moveData.type)

  -- Calculate immunities.
  if Global.call("getImmunitiesEnabled") then
    for k=1, #immunityData.immune do
      for type_index=1, type_length do
        if immunityData.immune[k] == opponent_types[type_index] then
          -- Set the effectiveness to whatever is necesary to ensure the Attack Strength is -3.
          attack_value_table.immune = true
          return -3 - attack_value_table.movePower
        end
      end
    end
  end

  -- Initialize the effectiveness.
  local effectiveness = 0

  -- Calculate the effectiveness of this move.
  for j=1, #typeData.effective do
    for type_index = 1, type_length do
      if typeData.effective[j] == opponent_types[type_index] then
        effectiveness = effectiveness + 2
      end
    end
  end
  for j=1, #typeData.weak do
    for type_index = 1, type_length do
      if typeData.weak[j] == opponent_types[type_index] then
        effectiveness = effectiveness - 2
      end
    end
  end

  -- Check if this move has effects that alter effectiveness.
  -- TODO: This does not offer labels.
  if moveData.effects then
    for j=1, #moveData.effects do
      -- If this is SaltCure, it is additionally effective against Water and Steel types.
      if moveData.effects[j].name == status_ids.saltCure then
        for type_index = 1, type_length do
          if opponent_types[type_index] == "Water" or opponent_types[type_index] == "Steel" then
            effectiveness = effectiveness + 2
          end
        end
      end
    end
  end

  -- When teratyping into the secondary type, it can cause Super-Effective/Weak. We don't want that.
  if Global.call("getDualTypeEffectiveness") and opponent_types[1] == opponent_types[2] then
    if effectiveness >= 4 then
      effectiveness = 2
    elseif effectiveness <= -4 then
      effectiveness = -2
    end
  end

  -- Super-Effective and Super-Weak are are +3/-3 respectively. So do a simple conversion.
  if effectiveness >= 4 then
    effectiveness = 3
  elseif effectiveness <= -4 then
    effectiveness = -3
  end

  -- Shedinja check -- Wonder Guard. We will skip this if not playing with dualtype AND immunities.
  local opponent_is_shedinja_immune = (opponent_pokemon_name == "Shedinja") and Global.call("getImmunitiesEnabled") and Global.call("getDualTypeEffectiveness")
  if opponent_is_shedinja_immune then
    if effectiveness < 2 then
      effectiveness = -3 - attack_value_table.movePower
    end
  end

  return effectiveness
end

-- Returns whether status.
function isStatus(effectName)
  if effectName == status_ids.burn or effectName == status_ids.poison or effectName == status_ids.paralyze or effectName == status_ids.sleep or effectName == status_ids.confuse or effectName == status_ids.freeze or effectName == status_ids.curse then
    return true
  else
    return false
  end
end

-- Returns whether status card name.
local function is_status_card_name(status_name)
  return isStatus(status_name)
end

-- Returns status types for pokemon.
local function get_status_types_for_pokemon(pokemon)
  if not pokemon or not pokemon.types then
    return {}
  end

  if pokemon.teraActive and pokemon.teraType and pokemon.teraType ~= "Stellar" then
    return { pokemon.teraType }
  end

  if Global.call("getDualTypeEffectiveness") and pokemon.types[2] then
    return { pokemon.types[1], pokemon.types[2] }
  end

  return { pokemon.types[1] }
end

-- Returns whether pokemon immune to status status is the status id/name.
local function is_pokemon_immune_to_status(pokemon, status)
  if not Global.call("getImmunitiesEnabled") then
    return false
  end

  local immune_types = status_immunity_types[status]
  if not immune_types then
    return false
  end

  for _, type_name in ipairs(get_status_types_for_pokemon(pokemon)) do
    if immune_types[type_name] then
      return true
    end
  end

  return false
end

-- Announces status immunity status is the status id/name.
local function announceStatusImmunity(status, pokemon_name)
  if not status or not pokemon_name then return end

  local type_lookup = {
    [status_ids.poison]   = "Poison",
    [status_ids.burn]     = "Fire",
    [status_ids.paralyze] = "Electric",
    [status_ids.freeze]   = "Ice",
  }

  local type_name = type_lookup[status]
  local color = type_name and Global.call("type_to_color_lookup", type_name) or nil
  printToAll(string.format("%s is immune to %s.", pokemon_name, status), color)
end

-- Handles return status card to bag status is the status id/name.
local function returnStatusCardToBag(status, card)
  if not card then return end

  local bag_guid = status_bag_guid_by_status[status]
  local bag = bag_guid and getObjectFromGUID(bag_guid) or nil
  if bag then
    bag.putObject(card)
  else
    destroyObject(card)
  end
end

-- Attempts to apply status from zone isAttacker selects attacker/defender.
local function tryApplyStatusFromZone(isAttacker, status_card)
  if not status_card then return nil, false end

  local status_name = status_card.getName()
  if not is_status_card_name(status_name) then
    return nil, false
  end

  local data = isAttacker and attackerPokemon or defenderPokemon
  if not data then
    return false, false
  end

  local card_guid = status_card.getGUID()
  if data.status ~= nil then
    if data.statusCardGUID == card_guid then
      return true, false
    end
    printToAll("PokAcmon already has a status.")
    return false, false
  end

  if is_pokemon_immune_to_status(data, status_name) then
    announceStatusImmunity(status_name, getPokemonNameInPlay(isAttacker))
    return false, false
  end

  data.status = status_name
  data.statusCardGUID = card_guid
  return true, true
end

-- Adds status isAttacker selects attacker/defender. status is the status id/name.
function addStatus(isAttacker, status)
  local pos
  local data
  if isAttacker then
    pos = attackerPos
    data = attackerPokemon
  else
    pos = defenderPos
    data = defenderPokemon
  end

  -- Just return if there is no Pokemon here.
  if not data then return end

  if data.status ~= nil then
    printToAll("Pokémon already has a status.")
    return
  end

  if is_pokemon_immune_to_status(data, status) then
    announceStatusImmunity(status, getPokemonNameInPlay(isAttacker))
    return
  end

  local obj
  if status == status_ids.burn then
    obj = getObjectFromGUID(statusGUID.burned)
  elseif status == status_ids.paralyze then
    obj = getObjectFromGUID(statusGUID.paralyzed)
  elseif status == status_ids.poison then
    obj = getObjectFromGUID(statusGUID.poisoned)
  elseif status == status_ids.sleep then
    obj = getObjectFromGUID(statusGUID.sleep)
  elseif status == status_ids.freeze then
    obj = getObjectFromGUID(statusGUID.frozen)
  elseif status == status_ids.confuse then
    obj = getObjectFromGUID(statusGUID.confused)
  elseif status == status_ids.curse then
    obj = getObjectFromGUID(statusGUID.cursed)
  end
  local card = obj.takeObject()
  card.setPosition({pos.status[1], 1, pos.status[2]})
end

-- Flips status isAttacker selects attacker/defender.
function flipStatus(isAttacker, isActive)
  local data
  if isAttacker then
    data = attackerPokemon
  else
    data = defenderPokemon
  end
  if data.status == nil then
    return
  end
  local statusCard = getObjectFromGUID(data.statusCardGUID)
  
  -- Once the card is resting we can try to flip it.
  Wait.condition(
    function() -- Conditional function.
      local z_rotation = statusCard.getRotation().z
      local statusIsFaceUp = Global.call("isFaceUp", statusCard)
      if isActive == statusIsFaceUp then
        statusCard.flip()
      end
    end,
    function() -- Condition function
      return statusCard ~= nil and statusCard.resting
    end,
    2
  )
end

-- Adds status counters isAttacker selects attacker/defender.
function addStatusCounters(isAttacker, numCounters)

  if isAttacker then
    passParams = {player = attackPlayer, arenaAttack = true, zPos = -0.1}
  else
    passParams = {player = defendPlayer, arenaAttack = false, zPos = -0.1}
  end
  for i=1, numCounters do
    addStatusCounter(passParams)
  end
end

-- Removes status.
function removeStatus(data)
  if not data then return end
  data.status = nil
  local statusCard = getObjectFromGUID(data.statusCardGUID)
  if statusCard then
    statusCard.destruct()
  end
  if data then
    data.statusCardGUID = nil
  end
end

-- Spawns dice isAttacker selects attacker/defender.
function spawnDice(move, isAttacker, effects)

  local diceTable = isAttacker and attackerData.dice or defenderData.dice
  local pos = isAttacker and attackerPos or defenderPos
  local diceBag
  local dice

  local numAddDice = 0
  local diceMod = 0
  local effect
  for i=1, #effects do
    effect = effects[i]
    if effect == status_ids.addDice then
      numAddDice = numAddDice + 1
    elseif effect == status_ids.addDice2 then
      numAddDice = numAddDice + 2
    elseif effect == status_ids.advantage then
      diceMod = diceMod + 1
    elseif effect == status_ids.doubleadvantage then
      diceMod = diceMod + 2
    elseif effect == status_ids.disadvantage then
      diceMod = diceMod - 1
    elseif effect == status_ids.doubledisadvantage then
      diceMod = diceMod - 2
    end
  end

  local numDice = 1 + numAddDice + math.abs(diceMod)

  if isAttacker then
    attackerDiceMod = diceMod
  else
    defenderDiceMod = diceMod
  end

  local diceBagGUID
  if move.dice == 6 then
    diceBagGUID = d6Dice
  elseif move.dice == 4 then
    diceBagGUID = d4Dice
  elseif move.dice == 8 then
    diceBagGUID = critDice
  end

  diceBag = getObjectFromGUID(diceBagGUID)
  local zPos = atkMoveZPos
  local diceWidth = (numDice-1) * 1.5
  local diceXPos = pos.moveDice[1] - (diceWidth * 0.5)

  for i=1, numDice do
    dice = diceBag.takeObject()
    dice.setPosition({diceXPos + ((i-1) * 1.5), 2, pos.moveDice[2]})
    table.insert(diceTable, dice.guid)
  end
end

-- Handles increase atk arena.
function increaseAtkArena(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == attackerData.playerColor then
        local passParams = {player = playerColour, arenaAttack = true, zPos = -0.1, modifier = 1}
        increaseArena(passParams)
    end
end

-- Handles decrease atk arena.
function decreaseAtkArena(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == attackerData.playerColor then
        local passParams = {player = playerColour, arenaAttack = true, zPos = -0.1, modifier = -1}
        decreaseArena(passParams)
    end
end

-- Handles increase def arena.
function increaseDefArena(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == defenderData.playerColor then
        local passParams = {player = playerColour, arenaAttack = false, zPos = -0.1, modifier = 1}
        increaseArena(passParams)
    end
end

-- Handles decrease def arena.
function decreaseDefArena(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == defenderData.playerColor then
        local passParams = {player = playerColour, arenaAttack = false, zPos = -0.1, modifier = -1}
        decreaseArena(passParams)
    end
end

-- Evolves atk.
function evolveAtk(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == attackerData.playerColor then
        local passParams = {player = playerColour, arenaAttack = true, zPos = -0.1}
        evolve(passParams)
    end
end

-- Evolves two atk.
function evolveTwoAtk(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == attackerData.playerColor then
        local passParams = {player = playerColour, arenaAttack = true, zPos = -0.1}
        evolveTwo(passParams)
    end
end

-- Evolves def.
function evolveDef(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == defenderData.playerColor then
        local passParams = {player = playerColour, arenaAttack = false, zPos = -0.1}
        evolve(passParams)
    end
end

-- Evolves two def.
function evolveTwoDef(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == defenderData.playerColor then
        local passParams = {player = playerColour, arenaAttack = false, zPos = -0.1}
        evolveTwo(passParams)
    end
end

-- Recalls atk arena.
function recallAtkArena(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == attackerData.playerColor then
        local passParams = {player = playerColour, arenaAttack = true, zPos = -0.1}
        recallArena(passParams)
        return true
    end
    return false
end

-- Recalls def arena.
function recallDefArena(obj, player_clicker_color)
    local playerColour = player_clicker_color
    if playerColour == defenderData.playerColor then
        local passParams = {player = playerColour, arenaAttack = false, zPos = -0.1}
        recallArena(passParams)
        return true
    end
    return false
end

-- Recalls and faint attacker pokemon.
function recallAndFaintAttackerPokemon(obj, player_clicker_color)
  -- Get the attacker token GUID.
  local token = nil
  if attackerPokemon.pokemonGUID ~= nil then
    token = getObjectFromGUID(attackerPokemon.pokemonGUID)
  end

  -- Remove any status if it is present.
  if attackerPokemon and attackerPokemon.status ~= nil then
    removeStatus(attackerPokemon)
  end
  removeStatusAndTokens(ATTACKER)

  -- Try to recall the attacker token.
  if recallAtkArena(obj, player_clicker_color) then
    -- Wait until the token is idle and then flip it over.
    Wait.condition(
      function() -- Conditional function.
        -- Flip the token.
        token.flip()
      end,
      function() -- Condition function
        return token ~= nil and token.resting
      end,
      2,
      function() -- Timeout function.
        print("Timed out waiting to flip token")
      end
    )
  end
end

-- Recalls and faint defender pokemon.
function recallAndFaintDefenderPokemon(obj, player_clicker_color)
  -- Get the defender token GUID.
  local token = nil
  if defenderPokemon.pokemonGUID ~= nil then
    token = getObjectFromGUID(defenderPokemon.pokemonGUID)
  end

  -- Remove any status if it is present.
  if defenderPokemon and defenderPokemon.status ~= nil then
    removeStatus(defenderPokemon)
  end
  removeStatusAndTokens(DEFENDER)

  -- Try to recall the defender token.
  if recallDefArena(obj, player_clicker_color) then
    -- Wait until the token is idle and then flip it over.
    Wait.condition(
      function() -- Conditional function.
        -- Flip the token.
        token.flip()
      end,
      function() -- Condition function
        return token ~= nil and token.resting
      end,
      2,
      function() -- Timeout function.
        print("Timed out waiting to flip token")
      end
    )
  end
end

-- Adds atk status.
function addAtkStatus(obj, player_clicker_color)
  local playerColour = player_clicker_color
  if playerColour == attackerData.playerColor or attackerData.playerColor == nil then
    passParams = {player = playerColour, arenaAttack = true, zPos = -0.1}
    addStatusCounter(passParams)
  end
end

-- Removes atk status.
function removeAtkStatus(obj, player_clicker_color)
  local playerColour = player_clicker_color
  if playerColour == attackerData.playerColor or attackerData.playerColor == nil then
    passParams = {player = playerColour, arenaAttack = true, zPos = -0.1}
    removeStatusCounter(ATTACKER)
  end
end

-- Adds def status.
function addDefStatus(obj, player_clicker_color)
  local playerColour = player_clicker_color
  if playerColour == defenderData.playerColor or defenderData.playerColor == nil then
    passParams = {player = playerColour, arenaAttack = false, zPos = -0.1}
    addStatusCounter(passParams)
  end
end

-- Removes def status.
function removeDefStatus(obj, player_clicker_color)
  local playerColour = player_clicker_color
  if playerColour == defenderData.playerColor or defenderData.playerColor == nil then
    passParams = {player = playerColour, arenaAttack = false, zPos = -0.1}
    removeStatusCounter(DEFENDER)
  end
end

-- Evolves evolve params supplies inputs.
function evolve(params)
  local playerColour = params.player
  local attDefParams = {arenaAttack = params.arenaAttack, zPos = params.zPos}

  if playerColour == "Blue" then
    getObjectFromGUID(blueRack).call("evolveArena", attDefParams)
  elseif playerColour == "Green" then
    getObjectFromGUID(greenRack).call("evolveArena", attDefParams)
  elseif playerColour == "Orange" then
    getObjectFromGUID(orangeRack).call("evolveArena", attDefParams)
  elseif playerColour == "Purple" then
    getObjectFromGUID(purpleRack).call("evolveArena", attDefParams)
  elseif playerColour == "Red" then
    getObjectFromGUID(redRack).call("evolveArena", attDefParams)
  elseif playerColour == "Yellow" then
    getObjectFromGUID(yellowRack).call("evolveArena", attDefParams)
  end

  attDefParams = nil
end

-- Evolves two.
function evolveTwo(passParams)
  local playerColour = passParams.player
  attDefParams = {arenaAttack = passParams.arenaAttack, zPos = passParams.zPos}

  if playerColour == "Blue" then
    getObjectFromGUID(blueRack).call("evolveTwoArena", attDefParams)
  elseif playerColour == "Green" then
    getObjectFromGUID(greenRack).call("evolveTwoArena", attDefParams)
  elseif playerColour == "Orange" then
    getObjectFromGUID(orangeRack).call("evolveTwoArena", attDefParams)
  elseif playerColour == "Purple" then
    getObjectFromGUID(purpleRack).call("evolveTwoArena", attDefParams)
  elseif playerColour == "Red" then
    getObjectFromGUID(redRack).call("evolveTwoArena", attDefParams)
  elseif playerColour == "Yellow" then
    getObjectFromGUID(yellowRack).call("evolveTwoArena", attDefParams)
  end

  attDefParams = nil
end

-- Recalls arena.
function recallArena(passParams)
  local playerColour = passParams.player
  attDefParams = {arenaAttack = passParams.arenaAttack, zPos = passParams.zPos}

  if playerColour == "Blue" then
    getObjectFromGUID(blueRack).call("rackRecall", attDefParams)
  elseif playerColour == "Green" then
    getObjectFromGUID(greenRack).call("rackRecall", attDefParams)
  elseif playerColour == "Orange" then
    getObjectFromGUID(orangeRack).call("rackRecall", attDefParams)
  elseif playerColour == "Purple" then
    getObjectFromGUID(purpleRack).call("rackRecall", attDefParams)
  elseif playerColour == "Red" then
    getObjectFromGUID(redRack).call("rackRecall")
  elseif playerColour == "Yellow" then
    getObjectFromGUID(yellowRack).call("rackRecall", attDefParams)
  end
end

-- Handles increase arena.
function increaseArena(passParams)
  local playerColour = passParams.player
  mParams = {modifier = passParams.modifier, arenaAttack = passParams.arenaAttack}

  if playerColour == "Blue" then
    getObjectFromGUID(blueRack).call("increase", mParams)
  elseif playerColour == "Green" then
    getObjectFromGUID(greenRack).call("increase", mParams)
  elseif playerColour == "Orange" then
    getObjectFromGUID(orangeRack).call("increase", mParams)
  elseif playerColour == "Purple" then
    getObjectFromGUID(purpleRack).call("increase", mParams)
  elseif playerColour == "Red" then
    getObjectFromGUID(redRack).call("increase", mParams)
  elseif playerColour == "Yellow" then
    getObjectFromGUID(yellowRack).call("increase", mParams)
  end
end

-- Handles decrease arena.
function decreaseArena(passParams)
  local playerColour = passParams.player
  mParams = {modifier = passParams.modifier, arenaAttack = passParams.arenaAttack}

  if playerColour == "Blue" then
    getObjectFromGUID(blueRack).call("decrease", mParams)
  elseif playerColour == "Green" then
    getObjectFromGUID(greenRack).call("decrease", mParams)
  elseif playerColour == "Orange" then
    getObjectFromGUID(orangeRack).call("decrease", mParams)
  elseif playerColour == "Purple" then
    getObjectFromGUID(purpleRack).call("decrease", mParams)
  elseif playerColour == "Red" then
    getObjectFromGUID(redRack).call("decrease", mParams)
  elseif playerColour == "Yellow" then
    getObjectFromGUID(yellowRack).call("decrease", mParams)
  end
end

-- Move Camera Buttons

function showArena(passParams)
  local playerColour = passParams.player_clicker_color
  Player[playerColour].lookAt({
    position = {x=-34.89,y=0.96,z=0},
    pitch    = 90,
    yaw      = 0,
    distance = 22
  })
end

-- Handles see move rules.
function seeMoveRules(obj, player_clicker_color)
  local playerColour = player_clicker_color
  local showPosition

  if playerColour == "Blue" then
    showPosition = {x=0.02,y=0.24,z=-55.5}
  elseif playerColour == "Green" then
    showPosition = {x=-72,y=0.14,z=0.75}
  elseif playerColour == "Orange" then
    showPosition = {x=72,y=0.14,z=0.88}
  elseif playerColour == "Purple" then
    showPosition = {x=72,y=0.14,z=0.88}
  elseif playerColour == "Red" then
    showPosition = {x=0.02,y=0.24,z=-55.5}
  elseif playerColour == "Yellow" then
    showPosition = {x=-72,y=0.14,z=0.75}
  end

  Player[playerColour].lookAt({
    position = showPosition,
    pitch    = 90,
    yaw      = 0,
    distance = 22.5
  })
end

-- Helper function used to prevent people from being lazy about who the gym leader is.
-- Prints a suggestion for gym control if available. Otherwise does nothing.
function promptGymLeaderControl(control_type)
  -- Skip if turns aren't enabled.
  if not Turns or not Turns.enable then
    return
  end

  local current = Turns.turn_color
  if not current or current == "" then
    -- No current turn color yet.
    return
  end

  -- Collect all seated players except the current turn color.
  local eligible = {}
  for _, p in ipairs(Player.getPlayers()) do
    if p.seated and p.color ~= current then
      table.insert(eligible, p.color)
    end
  end

  -- Makke sure we have some eligible players.
  if #eligible == 0 then
    return
  end

  -- Pick one uniformly at random.
  local color_pick = eligible[math.random(#eligible)]
  if Player[color_pick].steam_name ~= nil then
    printToAll(control_type .. " Control Suggestion: " .. tostring(Player[color_pick].steam_name), color_pick)
  end
end

-- Sends to arena titan params supplies inputs.
function sendToArenaTitan(params)
  if defenderData.type ~= nil then
    print("There is already a Pokémon in the arena")
    return false
  elseif attackerData.type ~= nil and attackerData.type ~= PLAYER then
    return false
  end

  setTrainerType(DEFENDER, TITAN, params)

  -- Update pokemon info. For Titans, the model data is actually included. Yay!
  defenderPokemon = {}
  defenderPokemon.model_GUID = params.titanData.model_GUID
  defenderPokemon.custom_scale = params.titanData.custom_scale
  setNewPokemon(defenderPokemon, params.titanData, params.titanGUID)
  updateMoves(DEFENDER, defenderPokemon)

  -- Update the defender value counter.
  defenderData.attackValue.level = params.titanData.level
  updateAttackValueCounter(DEFENDER)

  -- Add the status buttons.
  showDefStatusButtons(true)

  -- Titan Card.
  local takeParams = {guid = defenderData.trainerGUID, position = {defenderPos.item[1], 1.5, defenderPos.item[2]}, rotation={0,180,0}}
  local pokeball = getObjectFromGUID(params.gymGUID)
  local titanCard = pokeball.takeObject(takeParams)

  -- Take Master Ball.
  takeParams = {position = {defenderPos.pokemon[1], 1.5, defenderPos.pokemon[2]}, rotation={0, 180, 0}}
  pokeball.takeObject(takeParams)

  -- Play music.
  Global.call("PlayGymBattleMusic",{})

  printToAll(params.titanData.name .. " wants to fight!", {r=246/255,g=192/255,b=15/255})
  promptGymLeaderControl("Titan")

  inBattle = true

  -- Save off the relevent data.
  gymLeaderGuid = params.titanGUID

  -- Move the button.
  edit_button(BUTTON_ID.defRecall, { position={recallDefPos.x, 0.4, recallDefPos.z}, click_function="recallGymLeader", label="RECALL", tooltip="Recall Titan"})

  if Global.call("get_models_enabled") then
    -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.) This is extra gross because
    -- I didn't feel like figuring out to fake allllll of the initialization process for RivalData models that may 
    -- never ever get seen for a game. Also it is extra complicated because we need two models per token.
    local pokemonModelData = {
      chip_GUID = params.titanGUID,
      base = {
        name = defenderPokemon.name,
        created_before = false,
        in_creation = false,
        persistent_state = true,
        picked_up = false,
        despawn_time = 1.0,
        model_GUID = defenderPokemon.model_GUID,
        custom_rotation = {titanCard.getRotation().x, titanCard.getRotation().y, titanCard.getRotation().z}
      },
      picked_up = false,
      in_creation = false,
      scale_set = {},
      isTwoFaced = false
    }
    pokemonModelData.chip = params.titanGUID
    Global.call("force_shiny_spawn", {guid=params.titanGUID, state=false})

    -- Copy the base to a state.
    pokemonModelData.state = pokemonModelData.base

    -- Check if the params have field overrides.
    if params.titanData.offset == nil then pokemonModelData.base.offset = {x=0, y=0, z=-0.17} else pokemonModelData.base.offset = params.titanData.offset end
    if params.titanData.custom_scale == nil then pokemonModelData.base.custom_scale = 1 else pokemonModelData.base.custom_scale = params.titanData.custom_scale end
    if params.titanData.idle_effect == nil then pokemonModelData.base.idle_effect = "Idle" else pokemonModelData.base.idle_effect = params.titanData.idle_effect end
    if params.titanData.spawn_effect == nil then pokemonModelData.base.spawn_effect = "Special Attack" else pokemonModelData.base.spawn_effect = params.titanData.spawn_effect end
    if params.titanData.run_effect == nil then pokemonModelData.base.run_effect = "Run" else pokemonModelData.base.run_effect = params.titanData.run_effect end
    if params.titanData.faint_effect == nil then pokemonModelData.base.faint_effect = "Faint" else pokemonModelData.base.faint_effect = params.titanData.faint_effect end

    -- Add it to the active chips.
    local model_already_created = Global.call("add_to_active_chips_by_GUID", {guid=params.titanGUID, data=pokemonModelData})
    pokemonModelData.base.created_before = model_already_created

    -- Wait until the gym leader card is idle.
    Wait.condition(
      function() -- Conditional function.
        -- Spawn in the model with the above arguments.
        Global.call("check_for_spawn_or_despawn", pokemonModelData)
      end,
      function() -- Condition function
        return titanCard ~= nil and titanCard.resting
      end,
      2,
      function() -- Timeout function.
        -- Spawn in the model with the above arguments. But this time the card is still moving, darn.
        Global.call("check_for_spawn_or_despawn", pokemonModelData)
      end
    )
    
    -- Sometimes the model gets placed upside down (I have no idea why lol). Detect it and fix it if needed.
    -- Sometimes models also get placed tilted backwards. Bah.
    Wait.condition(
      function() -- Conditional function.
        -- Get a handle to the model.
        local model_guid = Global.call("get_model_guid", params.titanGUID)
        if model_guid == nil then return end
        local model = getObjectFromGUID(model_guid)
        if model ~= nil then
          local model_rotation = model.getRotation()
          if math.abs(model_rotation.z-180) < 1 or math.abs(model_rotation.x-0) then
            model.setRotation({0, model_rotation.y, 0})
          end
        end
      end,
      function() -- Condition function
        return Global.call("get_model_guid", params.titanGUID) ~= nil
      end,
      2
    )
  end

  -- Lock the gym leader card in place.
  Wait.condition(
    function()
      -- Lock the gym leader card in place.
      titanCard.lock()
    end,
    function() -- Condition function
      return titanCard ~= nil and titanCard.resting
    end,
    2
  )

  showAutoRollButtons(true)
  showFlipGymButton(false)
  showRandomMoveButton(DEFENDER)
  moveStatusButtons(true)

  -- Check if HP Rule 2 is enabled.
  if Global.call("getHpRule2Set") then
    -- Create a Health Indicator.
    cloneTempHpRuleHealthIndicatorToArena(DEFENDER, params.titanData.level)
  end

  return true
end

-- Sends to arena gym params supplies inputs.
function sendToArenaGym(params)
  if defenderData.type ~= nil then
    print("There is already a Pokémon in the arena")
    return false
  elseif attackerData.type ~= nil and attackerData.type ~= PLAYER then
    return false
  end

  setTrainerType(DEFENDER, GYM, params)

  -- The model fields don't get passed in via params here because the gyms don't save it. Modifying all of the
  -- files would make me very sad.
  local gymData = Global.call("GetGymDataByGUID", {guid=params.trainerGUID})

  -- Update pokemon info.
  local pokemonData = params.pokemon  -- This is a table with two pokemon.
  defenderPokemon = {}
  setNewPokemon(defenderPokemon, pokemonData[1], params.trainerGUID)
  defenderPokemon.model_GUID = gymData.pokemon[1].model_GUID
  defenderPokemon.pokemonGUID = params.trainerGUID
  defenderPokemon.teraActive = gymData.pokemon[1].teraActive
  defenderPokemon.teraType = gymData.pokemon[1].teraType
  defenderPokemon.pokemon2 = pokemonData[2]
  defenderPokemon.pokemon2.pokemonGUID = params.trainerGUID
  defenderPokemon.pokemon2.model_GUID = gymData.pokemon[2].model_GUID
  defenderPokemon.pokemon2.teraActive = gymData.pokemon[2].teraActive
  defenderPokemon.pokemon2.teraType = gymData.pokemon[2].teraType

  -- Check if this Gym Leader gets a booster.
  local booster_chance = Global.call("getBoostersChance")
  if math.random(1,100) > (100 - booster_chance) then
    getBooster(DEFENDER, nil)
  end

  -- Check if we have a TM, Tera or Vitamin booster.
  local cardMoveData = nil
  if defenderData.tmCard then
    local cardObject = getObjectFromGUID(defenderData.boosterGuid)
    if cardObject then
      cardMoveData = copyTable(Global.call("GetMoveDataByName", cardObject.getName()))
    end
  elseif defenderData.teraType then
    local teraData = Global.call("GetTeraDataByGUID", defenderData.boosterGuid)
    if teraData ~= nil then
      -- Update the pokemon data.
      defenderPokemon.teraType = teraData.type
      -- Create the Tera label.
      local label = pokemonData[1].types[1]
      if Global.call("getDualTypeEffectiveness") and pokemonData[1].types[2] then
        label = label .. "/" .. pokemonData[1].types[2]
      end
      -- Show the defender Tera button.
      showDefenderTeraButton(true, label)
    end
  elseif defenderData.vitamin then
    defenderData.attackValue.item = 1
  end

  -- Update the moves.
  updateMoves(DEFENDER, defenderPokemon, cardMoveData)

  -- Update the defender value counter.
  defenderData.attackValue.level = pokemonData[1].baseLevel
  updateAttackValueCounter(DEFENDER)

  -- Add the status buttons.
  showDefStatusButtons(true)

  -- Gym Leader
  local takeParams = {guid = defenderData.trainerGUID, position = {defenderPos.item[1], 1.5, defenderPos.item[2]}, rotation={0,180,0}}
  local gym = getObjectFromGUID(params.gymGUID)
  local gymLeaderCard = gym.takeObject(takeParams)

  if params.isGymLeader then
    -- Take Badge
    takeParams = {position = {defenderPos.pokemon[1], 1.5, defenderPos.pokemon[2]}, rotation={0,180,0}}
    gym.takeObject(takeParams)

    Global.call("PlayGymBattleMusic",{})
  elseif params.isSilphCo then
    Global.call("PlaySilphCoBattleMusic",{})

    -- Take Masterball
    takeParams = {position = {defenderPos.pokemon[1], 1.5, defenderPos.pokemon[2]}, rotation={0,180,0}}
    gym.takeObject(takeParams)
  elseif params.isElite4 then
    Global.call("PlayFinalBattleMusic",{})
  elseif params.isRival then
    Global.call("PlayRivalMusic",{})
  else
    print("WARNING: uncertain which battle music to play")
    Global.call("PlayGymBattleMusic",{})
  end

  printToAll(defenderData.trainerName .. " wants to fight!", {r=246/255,g=192/255,b=15/255})
  promptGymLeaderControl("Gym")

  inBattle = true

  -- Check if we can provide a recall button in the arena.
  -- gyms tiers: 1-8
  -- elite4    : 9
  -- champion  : 10
  -- TR        : 11
  if gymData.gymTier and gymData.gymTier >= 1 and gymData.gymTier <= 11 then
    -- Save off the relevent data.
    gymLeaderGuid = gymData.guid

    -- Move the button.
    edit_button(BUTTON_ID.defRecall, { position={recallDefPos.x, 0.4, recallDefPos.z}, click_function="recallGymLeader", label="RECALL", tooltip="Recall Gym Leader"})
  end

  if Global.call("get_models_enabled") then
    -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.) This is extra gross because
    -- I didn't feel like figuring out to fake allllll of the initialization process for GymData models that may 
    -- never ever get seen for a game. Also it is extra complicated because we need two models per token.
    local pokemonModelData = {
      chip_GUID = params.trainerGUID,
      base = {
        name = defenderPokemon.name,
        created_before = false,
        in_creation = false,
        persistent_state = true,
        picked_up = false,
        despawn_time = 1.0,
        model_GUID = defenderPokemon.model_GUID,
        custom_rotation = {gymLeaderCard.getRotation().x, gymLeaderCard.getRotation().y, gymLeaderCard.getRotation().z}
      },
      picked_up = false,
      in_creation = false,
      scale_set = {},
      isTwoFaced = true
    }
    pokemonModelData.chip = params.trainerGUID
    Global.call("force_shiny_spawn", {guid=params.trainerGUID, state=false})

    -- Copy the base to a state.
    pokemonModelData.state = pokemonModelData.base

    -- Check if the params have field overrides.
    if gymData.pokemon[1].offset == nil then pokemonModelData.base.offset = {x=0, y=0, z=-0.17} else pokemonModelData.base.offset = gymData.pokemon[1].offset end
    if gymData.pokemon[1].custom_scale == nil then pokemonModelData.base.custom_scale = 1 else pokemonModelData.base.custom_scale = gymData.pokemon[1].custom_scale end
    if gymData.pokemon[1].idle_effect == nil then pokemonModelData.base.idle_effect = "Idle" else pokemonModelData.base.idle_effect = gymData.pokemon[1].idle_effect end
    if gymData.pokemon[1].spawn_effect == nil then pokemonModelData.base.spawn_effect = "Special Attack" else pokemonModelData.base.spawn_effect = gymData.pokemon[1].spawn_effect end
    if gymData.pokemon[1].run_effect == nil then pokemonModelData.base.run_effect = "Run" else pokemonModelData.base.run_effect = gymData.pokemon[1].run_effect end
    if gymData.pokemon[1].faint_effect == nil then pokemonModelData.base.faint_effect = "Faint" else pokemonModelData.base.faint_effect = gymData.pokemon[1].faint_effect end

    -- Add it to the active chips.
    local model_already_created = Global.call("add_to_active_chips_by_GUID", {guid=params.trainerGUID, data=pokemonModelData})
    pokemonModelData.base.created_before = model_already_created

    -- Wait until the gym leader card is idle.
    Wait.condition(
      function() -- Conditional function.
        -- Spawn in the model with the above arguments.
        Global.call("check_for_spawn_or_despawn", pokemonModelData)
      end,
      function() -- Condition function
        return gymLeaderCard ~= nil and gymLeaderCard.resting
      end,
      2,
      function() -- Timeout function.
        -- Spawn in the model with the above arguments. But this time the card is still moving, darn.
        Global.call("check_for_spawn_or_despawn", pokemonModelData)
      end
    )
    
    -- Sometimes the model gets placed upside down (I have no idea why lol). Detect it and fix it if needed.
    -- Sometimes models also get placed tilted backwards. Bah.
    Wait.condition(
      function() -- Conditional function.
        -- Get a handle to the model.
        local model_guid = Global.call("get_model_guid", params.trainerGUID)
        if model_guid == nil then return end
        local model = getObjectFromGUID(model_guid)
        if model ~= nil then
          local model_rotation = model.getRotation()
          if math.abs(model_rotation.z-180) < 1 or math.abs(model_rotation.x-0) then
            model.setRotation({0, model_rotation.y, 0})
          end
        end
      end,
      function() -- Condition function
        return Global.call("get_model_guid", params.trainerGUID) ~= nil
      end,
      2
    )
  end

  -- Lock the gym leader card in place.
  Wait.condition(
    function()
      -- Lock the gym leader card in place.
      gymLeaderCard.lock()
    end,
    function() -- Condition function
      return gymLeaderCard ~= nil and gymLeaderCard.resting
    end,
    2
  )

  showAutoRollButtons(true)
  showFlipGymButton(true)
  showRandomMoveButton(DEFENDER)
  moveStatusButtons(true)

  -- Check if HP Rule 2 is enabled.
  if Global.call("getHpRule2Set") then
    -- Create a Health Indicator.
    cloneTempHpRuleHealthIndicatorToArena(DEFENDER, pokemonData[1].baseLevel)
  end

  return true
end

-- Recalls gym leader.
function recallGymLeader()
  -- Confirm we at least have a Gym Leader GUID.
  if not gymLeaderGuid then return end

  -- Remove the button.
  edit_button(BUTTON_ID.defRecall, { position={recallDefPos.x, 1000, recallDefPos.z}, click_function="recallDefArena", label="RECALL", tooltip="Recall Pokémon"})

  -- Get a handle on the appropriate gym.
  local gym = getObjectFromGUID(defenderData.gymGUID)
  if not gym then
    print("Failed to get gym handle to allow a Gym Leader to recall. WHAT DID YOU DO?")
    return
  end

  -- Reset the Gym Leader GUID.
  gymLeaderGuid = nil

  -- Recall the Gym Leader.
  gym.call("recall")

  -- Update a button.
  showAutoRollButtons(false)
  moveStatusButtons(false)
end

-- Sends to arena trainer params supplies inputs.
function sendToArenaTrainer(params)
  if attackerData.type ~= nil then
    print("There is already a Pokémon in the arena")
    return false
  elseif defenderData.type ~= nil and defenderData.type ~= PLAYER then
    return false
  end

  -- Update attacker data.
  setTrainerType(ATTACKER, TRAINER, params)

  -- Update the buttons for the trainer battle. If this is second trainer fight, there is no need for a NEXT button. However, if users mix the two
  -- recall buttons then this button can get out of sync.
  edit_button(BUTTON_ID.atkRecall, { position={recallAtkPos.x, 0.4, recallAtkPos.z}, click_function="recallTrainerHook", label="RECALL", tooltip="Recall Trainer"})
  if not isSecondTrainer then
    edit_button(BUTTON_ID.nextRival, { position={rivalFlipButtonPos.x, 0.4, rivalFlipButtonPos.z}, click_function="nextTrainerBattle", label="NEXT", tooltip="Next Trainer Fight"})
  end

  -- Trainer Pokemon.
  local takeParams = {position = {attackerPos.pokemon[1], 1.5, attackerPos.pokemon[2]}, rotation={0,180,0}}

  local pokeball = getObjectFromGUID(params.pokeballGUID)
  pokeball.shuffle()
  local pokemon = pokeball.takeObject(takeParams)
  local pokemonGUID = pokemon.getGUID()
  local pokemonData = Global.call("GetPokemonDataByGUID",{guid=pokemonGUID})
  attackerPokemon = {}
  setNewPokemon(attackerPokemon, pokemonData, pokemonGUID)

  inBattle = true
  Global.call("PlayTrainerBattleMusic",{})
  printToAll("Trainer wants to fight!", {r=246/255,g=192/255,b=15/255})
  promptGymLeaderControl("Trainer")

  updateMoves(ATTACKER, attackerPokemon)

  -- Update the attacker value counter.
  attackerData.attackValue.level = attackerPokemon.baseLevel
  updateAttackValueCounter(ATTACKER)

  -- Add the status buttons.
  showAtkStatusButtons(true)
  
  local numMoves = #attackerPokemon.moves
  if numMoves > 1 then
    showRandomMoveButton(ATTACKER)
  end
  showAutoRollButtons(true)
  moveStatusButtons(true)

  if Global.call("get_models_enabled") then
    -- Since the trainers use normal tokens we can relay on normal model logic except that it will be 
    -- rotated 180 degrees from what we want.
    Wait.condition(
      function() -- Conditional function.
        -- Get a handle to the model.
        local model_guid = Global.call("get_model_guid", pokemonGUID)
        if model_guid == nil then return end
        local model = getObjectFromGUID(model_guid)
        local model_rotation = model.getRotation()
        if model ~= nil then
          model.setRotation({model_rotation.x, 0, model_rotation.z})
        end
      end,
      function() -- Condition function
        return Global.call("get_model_guid", pokemonGUID) ~= nil
      end,
      2
    )
  end

  -- Check if HP Rule 2 is enabled.
  if Global.call("getHpRule2Set") then
    -- Create a Health Indicator.
    cloneTempHpRuleHealthIndicatorToArena(ATTACKER, pokemonData.level)
  end

  return true
end

-- Sends to arena rival params supplies inputs.
function sendToArenaRival(params)
  if attackerData.type ~= nil then
    print("There is already a Pokémon in the arena")
    return false
  elseif defenderData.type ~= nil and defenderData.type ~= PLAYER then
    return false
  end

  setTrainerType(ATTACKER, RIVAL, params)

  -- Get the rival token.
  local takeParams = {guid = params.pokemonGUID, position = {attackerPos.item[1], 1.5, attackerPos.item[2]}, rotation={0,180,0}}
  local pokeball = getObjectFromGUID(params.pokeballGUID)
  local rivalCard = pokeball.takeObject(takeParams)
  
  -- Wait until the rival token is resting.
  Wait.condition(
    function()
      -- Do nothing.
    end,
    function() -- Condition function
      return rivalCard ~= nil and rivalCard.resting
    end,
    2
  )

  -- Do a sanity check.
  -- TODO: Becaise of how Wait.condition() works, this is likely pointless.
  if rivalCard == nil then
    print("Failed to fetch rival " .. params.trainerName)
    return
  end

  -- Update battle state.
  inBattle = true
  Global.call("PlayTrainerBattleMusic",{})
  printToAll("Rival " .. params.trainerName .. " wants to fight!", {r=246/255, g=192/255, b=15/255})

  -- Move the button.
  edit_button(BUTTON_ID.atkRecall, { position={recallAtkPos.x, 0.4, recallAtkPos.z}, click_function="recallRivalHook", label="RECALL", tooltip="Recall Rival"})
  promptGymLeaderControl("Rival")
  
  -- Update pokemon info.
  local pokemonData = params.pokemonData  -- This is a table with two pokemon.
  attackerPokemon = {}
  setNewPokemon(attackerPokemon, pokemonData[1], params.pokemonGUID)
  attackerPokemon.pokemonGUID = params.pokemonGUID
  attackerPokemon.pokemon2 = pokemonData[2]
  attackerPokemon.pokemon2.pokemonGUID = params.pokemonGUID

  -- Check if this Rival gets a booster.
  local booster_chance = Global.call("getBoostersChance")
  if math.random(1,100) > (100 - booster_chance) then
    getBooster(ATTACKER, nil)
  end

  -- Check if we have a TM, Tera or Vitamin booster.
  local cardMoveData = nil
  if attackerData.tmCard then
    local cardObject = getObjectFromGUID(attackerData.boosterGuid)
    if cardObject then
      cardMoveData = copyTable(Global.call("GetMoveDataByName", cardObject.getName()))
    end
  elseif attackerData.teraType then
    local teraData = Global.call("GetTeraDataByGUID", attackerData.boosterGuid)
    if teraData ~= nil then
      -- Update the pokemon data.
      attackerPokemon.teraType = teraData.type
      -- Create the Tera label.
      local label = pokemonData[1].types[1]
      if Global.call("getDualTypeEffectiveness") and pokemonData[1].types[2] then
        label = label .. "/" .. pokemonData[1].types[2]
      end
      -- Show the defender Tera button.
      showAttackerTeraButton(true, label)
    elseif attackerData.vitamin then
      attackerData.attackValue.item = 1
    end
  end

  updateMoves(ATTACKER, attackerPokemon, cardMoveData)

  -- Update the attacker value counter.
  attackerData.attackValue.level = attackerPokemon.baseLevel
  updateAttackValueCounter(ATTACKER)

  -- Add the status buttons.
  showAtkStatusButtons(true)
  
  if Global.call("get_models_enabled") then
    -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.) This is extra gross because
    -- I didn't feel like figuring out to fake allllll of the initialization process for RivalData models that may 
    -- never ever get seen for a game. Also it is extra complicated because we need two models per token.
    local pokemonModelData = {
      chip_GUID = params.pokemonGUID,
      base = {
        name = params.pokemonData[1].name,
        created_before = false,
        in_creation = false,
        persistent_state = true,
        picked_up = false,
        despawn_time = 1.0,
        model_GUID = attackerPokemon.model_GUID,
        custom_rotation = {rivalCard.getRotation().x, rivalCard.getRotation().y + 180.0, rivalCard.getRotation().z}
      },
      picked_up = false,
      in_creation = false,
      scale_set = {},
      isTwoFaced = true
    }
    pokemonModelData.chip = attackerPokemon.pokemonGUID
    Global.call("force_shiny_spawn", {guid=params.pokemonGUID, state=false})

    -- Copy the base to a state.
    pokemonModelData.state = pokemonModelData.base

    -- Check if the params have field overrides.
    if params.offset == nil then pokemonModelData.base.offset = {x=0, y=0, z=-0.17} else pokemonModelData.base.offset = params.offset end
    if params.custom_scale == nil then pokemonModelData.base.custom_scale = 1 else pokemonModelData.base.custom_scale = params.custom_scale end
    if params.idle_effect == nil then pokemonModelData.base.idle_effect = "Idle" else pokemonModelData.base.idle_effect = params.idle_effect end
    if params.spawn_effect == nil then pokemonModelData.base.spawn_effect = "Special Attack" else pokemonModelData.base.spawn_effect = params.spawn_effect end
    if params.run_effect == nil then pokemonModelData.base.run_effect = "Run" else pokemonModelData.base.run_effect = params.run_effect end
    if params.faint_effect == nil then pokemonModelData.base.faint_effect = "Faint" else pokemonModelData.base.faint_effect = params.faint_effect end

    -- Add it to the active chips.
    local model_already_created = Global.call("add_to_active_chips_by_GUID", {guid=params.pokemonGUID, data=pokemonModelData})

    -- Spawn in the model with the above arguments.
    pokemonModelData.base.created_before = model_already_created
    Global.call("check_for_spawn_or_despawn", pokemonModelData)
  end

  -- Lock the rival in place.
  Wait.condition(
    function()
      -- Unlock the rival in place.
      rivalCard.lock()
    end,
    function() -- Condition function
      return rivalCard ~= nil and rivalCard.resting
    end,
    2
  )

  -- Update a few buttons.
  showAutoRollButtons(true)
  showFlipRivalButton(true)
  showRandomMoveButton(ATTACKER)
  moveStatusButtons(true)

  -- Check if HP Rule 2 is enabled.
  if Global.call("getHpRule2Set") then
    -- Create a Health Indicator.
    cloneTempHpRuleHealthIndicatorToArena(ATTACKER, pokemonData[1].level)
  end

  return true
end

-- Recalls trainer params supplies inputs.
function recallTrainer(params)
  -- Remove both buttons.
  edit_button(BUTTON_ID.atkRecall, { position={recallAtkPos.x, 1000, recallAtkPos.z}, click_function="recallAtkArena", label="RECALL", tooltip=""})
  edit_button(BUTTON_ID.nextRival, { position={rivalFlipButtonPos.x, 1000, rivalFlipButtonPos.z}, click_function="flipRivalPokemon", tooltip=""})

  local trainerPokemon = getObjectFromGUID(attackerPokemon.pokemonGUID)

  local pokeball = getObjectFromGUID(attackerData.pokeballGUID)
  pokeball.putObject(trainerPokemon)
  pokeball.shuffle()

  text = getObjectFromGUID(atkText)
  text.setValue(" ")

  hideRandomMoveButton(ATTACKER)
  showAutoRollButtons(false)
  moveStatusButtons(false)

  -- Remove status card if it is present.
  if defenderPokemon and defenderPokemon.status ~= nil then
    removeStatus(defenderPokemon)
  end

  -- Check if HP Rule 2 is enabled.
  if Global.call("getHpRule2Set") then
    -- Destroy the temporary Health Indicator.
    destroyTempHealthIndicator(ATTACKER)
  end

  -- Detect status cards and tokens. Trainers can delete them.
  removeStatusAndTokens(ATTACKER)

  -- Add the status buttons.
  showAtkStatusButtons(false)
  showMoveDisableButtons(ATTACKER, false)
  showAttackerTeraButton(false)
  clearPokemonData(ATTACKER)
  clearTrainerData(ATTACKER)
end

-- Recalls gym.
function recallGym()
  -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.) This is extra gross because
  -- I didn't feel like figuring out to fake allllll of the initialization process for GymData models that may 
  -- never ever get seen for a game. Also it is extra complicated because we need two models per token.
  if Global.call("get_models_enabled") then
    -- Get the active model GUID. This prevents despawning the wrong model.
    local model_guid = Global.call("get_model_guid", defenderPokemon.pokemonGUID)
    if model_guid == nil then
      model_guid = defenderPokemon.model_GUID
    end

    -- Generate the despawn data.
    local despawn_data = {
      chip = defenderPokemon.pokemonGUID,
      state = defenderPokemon,
      base = defenderPokemon,
      model = model_guid
    }

    -- Despawn the (hopefully) correct model via its GUID.
    Global.call("despawn_now", despawn_data)
  end

  -- Get a handle of the gym and gym leader.
  local gymLeader = getObjectFromGUID(defenderData.trainerGUID)
  gymLeader.unlock()

  -- If we were flipped, flip it back. This prevents the model from spawning in upside down next time.
  if not Global.call("isFaceUp", gymLeader) then
    gymLeader.flip()
  end

  -- Remove this chip from the active list.
  Global.call("remove_from_active_chips_by_GUID", defenderPokemon.pokemonGUID)

  local gym = getObjectFromGUID(defenderData.gymGUID)
  Wait.condition(
    function()
      -- Put the gym leader back in its gym.
       gym.putObject(gymLeader)
    end,
    function() -- Condition function
      return gymLeader.resting
    end,
    3,
    -- Timeout function.
    function()
     -- Put the gym leader back in its gym.
      local gym = getObjectFromGUID(defenderData.gymGUID)
      if gym then
        gym.putObject(gymLeader)
      end
    end
  )

  -- Collect Badge if it hasn't been taken
  local param = {}
  param.direction = {0,-1,0}
  param.type = 1
  param.max_distance = 1.5
  param.debug = debug
  param.origin = {defenderPos.pokemon[1], 1.6, defenderPos.pokemon[2]}
  local hits = Physics.cast(param)
  if #hits ~= 0 then
    local badge = hits[1].hit_object
    if badge.hasTag("Badge") then
      gym.putObject(badge)
    end
  end

  showFlipGymButton(false)
  hideRandomMoveButton(DEFENDER)
  showAutoRollButtons(false)
  moveStatusButtons(false)

  -- Remove the status if it is present.
  if defenderPokemon and defenderPokemon.status ~= nil then
    removeStatus(defenderPokemon)
  end

  -- Check if we had a Booster and discard it.
  if defenderData.boosterGuid ~= nil then
    discardBooster(DEFENDER)
  end

  -- Check if HP Rule 2 is enabled.
  if Global.call("getHpRule2Set") then
    -- Destroy the temporary Health Indicator.
    destroyTempHealthIndicator(DEFENDER)
  end

  -- Detect status cards and tokens. Gym Leaders can delete them.
  removeStatusAndTokens(DEFENDER)

  -- Add the status buttons.
  showDefStatusButtons(false)

  clearPokemonData(DEFENDER)
  clearTrainerData(DEFENDER)

  -- Clear the texts.
  showDefenderTeraButton(false)
  clearMoveText(ATTACKER)
  clearMoveText(DEFENDER)
end

-- Recalls rival.
function recallRival()
  -- Get the active model GUID. This prevents despawning the wrong model.
  local model_guid = Global.call("get_model_guid", attackerPokemon.pokemonGUID)
  if model_guid == nil then
    model_guid = attackerPokemon.model_GUID
  end

  -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.) This is extra gross because
  -- I didn't feel like figuring out to fake allllll of the initialization process for RivalData models that may 
  -- never ever get seen for a game. Also it is extra complicated because we need two models per token.
  if Global.call("get_models_enabled") then
    local despawn_data = {
      chip = attackerPokemon.pokemonGUID,
      state = attackerPokemon,
      base = attackerPokemon,
      model = model_guid
    }

    Global.call("despawn_now", despawn_data)
  end

  -- Get the rival token object and unlock it in place.
  local rivalCard = getObjectFromGUID(attackerPokemon.pokemonGUID)
  rivalCard.unlock()

  -- If we were flipped, flip it back. This prevents the model from spawning in upside down next time.
  if not Global.call("isFaceUp", rivalCard) then
    rivalCard.flip()
  end

  -- Remove this chip from the active list.
  Global.call("remove_from_active_chips_by_GUID", attackerPokemon.pokemonGUID)

  -- Save the pokeball GUID.
  local pokeballGUID = attackerData.pokeballGUID

  Wait.condition(
    function()
      -- Put the rival token back in its pokeball.
      local pokeball = getObjectFromGUID(pokeballGUID)
      pokeball.putObject(rivalCard)
    end,
    function() -- Condition function
      return rivalCard.resting
    end,
    2,
    -- Timeout function.
    function()
      -- Put the rival token back in its pokeball.
      local pokeball = getObjectFromGUID(pokeballGUID)
      pokeball.putObject(rivalCard)
    end
  )

  -- Remove the status if it is present.
  if attackerPokemon and attackerPokemon.status ~= nil then
    removeStatus(attackerPokemon)
  end

  hideRandomMoveButton(ATTACKER)
  showAutoRollButtons(false)
  moveStatusButtons(false)

  -- Check if we had a Booster and discard it.
  if attackerData.boosterGuid ~= nil then
    discardBooster(ATTACKER)
  end

  -- Check if HP Rule 2 is enabled.
  if Global.call("getHpRule2Set") then
    -- Destroy the temporary Health Indicator.
    destroyTempHealthIndicator(ATTACKER)
  end

  -- Detect status cards and tokens. Gym Leaders can delete them.
  local status_table = detectStatusCardAndTokens(ATTACKER)
  removeStatusAndTokens(ATTACKER)

  clearPokemonData(ATTACKER)
  clearTrainerData(ATTACKER)
  showFlipRivalButton(false)

  -- Add the status buttons.
  showAtkStatusButtons(true)

  -- Clear the texts.
  showAttackerTeraButton(false)
  clearMoveText(ATTACKER)
  clearMoveText(DEFENDER)
end

-- Basic helper function that hooks into the Rival Pokeball and calls its recall function.
-- The Rival Pokeball recall function then calls recallRival(). :D
function recallRivalHook()
  -- Get a handle on the rival event pokeball.
  local rivalEventPokeball = getObjectFromGUID("432e69")
  if not rivalEventPokeball then
    print("Failed to get Pokéball handle to allow a Rival Event to recall. WHAT DID YOU DO?")
    return
  end

  -- Remove the button.
  edit_button(BUTTON_ID.atkRecall, { position={recallAtkPos.x, 1000, recallAtkPos.z}, click_function="recallAtkArena", label="RECALL", tooltip=""})

  -- Recall the Gym Leader.
  rivalEventPokeball.call("recall")
end

-- Basic helper function that hooks into the appropriate Pokeball and calls its recall function.
-- The Pokeball recall function then calls recallTrainer(). :D
function recallTrainerHook()
  -- Remove both buttons.
  edit_button(BUTTON_ID.atkRecall, { position={recallAtkPos.x, 1000, recallAtkPos.z}, click_function="recallAtkArena", label="RECALL", tooltip=""})
  edit_button(BUTTON_ID.nextRival, { position={rivalFlipButtonPos.x, 1000, rivalFlipButtonPos.z}, click_function="flipRivalPokemon", tooltip=""})

  -- Update the isSecondTrainer flag.
  isSecondTrainer = false

  -- Check if we at least have a pokeball GUID.
  if not attackerData or not attackerData.pokeballGUID then
    print("Unknown home for this Pokémon. You need to recall it conventionally. :(")
    return
  end

  -- Get a handle on the appropriate pokeball.
  local pokeball = getObjectFromGUID(attackerData.pokeballGUID)
  if not pokeball then
    print("Failed to get Pokéball handle to allow a trainer to recall. WHAT DID YOU DO?")
    return
  end

  -- Recall this Pokemon.
  pokeball.call("recall")
end

-- Basic helper function that allows a trainer to send in one more pokemon for the double trainer
-- battles.
function nextTrainerBattle()
  -- Hide this button, since there is only ever a Trainer Battle (2) at most.
  edit_button(BUTTON_ID.nextRival, { position={rivalFlipButtonPos.x, 1000, rivalFlipButtonPos.z}, click_function="flipRivalPokemon", tooltip=""})

  -- Update the isSecondTrainer flag.
  isSecondTrainer = true

  -- Check if we at least have a pokeball GUID.
  if not attackerData or not attackerData.pokeballGUID then
    -- Failed to recall like this. Remove the button and have the user recall normally.
    edit_button(BUTTON_ID.atkRecall, { position={recallAtkPos.x, 1000, recallAtkPos.z}, click_function="recallAtkArena", label="RECALL", tooltip=""})

    print("Unknown home for this Pokémon. You need to recall it conventionally. :(")
    return
  end

  -- Get a handle on the appropriate pokeball.
  local pokeball = getObjectFromGUID(attackerData.pokeballGUID)
  if not pokeball then
    print("Failed to get Pokéball handle to allow a trainer to send another Pokémon. WHAT DID YOU DO?")
    return
  end

  -- Recall this Pokemon.
  pokeball.call("recall")

  -- Send another Pokemon to battle.
  Wait.time(function() pokeball.call("battle") end, 0.3)
end

-- Sends to arena params supplies inputs.
function sendToArena(params)
    local isAttacker = params.isAttacker
    local arenaData = isAttacker and attackerPokemon or defenderPokemon
    local pokemonData = params.slotData
    local rack = getObjectFromGUID(params.rackGUID)

    -- Get pokemon. The model may not be present here.
    local pokemon = getObjectFromGUID(pokemonData.pokemonGUID)

    if not Global.call("isFaceUp", pokemon) then
      print("Cannot send a fainted Pokémon to the arena")
      return
    elseif attackerPokemon ~= nil and isAttacker or defenderPokemon ~= nil and not isAttacker then
      print("There is already a Pokémon in the arena")
      return
    end

    -- Auto-pan the camera if selected.
    if params.autoCamera then
      Player[params.playerColour].lookAt({position = {x=-34.89,y=0.96,z=0.8}, pitch = 90, yaw = 0, distance = 22})
    end

    -- Send the Pokemon to the arena.
    local arenaPos = isAttacker and attackerPos or defenderPos
    pokemon.setPosition({arenaPos.pokemon[1], 0.96, arenaPos.pokemon[2]})
    pokemon.setRotation({pokemon.getRotation().x + params.xRotSend, pokemon.getRotation().y + params.yRotSend, pokemon.getRotation().z + params.zRotSend})
    pokemon.setLock(true)

    -- Get the active model GUID. This prevents despawning the wrong model.
    local model_guid = Global.call("get_model_guid", pokemonData.pokemonGUID)
    if model_guid == nil then
      model_guid = pokemonData.model_GUID
    end

    -- Assign the chip to the GUID.
    pokemonData.chip = pokemonData.pokemonGUID

    -- Send the pokemon model to the arena, if present.
    local pokemonModel = getObjectFromGUID(model_guid)
    if pokemonModel ~= nil and Global.call("get_models_enabled") then
      -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.)
      pokemonData.base = {offset = pokemonData.offset}
      pokemonModel.setPosition(Global.call("model_position", pokemonData))
      local modelYRotSend = params.yRotSend
      if isAttacker then
        modelYRotSend = modelYRotSend - 180.0
      end
      pokemonModel.setRotation({pokemonModel.getRotation().x + params.xRotSend, pokemonModel.getRotation().y + modelYRotSend, pokemonModel.getRotation().z + params.zRotSend})
      pokemonModel.setLock(true)
    end

    -- Level Die
    local diceLevel = 0
    if pokemonData.levelDiceGUID ~= nil then
        local dice = getObjectFromGUID(pokemonData.levelDiceGUID)
        dice.setPosition({arenaPos.dice[1], 1.37, arenaPos.dice[2]})
        dice.setRotation({dice.getRotation().x + params.xRotSend, dice.getRotation().y + params.yRotSend, dice.getRotation().z + params.zRotSend})
        diceLevel = dice.getValue()
    end

    local castParams = {}
    castParams.direction = {0,-1,0}
    castParams.type = 1
    castParams.max_distance = 1
    castParams.debug = debug
    castParams.max_distance = 0.74

    -- Status
    local origin = {params.pokemonXPos[params.index], 0.95, params.statusZPos}
    castParams.origin = rack.positionToWorld(origin)
    local statusHits = Physics.cast(castParams)
    if #statusHits ~= 0 then
        local status = getObjectFromGUID(statusHits[1].hit_object.guid)
        status.setPosition({arenaPos.status[1], 1.03, arenaPos.status[2]})
        status.setRotation({0, 180, 0})
    end

    -- Status Counters
    origin = {params.pokemonXPos[params.index] + 0.21, 0.95, params.pokemonZPos - 0.137}
    castParams.origin = rack.positionToWorld(origin)

    local tokenHits = Physics.cast(castParams)
    if #tokenHits ~= 0 then
        local statusCounters = getObjectFromGUID(tokenHits[1].hit_object.guid)
        statusCounters.setPosition({arenaPos.statusCounters[1], 1.03, arenaPos.statusCounters[2]})
        statusCounters.setRotation({0, 180, 0})
    end

    -- Initialize tmCard and zCrystalCard variables.
    pokemonData.tmCard = false
    pokemonData.zCrystalCard = false

    -- Item
    local pokemonMoves = pokemonData.moves
    origin = {params.pokemonXPos[params.index], 0.95, params.itemZPos}
    castParams.origin = rack.positionToWorld(origin)
    local itemHits = Physics.cast(castParams)
    local hasTMCard = false
    local cardMoveData = nil
    local teraType = nil
    if #itemHits ~= 0 then
      local itemCard = getObjectFromGUID(itemHits[1].hit_object.guid)
      if itemCard.hasTag("Item") then
        pokemonData.itemCardGUID = itemCard.getGUID()
        itemCard.setPosition({arenaPos.item[1], 1.03, arenaPos.item[2]})
        itemCard.setRotation({0, 180, 0})

        if itemCard.hasTag("TM") then
          pokemonData.tmCard = true
          local cardObject = getObjectFromGUID(itemCard.getGUID())
          if cardObject then
            cardMoveData = copyTable(Global.call("GetMoveDataByName", cardObject.getName()))
          end
        elseif itemCard.hasTag("ZCrystal") then
          pokemonData.zCrystalCard = true
          local zCrystalData = Global.call("GetZCrystalDataByGUID", {zCrystalGuid=itemCard.getGUID(), pokemonGuid=pokemonData.pokemonGUID})
          if zCrystalData ~= nil then
            cardMoveData = copyTable(Global.call("GetMoveDataByName", zCrystalData.move))
            cardMoveData.name = zCrystalData.displayName
          end
        elseif itemCard.hasTag("TeraType") then
          pokemonData.teraType = true
          local teraData = Global.call("GetTeraDataByGUID", itemCard.getGUID())
          if teraData ~= nil then
            -- Create the Tera label.
            local label = pokemonData.types[1]
            if Global.call("getDualTypeEffectiveness") and pokemonData.types[2] then
              label = label .. "/" .. pokemonData.types[2]
            end
            -- Determine which Tera buttons to show.
            if isAttacker then
              teraType = teraData.type
              showAttackerTeraButton(true, label)
            else
              teraType = teraData.type
              showDefenderTeraButton(true, label)
            end
          end
        elseif itemCard then
          local card_name = itemCard.getName()
          if (card_name == "Vitamin" or card_name == "Shiny Charm") then
            pokemonData.vitamin = true
          elseif card_name == "Alpha Pokémon" then
            pokemonData.alpha = true
          elseif card_name then
            local booster_type = parseTypeEnhancerType(card_name)
            if booster_type then
              pokemonData.type_enhancer = booster_type
            end
          end
        end
      end
    end

    if hasTMCard == false and pokemonMoves[1].isTM then
      table.remove(pokemonMoves,1)
    end

    -- Announce the trainer sending their Pokemon.
    if Player[params.playerColour].steam_name ~= nil then
      if not pokemonData.alpha then
        printToAll(Player[params.playerColour].steam_name .. " sent out " .. pokemonData.name, stringColorToRGB(params.playerColour))
      else
        printToAll(Player[params.playerColour].steam_name .. " sent out Alpha " .. pokemonData.name, stringColorToRGB(params.playerColour))
      end
    else
      if not pokemonData.alpha then
        printToAll("This Player sent out " .. pokemonData.name, stringColorToRGB(params.playerColour))
      else
        printToAll("This Player sent out Alpha " .. pokemonData.name, stringColorToRGB(params.playerColour))
      end
    end

    local buttonParams = {
        index = params.index,
        yLoc = params.yLoc,
        zLoc = params.zLoc,
        pokemonXPos = params.pokemonXPos,
        pokemonZPos = params.pokemonZPos,
        rackGUID = params.rackGUID
    }

    -- Hide all rack buttons apart from the recall button
    hideAllRackButtons(buttonParams)
    local recallIndex = 4 + (params.index * 8) - 3
    rack.editButton({index=recallIndex, position={-1.47 + ((params.index - 1) * 0.59), 0.21, params.zLoc}, rotation={0,0,0}, click_function="rackRecall", tooltip="Recall Pokémon"})

    if isAttacker then
        showAtkButtons(true)
        attackerPokemon = pokemonData
        attackerPokemon.teraType = teraType
    else
        showDefButtons(true)
        defenderPokemon = pokemonData
        defenderPokemon.teraType = teraType
    end
    setTrainerType(isAttacker, PLAYER, {playerColor=params.playerColour})

    updateEvolveButtons(params, pokemonData, diceLevel)

    updateMoves(params.isAttacker, pokemonData, cardMoveData)
    
    -- Show the auto roller and status buttons.
    showAutoRollButtons(true)
    moveStatusButtons(true)

    -- Update the appropriate value counter.
    if isAttacker then
      attackerData.attackValue.level = pokemonData.baseLevel + pokemonData.diceLevel
    else
      defenderData.attackValue.level = pokemonData.baseLevel + pokemonData.diceLevel
    end
    updateAttackValueCounter(params.isAttacker)

    if attackerPokemon ~= nil and defenderPokemon ~= nil and inBattle == false then
      inBattle = true
      Global.call("PlayTrainerBattleMusic",{})
    end

    -- Check if HP Rule 2 is enabled.
    if Global.call("getHpRule2Set") and params.healthIndicatorGuid then
      -- Get a handle on the health indicator object.
      local health_indicator = getObjectFromGUID(params.healthIndicatorGuid)
      if health_indicator then
        -- Move the indicator.
        health_indicator.setPosition(isAttacker and attackerPos.healthIndicator or defenderPos.healthIndicator)
        health_indicator.setRotation({0, 180, 0})

        -- Once the indicator is resting, lock it.
        Wait.time(
          function()
            health_indicator.setLock(true)
          end,
          2
        )

        -- Save off the GUID.
        local data = isAttacker and attackerData or defenderData
        data.health_indicator_guid = health_indicator.guid
      else
        printToAll("Failed to get Health Indicator with GUID " .. tostring(params.healthIndicatorGuid))
      end
    end

    -- Clear move texts.
    clearMoveText(ATTACKER)
    clearMoveText(DEFENDER)
end

-- Sets trainer type isAttacker selects attacker/defender. params supplies inputs.
function setTrainerType(isAttacker, type, params)

  clearTrainerData(isAttacker)
  local data = isAttacker and attackerData or defenderData
  data.type = type
  if type == PLAYER then
    data.playerColor = params.playerColor
  elseif type == TRAINER then
    data.pokeballGUID = params.pokeballGUID
  elseif type == GYM then
    data.trainerName = params.trainerName
    data.gymGUID = params.gymGUID
    data.pokemon = params.pokemon
    data.trainerGUID = params.trainerGUID
  elseif type == RIVAL then
    data.trainerName = params.trainerName
    data.pokeballGUID = params.pokeballGUID
    data.pokemon = params.pokemonData
    data.pokemonGUID = params.pokemonGuid
  elseif type == TITAN then
    data.gymGUID = params.gymGUID
    data.pokemon = params.titanData
    data.trainerGUID = params.titanGUID
  end
end

-- Resets trainer data isAttacker selects attacker/defender.
function resetTrainerData(isAttacker)

  if isAttacker then
    data = attackerData
  else
    data = defenderData
  end

  data.dice = {}
  data.previousMove = {}
  data.canSelectMove = true
  data.selectedMove = -1
  data.moveData = {}
  data.diceMod = 0
  data.addDice = 0
  -- Use a fresh attackValue table so attacker/defender don't share the same reference.
  data.attackValue = copyTable(DEFAULT_ARENA_DATA.attackValue)
end

-- Clears trainer data isAttacker selects attacker/defender.
function clearTrainerData(isAttacker)

  if isAttacker then
    attackerData = {}
  else
    defenderData = {}
  end

  resetTrainerData(isAttacker)
end


-- Recalls recall params supplies inputs.
function recall(params)
    local isAttacker = params.isAttacker
    local rack = getObjectFromGUID(params.rackGUID)
    local pokemonData = isAttacker and attackerPokemon or defenderPokemon
    local arenaPos = isAttacker and attackerPos or defenderPos

    text = getObjectFromGUID(isAttacker and atkText or defText)
    text.setValue(" ")

    if params.autoCamera then
      Player[params.playerColour].lookAt({position = params.rackPosition, pitch = 60, yaw = 360 + params.yRotRecall, distance = 25})
    end

    -- Pokemon token recall.
    local pokemon = getObjectFromGUID(pokemonData.pokemonGUID)
    local position = rack.positionToWorld({params.pokemonXPos[params.index], 0.5, params.pokemonZPos})
    pokemon.setPosition(position)
    pokemon.setRotation({pokemon.getRotation().x + params.xRotRecall, pokemon.getRotation().y + params.yRotRecall, pokemon.getRotation().z + params.zRotRecall})
    pokemon.setLock(false)

    -- Get the active model GUID. This prevents despawning the wrong model.
    local model_guid = Global.call("get_model_guid", pokemonData.pokemonGUID)
    if model_guid == nil then
      model_guid = pokemonData.model_GUID
    end

    -- Assign the chip to the GUID.
    pokemonData.chip = pokemonData.pokemonGUID

    -- Move the model back to the rack. Since the token moved first, we can just copy its position and rotation.
    local pokemonModel = getObjectFromGUID(model_guid)
    if pokemonModel ~= nil and Global.call("get_models_enabled") then
      -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.)
      pokemonData.base = {offset = pokemonData.offset}

      Wait.condition(
        function() -- Conditional function.
          -- Move the model.
          pokemonModel.setPosition(Global.call("model_position", pokemonData))
          pokemonModel.setRotation({pokemon.getRotation().x, pokemon.getRotation().y, pokemon.getRotation().z})
          pokemonModel.setLock(true)
        end,
        function() -- Condition function
          return pokemon ~= nil and pokemon.resting
        end,
        2,
        function() -- Timeout function.
          -- Move the model. But the token is still moving, darn.
          pokemonModel.setPosition(Global.call("model_position", pokemonData))
          pokemonModel.setRotation({pokemon.getRotation().x, pokemon.getRotation().y, pokemon.getRotation().z})
          pokemonModel.setLock(true)
        end
      )
    end

    -- Level Die
    if pokemonData.levelDiceGUID ~= nil then
      local dice = getObjectFromGUID(pokemonData.levelDiceGUID)
      position = {params.pokemonXPos[params.index] - levelDiceXOffset, 1, params.pokemonZPos - levelDiceZOffset}
      dice.setPosition(rack.positionToWorld(position))
      dice.setRotation({dice.getRotation().x + params.xRotRecall, dice.getRotation().y + params.yRotRecall, dice.getRotation().z + params.zRotRecall})
      dice.setLock(false)
    end

    -- Detect status cards and tokens. Gym Leaders can delete them.
    local status_table = detectStatusCardAndTokens(isAttacker)
    if status_table.persist ~= nil then
      if status_table.status_guid then
        local status_card = getObjectFromGUID(status_table.status_guid)
        if status_card then
          if not status_table.persist then
            destroyObject(status_card)
          else
            position = {params.pokemonXPos[params.index], 0.5, params.statusZPos}
            status_card.setPosition(rack.positionToWorld(position))
            status_card.setRotation({status_card.getRotation().x + params.xRotRecall, status_card.getRotation().y + params.yRotRecall, status_card.getRotation().z + params.zRotRecall})
          end
        end
      end
      if status_table.tokens_guid then
        local tokens = getObjectFromGUID(status_table.tokens_guid)
        if tokens then
          if not status_table.persist then
            destroyObject(tokens)
          else
            position = {params.pokemonXPos[params.index] + 0.206, 0.5, params.pokemonZPos - 0.137}
            tokens.setPosition(rack.positionToWorld(position))
            tokens.setRotation({tokens.getRotation().x + params.xRotRecall, tokens.getRotation().y + params.yRotRecall, tokens.getRotation().z + params.zRotRecall})
          end
        end
      end
    end

    local castParams = {}
    castParams.direction = {0,-1,0}
    castParams.type = 1
    castParams.max_distance = 1
    castParams.debug = debug

    -- Item
    castParams.origin = {arenaPos.item[1], 1, arenaPos.item[2]}
    local itemHits = Physics.cast(castParams)
    if #itemHits ~= 0 then
        local hit = itemHits[1].hit_object
        if hit.name ~= "Table_Custom" and hit.hasTag("Item") then
          local item = getObjectFromGUID(hit.guid)
          position = {params.pokemonXPos[params.index], 0.5, params.itemZPos}
          item.setPosition(rack.positionToWorld(position))
          item.setRotation({item.getRotation().x + params.xRotRecall, item.getRotation().y + params.yRotRecall, item.getRotation().z + params.zRotRecall})
          item.setLock(false)
        end
    end

    local buttonParams = {
        index = params.index,
        yLoc = params.yLoc,
        zLoc = params.zLoc,
        pokemonXPos = params.pokemonXPos,
        pokemonZPos = params.pokemonZPos,
        xPos = -1.6 + ( 0.59 * (params.index - 1)),
        originGUID = params.originGUID
    }

    local recallIndex = 4 + (params.index * 8) - 3
    rack.editButton({index=recallIndex, position={-1.47 + ((buttonParams.index - 1) * 0.59), 1000, buttonParams.zLoc}, rotation={0,0,0}, click_function="nothing", tooltip="" })

    -- Check if we need to recall a health indicator.
    if Global.call("getHpRule2Set") then
      -- Make sure the pokemon has a health indicator.
      local data = isAttacker and attackerData or defenderData
      if data.health_indicator_guid then
        -- Get the position of this health indicator.
        local locations = rack.call("getHealthIndicatorsLocations")
        if #locations > 0 then
          -- Get a handle on the indicator.
          local health_indicator = getObjectFromGUID(data.health_indicator_guid)
          -- Move the indicator to the desired position.
          health_indicator.setLock(false)
          health_indicator.setPosition(locations[params.index].position)
          health_indicator.setRotation(locations[params.index].rotation)

          -- Once the indicator is resting, lock it.
          Wait.time(
            function()
              health_indicator.setLock(true)
            end,
            2
          )
        end
      end
    end

    clearPokemonData(isAttacker)

    if isAttacker then
      showAttackerTeraButton(false)
    else
      showDefenderTeraButton(false)
    end
    
    -- Update the auto roller buttons.
    showAutoRollButtons(false)
    moveStatusButtons(false)

    -- Clear move texts.
    clearMoveText(ATTACKER)
    clearMoveText(DEFENDER)

    rack.call("rackRefreshPokemon")
end

-- Helper function that detects status cards and tokens. Returning the GUIDs of each, if they exist 
-- and whether they are a status that gets kept on recall (for tokens).
function detectStatusCardAndTokens(isAttacker)
  -- Init return table.
  local status_table = { persist = nil, status_guid = nil, tokens_guid = nil }
  
  -- Init params.
  local castParams = {}
  castParams.direction = {0,-1,0}
  castParams.type = 1
  castParams.max_distance = 1
  castParams.debug = debug

  -- Status
  local arenaPos = isAttacker and attackerPos or defenderPos
  castParams.origin = {arenaPos.status[1], 1, arenaPos.status[2]}
  local statusHits = Physics.cast(castParams)
  if #statusHits ~= 0 then
    local hit = statusHits[1].hit_object
    if hit.name ~= "Table_Custom" and hit.hasTag("Status") then
      local status = getObjectFromGUID(hit.guid)
      if status then
        -- Update the status card GUID.
        status_table.status_guid = status.guid

        -- Determine if this is a persistent status.
        local status = getObjectFromGUID(hit.guid)
        if status.getName() == status_ids.curse or status.getName() == status_ids.confuse then
          status_table.persist = false
        else
          status_table.persist = true
        end
      end
    end
  end

  -- Status Tokens
  castParams.origin = {arenaPos.statusCounters[1], 2, arenaPos.statusCounters[2]}
  local tokenHits = Physics.cast(castParams)
  if #tokenHits ~= 0 then
    local counters = tokenHits[1].hit_object
    if counters.hasTag("Status Counter") then
      status_table.tokens_guid = tokenHits[1].hit_object.guid
    end
  end
  
  return status_table
end

-- Helper function to detect and delete status cards and tokens.
function removeStatusAndTokens(isAttacker)
  -- Detect status cards and tokens.
  local status_table = detectStatusCardAndTokens(isAttacker)
  if status_table.status_guid then
    local status_card = getObjectFromGUID(status_table.status_guid)
    if status_card then
      destroyObject(status_card)
    end
  end
  if status_table.tokens_guid then
    local tokens = getObjectFromGUID(status_table.tokens_guid)
    if tokens then
      destroyObject(tokens)
    end
  end
end

-- Clears pokemon data isAttacker selects attacker/defender.
function clearPokemonData(isAttacker)
  if isAttacker then
      showAtkButtons(false)
      attackerPokemon = nil
      attackerData = copyTable(DEFAULT_ARENA_DATA)
  else
      showDefButtons(false)
      defenderPokemon = nil
      defenderData = copyTable(DEFAULT_ARENA_DATA)
  end

  -- The existing battle is over.
  setRound(0)

  -- Despawn any dice for this side.
  despawnAutoRollDice(isAttacker)

  if attackerPokemon == nil and defenderPokemon == nil then
    endBattle()
  end

  hideArenaEffectiness(not isAttacker)

  -- Clear the attack counter even without scripting.
  clearAttackCounter(isAttacker)
end

-- Ends battle.
function endBattle()
  printToAll("Battle Ended", "Red")

  showAttackerTeraButton(false)
  showDefenderTeraButton(false)

  clearExistingFieldEffects()

  clearTrainerData(ATTACKER)
  clearTrainerData(DEFENDER)

  setRound(0)

  if inBattle then
    Global.call("PlayRouteMusic")
    inBattle = false
  end
    
  -- Despawn any existing spawned dice.
  despawnAutoRollDice()
end

-- Sets round.
function setRound(round)
  currRound = round
  local roundTextfield = getObjectFromGUID(roundText)
  if currRound == 0 then
    if roundTextfield then roundTextfield.TextTool.setValue(" ") end
  else
    if roundTextfield then roundTextfield.TextTool.setValue("Round " .. tostring(currRound)) end
    printToAll("Battle Round: " .. tostring(currRound), "Red")
  end
end

-- Clears dice isAttacker selects attacker/defender.
function clearDice(isAttacker)
  local diceTable = isAttacker and attackerData.dice or defenderData.dice

  for i=#diceTable, 1, -1 do
    local dice = getObjectFromGUID(diceTable[i])
    dice.destruct()
    table.remove(diceTable, i)
  end
end

-- Updates moves isAttacker selects attacker/defender.
function updateMoves(isAttacker, data, cardMoveData)
  hideArenaMoveButtons(isAttacker)
  showMoveButtons(isAttacker, cardMoveData)
  updateTypeEffectiveness()
end

-- Updates type effectiveness.
function updateTypeEffectiveness()
  if attackerPokemon == nil or defenderPokemon == nil then
    return
  end

  -- Determine if any teratypes are active. Stellar is special since it does not change own type.
  local attackerTera = nil
  local attackerStellar = false
  if attackerPokemon.teraActive == true then 
    if attackerPokemon.teraType ~= "Stellar" then
      attackerTera = attackerPokemon.teraType
      attackerPokemon.stellar = false
    else
      attackerStellar = true
      attackerPokemon.stellar = true
    end
  end
  local defenderTera = nil
  local defenderStellar = false
  if defenderPokemon.teraActive == true then 
    if defenderPokemon.teraType ~= "Stellar" then
      defenderTera = defenderPokemon.teraType
      defenderPokemon.stellar = false
    else
      defenderStellar = true
      defenderPokemon.stellar = true
    end
  end

  -- Attacker
  calculateEffectiveness(ATTACKER, attackerPokemon.movesData, attackerStellar, defenderPokemon.types, defenderTera)

  -- Defender
  calculateEffectiveness(DEFENDER, defenderPokemon.movesData, defenderStellar, attackerPokemon.types, attackerTera)
end

-- Calculates effectiveness isAttacker selects attacker/defender.
function calculateEffectiveness(isAttacker, moves, is_stellar, opponent_types, opponent_tera_type)
  local opponentData = nil
  if isAttacker then
    moveText = atkMoveText
    textZPos = -8.65
    canUseMoves = attackerData.canSelectMove
    opponentData = defenderPokemon
  else
    moveText = defMoveText
    textZPos = 8.43
    canUseMoves = defenderData.canSelectMove
    opponentData = attackerPokemon
  end
  local numMoves = #moves
  local buttonWidths = (numMoves*3.15) + ((numMoves-1) + 0.45)

  -- Shedinja check -- Wonder Guard. We will skip this if not playing with dualtype AND immunities.
  local opponent_is_shedinja_immune = (opponentData.name == "Shedinja") and Global.call("getImmunitiesEnabled") and Global.call("getDualTypeEffectiveness")
  if opponent_is_shedinja_immune then
    printToAll("Shedinja's mysterious power only lets effective moves hit it.")
  end

  for i=1, 4 do
    local moveText = getObjectFromGUID(moveText[i])
    moveText.TextTool.setValue(" ")

    if moves[i] ~= nil then
      local moveData = copyTable(moves[i])

      local xPos = -33.98 - (buttonWidths * 0.5)
      moveText.setPosition({xPos + (3.75*(i-1)), 1, textZPos})
      moveData.status = moves[i].status or DEFAULT

      -- If this move is Judgement we need to change the type if there is a Type Enhancer.
      if moveData.name == "Judgement" then
        local pokemon_data = isAttacker and attackerPokemon or defenderPokemon
        local enhancer_type = pokemon_data.type_enhancer
        if enhancer_type ~= nil then
          moveData.type = tostring(enhancer_type)
        end
      end

      if moveData.status == DISABLED then
        moveText.TextTool.setValue("Disabled")
        moveData.status = DISABLED
      elseif canUseMoves == false then
        moveText.TextTool.setValue("Disabled")
        moveData.status = DISABLED
      else
        -- If move had NEUTRAL effect, don't calculate effectiveness at all.
        local is_neutral = false
        if moveData.effects ~= nil then
          for k=1, #moveData.effects do
            if moveData.effects[k].name == status_ids.neutral then
              is_neutral = true
              moveText.TextTool.setValue("Neutral")
              break
            end
          end
        end

        if not is_neutral then
          -- If a Pokemon is Stellar TeraTyped, they don't get effectiveness.
          local calculateEffectiveness = true
          if is_stellar then
            calculateEffectiveness = false
            moveText.TextTool.setValue("Neutral")
          end

          if calculateEffectiveness then
            local effectiveness_score = getEffectivenessScore(moveData, opponent_tera_type, opponent_types)

            -- When teratyping into the secondary type, it can cause Super-Effective/Weak. We don't want that.
            if Global.call("getDualTypeEffectiveness") and opponent_types[1] == opponent_types[2] then
              if effectiveness_score == 4 then
                effectiveness_score = 2
              elseif effectiveness_score == -4 then
                effectiveness_score = -2
              end
            end

            -- If this move is Flying Press, check which label to use.
            if moveData.name == "Flying Press" then
              -- Determine the effectiveness when Flying type.
              local tempMoveDataFlying = copyTable(moveData)
              tempMoveDataFlying.type = "Flying"
              local tempEffectivenessScore = getEffectivenessScore(tempMoveDataFlying, opponent_tera_type, opponent_types)

              -- Determine which effectiveness to keep.
              if tempEffectivenessScore > effectiveness_score then
                effectiveness_score = tempEffectivenessScore
              end
            end

            -- Use the effectiveness score.
            if not opponent_is_shedinja_immune then
              if effectiveness_score == 4 then 
                moveText.TextTool.setValue("Super-Effective")
                moveData.status = SUPER_EFFECTIVE
              elseif effectiveness_score == 2 then 
                moveText.TextTool.setValue("Effective")
                moveData.status = EFFECTIVE
              elseif effectiveness_score == -2 then 
                moveText.TextTool.setValue("Weak")
                moveData.status = WEAK
              elseif effectiveness_score == -4 then 
                moveText.TextTool.setValue("Super-Weak")
                moveData.status = SUPER_WEAK
              elseif effectiveness_score == IMMUNE then
                moveText.TextTool.setValue("Immune")
                moveData.status = IMMUNE
              end
            else
              -- Shedinja immunities to deal with.
              if effectiveness_score == 4 then 
                moveText.TextTool.setValue("Super-Effective")
                moveData.status = SUPER_EFFECTIVE
              elseif effectiveness_score == 2 then 
                moveText.TextTool.setValue("Effective")
                moveData.status = EFFECTIVE
              else
                moveText.TextTool.setValue("Immune")
                moveData.status = IMMUNE
              end
            end
          end
        end
      end
    end
  end
end

local function moveHasEffect(moveData, effectName)
  if not moveData.effects then return false end
  for i=1, #moveData.effects do
    if moveData.effects[i].name == effectName then
      return true
    end
  end
  return false
end

local function getSaltCureEffectivenessBonus(moveData, opponent_types, type_length)
  if not moveHasEffect(moveData, status_ids.saltCure) then return 0 end
  local bonus = 0
  for type_index = 1, type_length do
    local opp_type = opponent_types[type_index]
    if opp_type == "Steel" or opp_type == "Water" then
      bonus = bonus + 2
    end
  end
  return bonus
end

-- Helper function used to get the effectiveness score of a move.
function getEffectivenessScore(moveData, opponent_tera_type, opponent_types)

  -- Detrermine if we are doing dual type effectiveness.
  local type_length = 1
  if Global.call("getDualTypeEffectiveness") and (not opponent_tera_type) then
    type_length = 2
  end

  -- If the opponent is Teresteralized, only consider that type.
  if opponent_tera_type then
    opponent_types = { opponent_tera_type }
  end

  -- Intitialize the effectiveness score.
  local effectiveness_score = 0

  -- Get the immunities table.
  local immunityData = Global.call("GetImmunityDataByName", moveData.type)

  -- Get the type data and calculate effectiveness.
  local typeData = Global.call("GetTypeDataByName", moveData.type)
  for j=1, #typeData.effective do
    for type_index = 1, type_length do
      if Global.call("getImmunitiesEnabled") then
        for k=1, #immunityData.immune do
          if immunityData.immune[k] == opponent_types[type_index] then
            return IMMUNE
          end
        end
      end
      if typeData.effective[j] == opponent_types[type_index] then
        effectiveness_score = effectiveness_score + 2
      end
    end
  end

  for j=1, #typeData.weak do
    for type_index = 1, type_length do
      if typeData.weak[j] == opponent_types[type_index] then
        effectiveness_score = effectiveness_score - 2
      end
    end
  end

  -- Salt Cure is additionally effective against Steel and Water types.
  effectiveness_score = effectiveness_score + getSaltCureEffectivenessBonus(moveData, opponent_types, type_length)

  return effectiveness_score
end

-- Handles copy table.
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

-- Handles adjust attack value counter isAttacker selects attacker/defender.
function adjustAttackValueCounter(isAttacker, adjustment)
  if not adjustment then return end
  local counterGUID = nil
  if isAttacker then
    counterGUID = atkCounter
  else
    counterGUID = defCounter
  end

  local counter = getObjectFromGUID(counterGUID)
  local value = counter.Counter.getValue()
  counter.Counter.setValue(value + adjustment)
end

-- Updates attack value counter isAttacker selects attacker/defender.
function updateAttackValueCounter(isAttacker)
  -- Init some values.
  local atkVal = nil
  local counterGUID = nil
  local pokemonTypes = {}
  local moveType = nil
  local teraActive = nil
  local teraType = nil
  local selfFieldEffect = nil
  local opponentFieldEffect = nil

  -- Switch based on which counter is being updated.
  if isAttacker then
    if not attackerPokemon then return end

    -- Get counter GUID and attack value table.
    counterGUID = atkCounter
    atkVal = attackerData.attackValue

    -- Get the move type.
    local data = attackerData
    local move = data.selectedMoveData or attackerPokemon.movesData[data.selectedMoveIndex]
    moveType = move and move.type
    -- Get the Pokemon type.
    pokemonTypes = attackerPokemon.types
    -- Get the Tera data.
    teraActive = attackerPokemon.teraActive
    teraType = attackerPokemon.teraType
    -- Get the Field Effects.
    selfFieldEffect = atkFieldEffect.name
    opponentFieldEffect = defFieldEffect.name
  else
    if not defenderPokemon then return end

    -- Get counter GUID and attack value table.
    counterGUID = defCounter
    atkVal = defenderData.attackValue
    
    -- Get the move type.
    local data = defenderData
    local move = data.selectedMoveData or defenderPokemon.movesData[data.selectedMoveIndex]
    moveType = move and move.type
    -- Get the Pokemon type.
    pokemonTypes = defenderPokemon.types
    -- Get the Tera data.
    teraActive = defenderPokemon.teraActive
    teraType = defenderPokemon.teraType
    -- Get the Field Effects.
    selfFieldEffect = defFieldEffect.name
    opponentFieldEffect = atkFieldEffect.name
  end

  -- If the Tera is active, that's all we consider for types here.
  if teraActive and teraType and teraType ~= "Stellar" then
    -- Override to the active Tera type for these effects calculations.
    pokemonTypes = { teraType }
  elseif teraActive and teraType == "Stellar" then
    -- Stellar keeps original typing.
  end

  -- Helper function used to get attack strength bonus from Field Effects.
  local function calculate_field_effect_bonus(fieldEffect, moveType, pokemonTypes, isSameSide)
    if not fieldEffect or not moveType or not pokemonTypes then return 0 end
    if fieldEffect == field_effect_ids.rain then
      if moveType == "Water" then
        return 1
      elseif moveType == "Fire" then
        return -1
      end
    elseif fieldEffect == field_effect_ids.harshsunlight then
      if moveType == "Fire" then
        return 1
      elseif moveType == "Water" then
        return -1
      end
    elseif fieldEffect == field_effect_ids.electricterrain and moveType == "Electric" then
      return 1
    elseif fieldEffect == field_effect_ids.grassyterrain and moveType == "Grass" then
      return 1
    elseif fieldEffect == field_effect_ids.psychicterrain and moveType == "Psychic" then
      return 1
    elseif fieldEffect == field_effect_ids.mistyterrain then
      if moveType == "Fairy" then
        return 1
      elseif moveType == "Dragon" then
        return -1
      end
    elseif fieldEffect == field_effect_ids.hail then
      for _, type in ipairs(pokemonTypes) do
        if type == "Ice" then
          return 0
        end
      end
      return -1
    elseif isSameSide and fieldEffect == field_effect_ids.stealthrock then
      local tempBadBonus = 0
      for _, type in ipairs(pokemonTypes) do
        if type == "Steel" or type == "Ground" or type == "Fighting" or type == "Rock" then
          return 0
        elseif type == "Flying" or type == "Bug" or type == "Fire" or type == "Ice" then
          tempBadBonus = tempBadBonus + 3
        else
          tempBadBonus = tempBadBonus + 1
        end
      end
      -- If Stealth Rock had an effect, take it into account.
      if tempBadBonus == 1 or tempBadBonus == 2 then
        return -1
      elseif tempBadBonus >= 3 then
        return -2
      end
    elseif fieldEffect == field_effect_ids.sandstorm then
      for _, type in ipairs(pokemonTypes) do
        if type == "Ground" or type == "Rock" or type == "Steel" then
          return 0
        end
      end
      return -1
    elseif fieldEffectName == field_effect_ids.toxicspikes then
      -- Ignored.
    elseif fieldEffectName == field_effect_ids.spikes then
      -- Ignored. I don't know if this is the Battle Round they entered battle.
    end
    return 0
  end
  
  -- Calculate the field effect bonuses.
  local fieldBonus = calculate_field_effect_bonus(selfFieldEffect, moveType, pokemonTypes, true)
  fieldBonus = fieldBonus + calculate_field_effect_bonus(opponentFieldEffect, moveType, pokemonTypes, false)

  -- Check if there is an overall Field Effect bonus.
  local totalAttack = atkVal.level + atkVal.movePower + atkVal.effect + atkVal.effectiveness + atkVal.attackRoll + atkVal.item + atkVal.booster
  -- atkVal.status is currently only from Burn. If the movePower is 0, this move does not get -1.
  if atkVal.movePower > 0 and atkVal.status < 0 then
    totalAttack = totalAttack + atkVal.status
  end
  totalAttack = totalAttack + fieldBonus

  local counter = getObjectFromGUID(counterGUID)
  counter.Counter.setValue(totalAttack)
end

-- Returns attack value counter value isAttacker selects attacker/defender.
function getAttackValueCounterValue(isAttacker)
  local counterGUID = nil
  if isAttacker then
    counterGUID = atkCounter
  else
    counterGUID = defCounter
  end

  local counter = getObjectFromGUID(counterGUID)
  return counter.Counter.getValue()
end

-- Clears attack counter isAttacker selects attacker/defender.
function clearAttackCounter(isAttacker)
  local counterGUID = isAttacker and atkCounter or defCounter
  local counter = getObjectFromGUID(counterGUID)
  counter.Counter.setValue(0)
end

-- Sets level params supplies inputs.
function setLevel(params)
  local slotData = params.slotData
  if params.modifier == 0 then
      return slotData
  end

  local levelIncreaseSet = Global.call("getLevelIncreaseSet")
  local maxLevel = levelIncreaseSet and 20 or 6

  -- Get current Level from the dice
  local diceLevel = 0
  local newDiceLevel = 0
  local levelDice
  if slotData.levelDiceGUID ~= nil then
      levelDice = getObjectFromGUID(slotData.levelDiceGUID)
      if levelDice ~= nil then
        diceLevel = levelDice.getValue()
      end
  end

  newDiceLevel = diceLevel + params.modifier

  if newDiceLevel < 0 then
    return slotData
  elseif diceLevel >= maxLevel and params.modifier > 0 then
    print("Pokémon at maximum level")
    return slotData
  end

  -- Update Level Dice
  -- We have already got the dice info when calculating the current level
  slotData.levelDiceGUID = updateLevelDice(diceLevel, newDiceLevel, params, levelDice)
  slotData.diceLevel = newDiceLevel

  -- Update Evolve Buttons
  if multiEvolving then
    hideEvoButtons(params)
  else
    updateEvolveButtons(params, slotData, newDiceLevel)
  end

  local level = slotData.baseLevel + slotData.diceLevel
  if params.modifier > 0 then
      if Player[params.playerColour].steam_name ~= nil then
          printToAll(Player[params.playerColour].steam_name .. "'s " .. slotData.name .. " grew to level " .. level .. "!", stringColorToRGB(params.playerColour))
      else
          printToAll("This Player's " .. slotData.name .. " grew to level " .. level .. "!", stringColorToRGB(params.playerColour))
      end
  end

  if params.inArena then
    if params.isAttacker then
      slotData.itemGUID = attackerPokemon.itemGUID
      attackerPokemon.levelDiceGUID = slotData.levelDiceGUID
      attackerPokemon.diceLevel = slotData.diceLevel
      attackerData.attackValue.level = level
      attackerData.attackValue.movePower = 0
      attackerData.attackValue.effectiveness = 0
      attackerData.attackValue.attackRoll = 0
      attackerData.attackValue.item = 0
    else
      slotData.itemGUID = defenderPokemon.itemGUID
      defenderPokemon.levelDiceGUID = slotData.levelDiceGUID
      defenderPokemon.diceLevel = slotData.diceLevel
      defenderData.attackValue.level = level
      defenderData.attackValue.movePower = 0
      defenderData.attackValue.effectiveness = 0
      defenderData.attackValue.attackRoll = 0
      defenderData.attackValue.item = 0
    end
    updateAttackValueCounter(params.isAttacker)
  end

  return slotData
end

-- Updates evolve buttons params supplies inputs.
function updateEvolveButtons(params, slotData, level)
  -- Check if we have even started the game yet. <.<
  local starterPokeball = getObjectFromGUID("ec1e4b")
  if starterPokeball ~= nil then
    return false
  end

  local buttonParams = {
    inArena = params.inArena,
    isAttacker = params.isAttacker,
    index = params.index,
    yLoc = params.yLoc,
    pokemonXPos = params.pokemonXPos,
    pokemonZPos = params.pokemonZPos,
    rackGUID = params.rackGUID
  }

  local evoData = slotData.evoData

  local evoList = {}
  if evoData ~= nil then
    for i=1, #evoData do
      local evolution = evoData[i]
      if type(evolution.cost) == "string" then
        for _, evoGuid in ipairs(evolution.guids) do
          local evoData = Global.call("GetAnyPokemonDataByGUID",{guid=evoGuid})
          if evoData == nil then
            break
          end

          -- Insert evo option into the table.
          table.insert(evoList, evolution)

          -- Print the correct evolution instructions.
          if evolution.cost == "Mega" then
            printToAll("Mega Bracelet required and Mega Stone must be attached to evolve into " .. evoData.name)
          elseif evolution.cost == "GMax" then
            printToAll("Dynamax Band required to evolve into " .. evoData.name)
          else
            printToAll(evolution.cost .. " required to be played or attached to evolve into " .. evoData.name)
          end
          break
        end
      elseif evolution.cost <= level then
        table.insert(evoList, evolution)
      end
    end
  end
  local numEvos = #evoList
  if numEvos > 0 then
    buttonParams.numEvos = numEvos
    if numEvos == 2 then
      for i=1, #evoList do
        local evoPokemon = Global.call("GetPokemonDataByGUID", {guid=evoList[i].guids[1]})
        if i == 1 then
          buttonParams.evoName = evoPokemon.name
        else
          buttonParams.evoNameTwo = evoPokemon.name
        end
      end
    else
      local evoPokemon = Global.call("GetPokemonDataByGUID", {guid=evoList[1].guids[1]})
      buttonParams.pokemonName = slotData.name
      buttonParams.evoName = evoPokemon.name
    end
    hideEvoButtons(buttonParams)
    updateEvoButtons(buttonParams)
  else
    hideEvoButtons(buttonParams)
  end
end

-- Evolves poke params supplies inputs.
function evolvePoke(params)
    -- Check if we have even started the game yet. <.<
    local starterPokeball = getObjectFromGUID("ec1e4b")
    if starterPokeball ~= nil then
      printToAll("You need to start the game before evolving Pokémon")
      return false
    end

    -- Init some params.
    local pokemonData = params.slotData
    local rack = getObjectFromGUID(params.rackGUID)
    local evolvedPokemon
    local evolvedPokemonGUID
    local evolvedPokemonData
    local diceLevel = pokemonData.diceLevel

    -- Check if the Pokemon has a Model GUID that was shiny. This call is used to get a handle on the model.
    -- or false to prevent nil. NOTE: Get this state before putting the token into the Pokeball below. :)
    local shiny_state = Global.call("get_token_shiny_status", pokemonData.pokemonGUID) or false

    -- Put away the old token.
    local evolvingPokemon = getObjectFromGUID(pokemonData.pokemonGUID)
    local evolvedPokeball = getObjectFromGUID(evolvedPokeballGUID)
    evolvedPokeball.putObject(evolvingPokemon)

    local evoList = {}
    for i=1, #pokemonData.evoData do
      local evolution = pokemonData.evoData[i]
      if type(evolution.cost) == "string" then
        for _, evoGuid in ipairs(evolution.guids) do
          table.insert(evoList, evolution)
          break
        end
      elseif evolution.cost <= diceLevel then
        table.insert(evoList, evolution)
      end
    end

    if #evoList > 2 then -- More than 2 evos available so we need to spread them out
      -- Use this to keep track of the evos already retrieved, by name.
      local evosRetreivedTable = {}

      local numEvos = #evoList
      local evoNum = 0
      local tokensWidth = ((numEvos * 2.8) + ((numEvos-1) * 0.2) )
      for i=1, #evoList do
        local evoGUIDS = evoList[i].guids
        local pokeball = getObjectFromGUID(evolvePokeballGUID[evoList[i].ball])
        local pokemonInPokeball = pokeball.getObjects()
        for j=1, #pokemonInPokeball do
          local pokeObj = pokemonInPokeball[j]
          for k=1, #evoGUIDS do
            if pokeObj.guid == evoGUIDS[k] then
              local evoPokeData = Global.call("GetPokemonDataByGUID",{guid=pokeObj.guid})

              -- Check if we even need to retrieve this pokemon.
              local continueCheck = true
              for collectedEvoIndex=1, #evosRetreivedTable do
                if evosRetreivedTable[collectedEvoIndex] == evoPokeData.name then
                  continueCheck = false
                  break
                end
              end
              if continueCheck then
                local xPos = 1.4 + (evoNum * 3) - (tokensWidth * 0.5)
                evolvedPokemon = pokeball.takeObject({guid=pokeObj.guid, position={xPos, 1, -28}})
                if evolvedPokemon.guid ~= nil then
                  evoNum = evoNum + 1
                  -- Insert this pokemon into the table of retrieved pokemon.
                  table.insert(evosRetreivedTable, evoPokeData.name)

                  -- Check if the Pokemon has a Model GUID that was shiny. This call is used to get a handle on the model.
                  if Global.call("get_models_enabled") then
                    Global.call("force_shiny_spawn", {guid=pokeObj.guid, state=shiny_state})
                  end
                  break
                end
              end
            end
          end
        end
        if evoList[i].cycle ~= nil and evoList[i].cycle and evoNum < numEvos then
          local extraPokeball = getObjectFromGUID(evolvedPokeballGUID)
          local pokemonInPokeball = extraPokeball.getObjects()
          for j=1, #pokemonInPokeball do
            local pokeObj = pokemonInPokeball[j]
            for k=1, #evoGUIDS do
              if pokeObj.guid == evoGUIDS[k] then
                local evoPokeData = Global.call("GetPokemonDataByGUID",{guid=pokeObj.guid})
                
                -- Check if we even need to retrieve this pokemon.
                local continueCheck = true
                for collectedEvoIndex=1, #evosRetreivedTable do
                  if evosRetreivedTable[collectedEvoIndex] == evoPokeData.name then
                    continueCheck = false
                    break
                  end
                end
                if continueCheck then
                  local xPos = 1.4 + (evoNum * 3) - (tokensWidth * 0.5)
                  local position = {xPos, 1, -28}
                  evolvedPokemon = extraPokeball.takeObject({guid=pokeObj.guid, position=position})
                  if evolvedPokemon.guid ~= nil then
                    evoNum = evoNum + 1
                    --table.insert(multiEvoData, evoData)

                    -- Insert this pokemon into the table of retrieved pokemon.
                    table.insert(evosRetreivedTable, evoPokeData.name)

                    -- Check if the Pokemon has a Model GUID that was shiny. This call is used to get a handle on the model.
                    if Global.call("get_models_enabled") then
                      Global.call("force_shiny_spawn", {guid=pokeObj.guid, state=shiny_state})
                      if shiny_state then
                        evolvedPokemon.setColorTint({255/255, 215/255, 0/255})
                      end
                    end
                    break
                  end
                end
              end
            end
          end
        end
      end

      multiEvolving = true
      multiEvoData.params = params
      multiEvoData.pokemonData = evoList
      showMultiEvoButtons(multiEvoData.pokemonData)

      return nil

    else

      local evoData = evoList[params.oneOrTwo]
      local evoGUIDS = evoData.guids

      -- If the cycle field is present, that indicates that the pokemon may not be in the standard evo pokeball.
      -- The is relevant in scenarios where:
      --    pokemon evolve cyclically (Morpeko & GMax/Mega)
      if evoData.cycle ~= nil and evoData.cycle then
        local overriddenPokeball = getObjectFromGUID(evolvedPokeballGUID)
        local pokemonInSpecialPokeball = overriddenPokeball.getObjects()

        for i=1, #pokemonInSpecialPokeball do
          pokeObj = pokemonInSpecialPokeball[i]
          local pokeGUID = pokeObj.guid
          for j=1, #evoGUIDS do
            if pokeGUID == evoGUIDS[j] then
              evolvedPokemonData = Global.call("GetPokemonDataByGUID",{guid=pokeGUID})
              evolvedPokemon = overriddenPokeball.takeObject({guid=pokeGUID})
              evolvedPokemonGUID = pokeGUID
              break
            end
          end

          if evolvedPokemon ~= nil then
            break
          end
        end
      end

      if evolvedPokemon == nil then
        local pokeball = getObjectFromGUID(evolvePokeballGUID[evoData.ball])
        local pokemonInPokeball = pokeball.getObjects()
        for i=1, #pokemonInPokeball do
            pokeObj = pokemonInPokeball[i]
            local pokeGUID = pokeObj.guid
            for j=1, #evoGUIDS do
              if pokeGUID == evoGUIDS[j] then
                evolvedPokemonData = Global.call("GetPokemonDataByGUID",{guid=pokeGUID})
                evolvedPokemon = pokeball.takeObject({guid=pokeGUID})
                evolvedPokemonGUID = pokeGUID
                break
              end
            end

            if evolvedPokemon ~= nil then
              break
            end
        end
      end

      -- Check if the Pokemon has a Model GUID that was shiny. This call is used to get a handle on the model.
      if Global.call("get_models_enabled") then
        Global.call("force_shiny_spawn", {guid=evolvedPokemonGUID, state=shiny_state})
      end
      
      -- Update the pokemon data.
      setNewPokemon(pokemonData, evolvedPokemonData, evolvedPokemonGUID)

      if params.inArena then
        -- Pokemon is in the arena.

        -- Clear the appropriate move selected text.
        clearMoveText(params.isAttacker)

        -- Save off the arena data for potential attach card information.
        local arenaPokemon = params.isAttacker and attackerPokemon or defenderPokemon

        -- Get the position and set the evo pokemon.
        local tokenPosition = params.isAttacker and attackerPos or defenderPos
        local data = params.isAttacker and attackerPokemon or defenderPokemon
        setNewPokemon(data, evolvedPokemonData, evolvedPokemonGUID, true)
        local position = {tokenPosition.pokemon[1], 2, tokenPosition.pokemon[2]}
        evolvedPokemon.setPosition(position)

        -- Update the arena data level for this Pokemon - in case it is a Mega which is given a +1 level.
        local arenaData = params.isAttacker and attackerData or defenderData
        arenaData.baseLevel = evolvedPokemonData.level
        arenaData.attackValue = copyTable(DEFAULT_ARENA_DATA.attackValue)
        arenaData.attackValue.level = evolvedPokemonData.level + data.diceLevel

        -- Update the arena calculator.
        updateAttackValueCounter(params.isAttacker)

        -- Check if there is an attach card present.
        local cardMoveData = nil
        if arenaPokemon.itemCardGUID ~= nil then
          -- Get a reference to the item card.
          local item_card = getObjectFromGUID(arenaPokemon.itemCardGUID)

          -- Check if the attached card is a TM card.
          if item_card.hasTag("TM") then
            local cardObject = getObjectFromGUID(arenaPokemon.itemCardGUID)
            if cardObject then
              cardMoveData = copyTable(Global.call("GetMoveDataByName", cardObject.getName()))
            end
          -- Check if the attached card is a Z-Crystal card.
          elseif item_card.hasTag("ZCrystal") then
            local moveData = Global.call("GetZCrystalDataByGUID", {zCrystalGuid=arenaPokemon.itemCardGUID, pokemonGuid=nil})
            if moveData ~= nil then
              cardMoveData = copyTable(Global.call("GetMoveDataByName", moveData.move))
              cardMoveData.name = moveData.displayName
            end
          elseif item_card.hasTag("TeraType") then
            local teraData = Global.call("GetTeraDataByGUID", arenaPokemon.itemCardGUID)
            if teraData ~= nil then
              if params.isAttacker then
                arenaPokemon.teraType = teraData.type
                showAttackerTeraButton(false)
                showAttackerTeraButton(true, createAttackerTeraLabel())
              else
                arenaPokemon.teraType = teraData.type
                showDefenderTeraButton(false)
                showDefenderTeraButton(true, createDefenderTeraLabel())
              end
            end
          elseif item_card then
            local card_name = item_card.getName()
            if (card_name == "Vitamin" or card_name == "Shiny Charm") then
              arenaPokemon.vitamin = true
            elseif card_name == "Alpha Pokémon" then
              arenaPokemon.alpha = true
            elseif card_name then
              local booster_type = parseTypeEnhancerType(card_name)
              if booster_type then
                arenaPokemon.type_enhancer = booster_type
              end
            end
          end
        end

        updateMoves(params.isAttacker, pokemonData, cardMoveData)

        -- Check if we are expecting a model.
        if pokemonData.model_GUID ~= nil then
          -- Get the spawn delay.
          local spawn_delay = Global.call("get_spawn_delay")

          -- This function will just give the model spawn delay + 1 seconds to spawn in.
          Wait.condition(
            function()
              -- TODO: We never enter this logic for some reason. Attacker evolve Poke spawn in with backwards models as a result.
              -- Handle the model, if present.
              local pokemonModel = getObjectFromGUID(pokemonData.model_GUID)
              if pokemonModel ~= nil then
                local modelYRotSend = 0
                if params.isAttacker then
                  modelYRotSend = 180.0
                end
                -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.)
                evolvedPokemonData.chip = evolvedPokemonGUID
                evolvedPokemonData.base = {offset = evolvedPokemonData.offset}
                pokemonModel.setPosition(Global.call("model_position", evolvedPokemonData))
                pokemonModel.setRotation({pokemonModel.getRotation().x, pokemonModel.getRotation().y + modelYRotSend, pokemonModel.getRotation().z})
                pokemonModel.setLock(true)
              end
            end,
            function() -- Condition function
              return getObjectFromGUID(pokemonData.model_GUID) ~= nil
            end,
            spawn_delay + 1 -- timeout
          )
        end
      else
        -- Pokemon is not in the arena.

        -- Get the position and set the evo pokemon.
        local position = {params.pokemonXPos[params.index], 1, params.pokemonZPos}
        local rotation = {0, 0 + params.evolveRotation, 0}
        evolvedPokemon.setPosition(rack.positionToWorld(position))
        evolvedPokemon.setRotation(rotation)

        -- Rotate the model rotation.
        local pokemonModel = getObjectFromGUID(pokemonData.model_GUID)
        if pokemonModel ~= nil then
          pokemonModel.setRotation(rotation)
        end
      end

      -- Update the evo buttons.
      local evolveButtonParams = {
        inArena = params.inArena,
        isAttacker = params.isAttacker,
        index = params.index,
        yLoc = 0.21,
        pokemonXPos = params.pokemonXPos,
        pokemonZPos = params.pokemonZPos,
        rackGUID = params.rackGUID
      }
      updateEvolveButtons(evolveButtonParams, evolvedPokemonData, diceLevel)
    
      -- Change the token to shiny.
      if evolvedPokemon and shiny_state then
        evolvedPokemon.setColorTint({255/255, 215/255, 0/255})
      end

      return pokemonData
    end
end

-- Refreshes pokemon params supplies inputs.
function refreshPokemon(params)
    local xPos
    local startIndex = 0
    local hits
    local updatedRackData = {}
    local rack = getObjectFromGUID(params.rackGUID)

    local xPositions = params.pokemonXPos
    local buttonParams = {
        yLoc = params.yLoc,
        zLoc = params.zLoc,
        pokemonXPos = xPositions,
        pokemonZPos = params.pokemonZPos,
        rackGUID = params.rackGUID
    }

    local castParams = {}
    castParams.direction = {0,-1,0}
    castParams.type = 1
    castParams.max_distance = 0.7
    castParams.debug = debug

    -- Check Each Slot to see if it contains a Pokémon
    for i=1, #xPositions do
        local newSlotData = params.rackData[i]

        xPos = -1.6 + ( 0.59 * (i - 1))
        buttonParams.xPos = xPos
        buttonParams.index = i

        local origin = {xPositions[i], 0.94, params.pokemonZPos}
        castParams.origin = rack.positionToWorld(origin)
        hits = Physics.cast(castParams)

        if #hits ~= 0 then
          -- Show slot buttons
          showRackSlotButtons(buttonParams)

          -- Get the pokemon token data.
          local pokemonGUID = hits[1].hit_object.guid
          local data = Global.call("GetPokemonDataByGUID",{guid=pokemonGUID})

          -- If we didn't find pokemon data, it might be bacause models are enabled and the first item detected was a model.
          if data == nil then
            if Global.call("get_models_enabled") and #hits >= 2 then
              pokemonGUID = hits[2].hit_object.guid
              data = Global.call("GetPokemonDataByGUID",{guid=pokemonGUID})
            end
          end

          if data ~= nil then
            setNewPokemon(newSlotData, data, pokemonGUID)
            newSlotData.numStatusCounters = 0
            newSlotData.roundEffects = {}
            newSlotData.battleEffects = {}
            newSlotData.modifiers = {}
          else
            -- TODO: add this print out to each call to GetPokemonDataByGUID.
            print("No Pokémon Data Found for GUID: " .. tostring(pokemonGUID))
          end

          local origin = {xPositions[i] - levelDiceXOffset, 1.5, params.pokemonZPos - levelDiceZOffset}
          castParams.origin = rack.positionToWorld(origin)
          hits = Physics.cast(castParams)

          -- Calculate level + Show Evolve Button
          if #hits ~= 0 then
              newSlotData.levelDiceGUID = hits[1].hit_object.guid
              local levelDice = hits[1].hit_object
              local diceValue = levelDice.getValue()
              newSlotData.diceLevel = diceValue

              params.index = i
              params.inArena = false
              updateEvolveButtons(params, newSlotData, diceValue)
          else
              newSlotData.levelDiceGUID = nil
              newSlotData.diceLevel = 0

              params.index = i
              params.inArena = false
              updateEvolveButtons(params, newSlotData, 0)
          end
        elseif #hits == 0 then -- Empty Slot

            hideRackEvoButtons(buttonParams)
            hideRackSlotButtons(buttonParams)

            if newSlotData.levelDiceGUID ~= nil then
              --local levelDice = getObjectFromGUID(newSlotData.levelDiceGUID)
              --levelDice.destruct()
            end
            newSlotData = {}
        end

        updatedRackData[i] = newSlotData
    end

    return updatedRackData
end

-- Sets new pokemon.
function setNewPokemon(data, newPokemonData, pokemonGUID, preserveTera)
  -- Save off existing Tera data if this is an evolution in the arena.
  local new_teraType = nil
  local new_teraActive = nil
  local new_stellar = nil
  if preserveTera == true then
    new_teraType = data.teraType
    new_teraActive = data.teraActive
    new_stellar = data.stellar
  end

  data.name = newPokemonData.name
  data.types = copyTable(newPokemonData.types)
  data.baseLevel = newPokemonData.level
  data.effects = {}

  -- Tera info if preserving for an evolution in the arena.
  if preserveTera == true then
    data.teraType = new_teraType
    data.teraActive = new_teraActive
    data.stellar = new_stellar
  else
    data.teraType = newPokemonData.teraType
    data.teraActive = newPokemonData.teraActive
    data.stellar = false
  end

  -- Model info.
  data.model_GUID = newPokemonData.model_GUID
  data.created_before = newPokemonData.created_before
  data.custom_scale = newPokemonData.custom_scale
  data.in_creation = newPokemonData.in_creation
  data.idle_effect = newPokemonData.idle_effect
  data.run_effect = newPokemonData.run_effect
  data.spawn_effect = newPokemonData.spawn_effect
  data.despawn_time = newPokemonData.despawn_time
  data.offset = newPokemonData.offset
  data.persistent_state = newPokemonData.persistent_state

  data.moves = copyTable(newPokemonData.moves)
  local movesData = {}
  for i=1, #data.moves do
    local moveData = copyTable(Global.call("GetMoveDataByName", data.moves[i]))
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

-- Clears move text isAttacker selects attacker/defender.
function clearMoveText(isAttacker)
  if isAttacker then
    -- Clear text.
    local attackerText = getObjectFromGUID(atkText)
    attackerText.TextTool.setValue(" ")
  else
    local defenderText = getObjectFromGUID(defText)
    defenderText.TextTool.setValue(" ")
  end

  -- Remove movoe Disable buttons, if they were present.
  showMoveDisableButtons(isAttacker, false)
end

-- Handles calc points params supplies inputs.
function calcPoints(params)

    if Player[params.rackColour].steam_name == nil then return end

    local badgePoints = 0
    local levelPoints = 0
    local rack = getObjectFromGUID(params.rackGUID)
    local castParams = {}
    castParams.direction = {0,-1,0}
    castParams.type = 1
    castParams.max_distance = 0.7
    castParams.debug = debug
    local origin

    for i=1, #params.badgesXPos do
        origin = {params.badgesXPos[i], 0.95, -0.85}
        castParams.origin = rack.positionToWorld(origin)
        hits = Physics.cast(castParams)
        if #hits ~= 0 then
            badgePoints = badgePoints + (i + 2)
        end
    end
    for i=1, #params.rackData do
        local slotData = params.rackData[i]
        if slotData.baseLevel ~= nil then
          levelPoints = levelPoints + (slotData.baseLevel + slotData.diceLevel)
        end
    end

    local points = badgePoints + levelPoints
    printToColor(Player[params.rackColour].steam_name .. " currently has " .. points .. " Points.", params.clickerColour)
    printToColor("(" .. badgePoints .. " Badge Points + " .. levelPoints .. " Level Points)", params.clickerColour)
end


-- Updates level dice params supplies inputs.
function updateLevelDice(level, newLevel, params, levelDice)

  -- Applies level dice style.
  local function applyLevelDiceStyle(dice)
    if not dice then
      return
    end
    if dice.setColorTint then
      dice.setColorTint({r=0, g=0, b=0})
    end
  end

  -- Sets d 6 value.
  local function setD6Value(dice, value, yRotation)
    if value == 1 then
      dice.setRotation({270,yRotation,0})
    elseif value == 2 then
      dice.setRotation({0,yRotation,0})
    elseif value == 3 then
      dice.setRotation({0,yRotation,270})
    elseif value == 4 then
      dice.setRotation({0,yRotation,90})
    elseif value == 5 then
      dice.setRotation({0,yRotation,180})
    elseif value == 6 then
      dice.setRotation({90,yRotation,0})
    end
  end

  -- Returns dice sides.
  local function getDiceSides(dice)
    if not dice or not dice.getRotationValues then
      return nil
    end
    local rotationValues = dice.getRotationValues()
    if rotationValues then
      return #rotationValues
    end
    return nil
  end

  local useD20 = Global.call("getLevelIncreaseSet")
  local diceType = useD20 and "Die_20" or "Die_6"

  local yRotation = params.inArena and 0 or params.yRotRecall
  if level == 0 then -- Add level dice to board
    local dice = spawnObject({ type = diceType })
    applyLevelDiceStyle(dice)
    local dicePos

    if params.inArena then
      local arenaDicePos = params.isAttacker and attackerPos or defenderPos
      dicePos = {arenaDicePos.dice[1], 1.4, arenaDicePos.dice[2]}
    else
      local rack = getObjectFromGUID(params.rackGUID)
      dicePos = rack.positionToWorld({params.pokemonXPos[params.index] - levelDiceXOffset, 0.75, params.pokemonZPos - levelDiceZOffset})
    end
    dice.setPosition(dicePos)
    if useD20 then
      dice.setRotation({0,yRotation,0})
      if dice.setValue then
        dice.setValue(newLevel)
      elseif dice.setRotationValue then
        dice.setRotationValue(newLevel)
      end
    else
      setD6Value(dice, newLevel, yRotation)
    end
    return dice.getGUID()
  elseif levelDice ~= nil then -- Rotate level dice to correct level
    if newLevel == 0 then
        local destroyObj = function() levelDice.destruct() end
        Wait.time(destroyObj, 0.25)
        return nil
    else
      applyLevelDiceStyle(levelDice)
      if useD20 then
        local sides = getDiceSides(levelDice)
        if sides ~= 20 then
          local dicePos = levelDice.getPosition()
          local diceRot = levelDice.getRotation()
          levelDice.destruct()
          levelDice = spawnObject({ type = "Die_20", position = dicePos, rotation = diceRot })
          applyLevelDiceStyle(levelDice)
        end
        if levelDice.setValue then
          levelDice.setValue(newLevel)
        elseif levelDice.setRotationValue then
          levelDice.setRotationValue(newLevel)
        end
      else
        setD6Value(levelDice, newLevel, yRotation)
      end
      return levelDice.getGUID()
    end
  end
end

-- Adds status counter params supplies inputs.
function addStatusCounter(params)
  local counterParam = {}
  local counterPos = params.arenaAttack and attackerPos or defenderPos
  local data = params.arenaAttack and attackerPokemon or defenderPokemon

  counterParam.position = {counterPos.statusCounters[1], 2, counterPos.statusCounters[2]}
  counterParam.rotation = {0,180,0}

  local addCounter = getObjectFromGUID("3aad00").takeObject(counterParam)
  if data.numStatusCounters == nil then
    data.numStatusCounters = 0
  end
  data.numStatusCounters = data.numStatusCounters + 1
end

-- Removes status counter isAttacker selects attacker/defender.
function removeStatusCounter(isAttacker)

  local castParam = {}
  if isAttacker then
    castParam.origin = {attackerPos.statusCounters[1], 2, attackerPos.statusCounters[2]}
  else
    castParam.origin = {defenderPos.statusCounters[1], 2, defenderPos.statusCounters[2]}
  end

  castParam.direction = {0,-1,0}
  castParam.type = 1
  castParam.max_distance = 2
  castParam.debug = debug

  local hits = Physics.cast(castParam)
  if #hits ~= 0 then
    local counters = hits[1].hit_object
    if counters.hasTag("Status Counter") then
      local numInStack = counters.getQuantity()
      if numInStack > 1 then
        local counter = counters.takeObject()
        counter.destruct()
        return numInStack - 1
      else
        counters.destruct()
        return 0
      end
    end
  else
      return 0
  end
end

-- Count the status tokens a Pokemon has.
function countStatusCounters(isAttacker)
  local castParam = {}
  if isAttacker then
    castParam.origin = {attackerPos.statusCounters[1], 2, attackerPos.statusCounters[2]}
  else
    castParam.origin = {defenderPos.statusCounters[1], 2, defenderPos.statusCounters[2]}
  end

  castParam.direction = {0,-1,0}
  castParam.type = 1
  castParam.max_distance = 2
  castParam.debug = debug

  local hits = Physics.cast(castParam)
  if #hits ~= 0 then
    local counters = hits[1].hit_object
    if counters.hasTag("Status Counter") then
      return #hits
    end
  else
    return 0
  end
end

-- Returns a display name for the current encounter side.
function getEncounterTrainerName(isAttacker)
  local data = isAttacker and attackerData or defenderData
  if data == nil or data.type == nil then return "Unknown" end

  if data.type == PLAYER then
    local p = data.playerColor and Player[data.playerColor] or nil
    return (p and (p.steam_name or p.nickname)) or "Player"
  elseif data.type == GYM then
    return data.trainerName or "Gym Leader"
  elseif data.type == RIVAL then
    return "Rival " .. (data.trainerName or "???")
  elseif data.type == TRAINER then
    return "The Trainer"
  else
    return "Unknown"
  end
end

-- Returns the name of the Pokémon currently in play for the side.
function getPokemonNameInPlay(isAttacker)
  local data = isAttacker and attackerData or defenderData
  local pokemon = isAttacker and attackerPokemon or defenderPokemon
  if data == nil or pokemon == nil then return "Unknown Pokémon" end

  -- Handles name from roster.
  local function nameFromRoster(index)
    return data.pokemon and data.pokemon[index] and data.pokemon[index].name
  end

  if data.type == GYM then
    local card = data.trainerGUID and getObjectFromGUID(data.trainerGUID) or nil
    local faceUp = card and Global.call("isFaceUp", card)
    local idx = faceUp and 1 or 2  -- gym leaders are double-sided
    return nameFromRoster(idx) or pokemon.name or "Unknown Pokémon"
  elseif data.type == RIVAL then
    local card = pokemon.pokemonGUID and getObjectFromGUID(pokemon.pokemonGUID) or nil
    local faceUp = card and Global.call("isFaceUp", card)
    local idx = faceUp and 1 or 2  -- rival cards are also double-sided
    return nameFromRoster(idx) or pokemon.name or "Unknown Pokémon"
  else
    return pokemon.name or "Unknown Pokémon"
  end
end

-- Event handler for object enter scripting zone.
function onObjectEnterScriptingZone(zone, object)
  -- Collect some information.
  local zone_guid = zone.getGUID()
  local object_name = object.getName()
  local object_guid = object.getGUID()

  -- Determine which zone was entered.
  if zone_guid == wildPokeZone and defenderData.type == nil then
    local data = Global.call("GetPokemonDataByGUID", {guid=object_guid})
    if data ~= nil then
      showWildPokemonButton(true)
      wildPokemonGUID = object_guid
    end
  elseif zone_guid == defenderZones.battleCard then
    -- Do we recognize the booster name?
    if object_name == "X Attack" then
      -- Set the Defender's Booster attack value to 2.
      defenderData.attackValue.booster = 2
      local pokemon_name = getPokemonNameInPlay(DEFENDER)
      printToAll("Used X Attack! " .. tostring(pokemon_name) .. "'s Attack rose!")

      -- If the move was already calculated, let's adjust the calculator.
      local current_value = getAttackValueCounterValue(DEFENDER)
      if current_value == defenderData.attackValue.level + defenderData.attackValue.movePower + defenderData.attackValue.effectiveness then
        adjustAttackValueCounter(DEFENDER, defenderData.attackValue.booster)
      end
    end
  elseif zone_guid == defenderZones.status then
    local keep_status, applied_status = tryApplyStatusFromZone(DEFENDER, object)
    if keep_status == nil then return end
    if not keep_status then
      returnStatusCardToBag(object_name, object)
      return
    end

    if not applied_status then
      return
    end

    -- Print out the status.
    announceStatus(object_name, getPokemonNameInPlay(DEFENDER))

    -- Only the Burn status affects move power.
    if object_name == status_ids.burn then
      defenderData.attackValue.status = -1
    end

    -- Check if the Attacker used a ConditionBoost move.
    local moveIndex = tonumber(attackerData.selectedMoveIndex)
    if attackerPokemon and attackerPokemon.movesData and moveIndex and moveIndex >= 1 then
      local attackerMoveData = attackerPokemon.movesData[moveIndex]
      local attacker_move_is_immune = isOpponentImmuneToMove(attackerMoveData, defenderPokemon)
      if attackerPokemon and attackerPokemon.teraActive == true and attackerPokemon.teraType == "Stellar" then
        attacker_move_is_immune = false
      end
      if not attacker_move_is_immune and moveHasEffect(attackerMoveData, status_ids.conditionBoost) and attackerData and attackerData.attackValue.effect == 0 then
        attackerData.attackValue.effect = 1
        local pokemon_name = getPokemonNameInPlay(ATTACKER)
        printToAll("Adjusting "  .. pokemon_name .. "'s Attack Strength by 1 for the Condition Boost effect.")
        updateAttackValueCounter(ATTACKER)
      end
    end
  elseif zone_guid == defenderZones.fieldEffect then
    -- Determine the field effect in play.
    local tile_data = field_effect_tile_data[object.getGUID()]
    if not tile_data then return end
    local index = Global.call("isFaceUp", object) and 1 or 2
    local active_effect = tile_data.effects[index]
    if not active_effect then return end

    -- Announce the Field Effect and save it.
    defFieldEffect = {name=active_effect, guid=object.getGUID()}
    announceFieldEffect(active_effect, DEFENDER)
  elseif zone_guid == attackerZones.fieldEffect then
    -- Determine the field effect in play.
    local tile_data = field_effect_tile_data[object.getGUID()]
    if not tile_data then return end
    local index = Global.call("isFaceUp", object) and 1 or 2
    local active_effect = tile_data.effects[index]
    if not active_effect then return end

    -- Announce the Field Effect and save it.
    announceFieldEffect(active_effect, ATTACKER)
    atkFieldEffect = {name=active_effect, guid=object.getGUID()}
  elseif zone_guid == attackerZones.status then
    local keep_status, applied_status = tryApplyStatusFromZone(ATTACKER, object)
    if keep_status == nil then return end
    if not keep_status then
      returnStatusCardToBag(object_name, object)
      return
    end

    if not applied_status then
      return
    end

    -- Print out the status.
    announceStatus(object_name, getPokemonNameInPlay(ATTACKER))

    -- Only the Burn status affects move power.
    if object_name == status_ids.burn then
      attackerData.attackValue.status = -1
    end

    -- Check if the Defender used a ConditionBoost move.
    local moveIndex = tonumber(defenderData.selectedMoveIndex)
    if defenderPokemon and defenderPokemon.movesData and moveIndex and moveIndex >= 1 then
      local defenderMoveData = defenderPokemon.movesData[moveIndex]
      local defender_move_is_immune = isOpponentImmuneToMove(defenderMoveData, attackerPokemon)
      if defenderPokemon and defenderPokemon.teraActive == true and defenderPokemon.teraType == "Stellar" then
        defender_move_is_immune = false
      end
      if not defender_move_is_immune and moveHasEffect(defenderMoveData, status_ids.conditionBoost) and defenderData and defenderData.attackValue.effect == 0 then
        defenderData.attackValue.effect = 1
        local pokemon_name = getPokemonNameInPlay(DEFENDER)
        printToAll("Adjusting "  .. pokemon_name .. "'s Attack Strength by 1 for the Condition Boost effect.")
        updateAttackValueCounter(DEFENDER)
      end
    end
  elseif zone_guid == attackerZones.battleCard then
    -- Do we recognize the booster name?
    if object_name == "X Attack" then
      -- Set the Attacker's Booster attack value to 2.
      attackerData.attackValue.booster = 2
      local pokemon_name = getPokemonNameInPlay(ATTACKER)
      printToAll("Used X Attack! " .. tostring(pokemon_name) .. "'s Attack rose!")

      -- If the move was already calculated, let's adjust the calculator.
      local current_value = getAttackValueCounterValue(ATTACKER)
      if current_value == attackerData.attackValue.level + attackerData.attackValue.movePower + attackerData.attackValue.effectiveness then
        adjustAttackValueCounter(ATTACKER, attackerData.attackValue.booster)
      end
    end
  end
end

-- Event handler for object leave scripting zone.
function onObjectLeaveScriptingZone(zone, object)
  -- Collect some information.
  local zone_guid = zone.getGUID()
  local object_name = object.getName()

  -- Determine which zone was entered.
  if zone_guid == wildPokeZone and inBattle == false then
    showWildPokemonButton(false)
  elseif zone_guid == defenderZones.battleCard then
    -- Set the Defender's Booster attack value to 0.
    local existingVal = defenderData.attackValue.booster
    defenderData.attackValue.booster = 0
    if existingVal > 0 then
      updateAttackValueCounter(DEFENDER)
    end
  elseif zone_guid == defenderZones.status then
    if not (object.hasTag("Status") and is_status_card_name(object_name)) then
      return
    end

    -- Set the Defender's Status attack value to 0.
    defenderData.attackValue.status = 0
    -- Remove the status.
    removeStatus(defenderPokemon)

    -- Remove any sort of opponent move effect bonuses (if applicable).
    if attackerData and attackerData.attackValue.effect ~= 0 then
      attackerData.attackValue.effect = 0
    end
  elseif zone_guid == defenderZones.fieldEffect then
    defFieldEffect = {name=nil, guid=nil}
  elseif zone_guid == attackerZones.fieldEffect then
    atkFieldEffect = {name=nil, guid=nil}
  elseif zone_guid == attackerZones.status then
    if not (object.hasTag("Status") and is_status_card_name(object_name)) then
      return
    end

    -- Set the Attacker's Status attack value to 0.
    attackerData.attackValue.status = 0
    -- Remove the status.
    removeStatus(attackerPokemon)

    -- Remove any sort of opponent move effect bonuses (if applicable).
    if defenderData and defenderData.attackValue.effect ~= 0 then
      defenderData.attackValue.effect = 0
    end
  elseif zone_guid == attackerZones.battleCard then
    -- Set the Attacker's Booster attack value to 0.
    local existingVal = attackerData.attackValue.booster
    attackerData.attackValue.booster = 0
    if existingVal > 0 then
      updateAttackValueCounter(ATTACKER)
    end
  end
end

-- Prints a flavor message for a field effect on a given side.
-- effect_name should match field_effect_ids (e.g., "Safeguard", "Spikes", "ElectricTerrain").
function announceFieldEffect(effect_name, isAttacker)
  if effect_name == nil then return end

  local side = isAttacker and "Attacking" or "Defending"
  if effect_name == field_effect_ids.stealthrock then
    -- Stealth Rock is on the *opposite side* of the team that plays it.
    side = isAttacker and "Defending" or "Attacking"
  end
  local msgs = {
    [field_effect_ids.safeguard]      = "A veil of light covers the %s team!",
    [field_effect_ids.mist]           = "Mist shrouded the %s team!",
    [field_effect_ids.spikes]         = "Spikes were scattered all around the feet of the %s team!",
    [field_effect_ids.stealthrock]    = "Pointed stones float in the air around the %s team!",
    [field_effect_ids.toxicspikes]    = "Toxic spikes were scattered around the feet of the %s team!",
    [field_effect_ids.electricterrain]= "An electric current runs across the battlefield!",
    [field_effect_ids.grassyterrain]  = "Grass grew to cover the battlefield!",
    [field_effect_ids.psychicterrain] = "The battlefield got weird!",
    [field_effect_ids.mistyterrain]   = "Mist swirled around the battlefield!",
    [field_effect_ids.rain]           = "It started to rain!",
    [field_effect_ids.harshsunlight]  = "The sunlight turned harsh!",
    [field_effect_ids.sandstorm]      = "A sandstorm kicked up!",
    [field_effect_ids.hail]           = "It started to hail!",
    [field_effect_ids.renewal]        = "A renewing energy surrounded the %s team!"
  }

  local template = msgs[effect_name]
  if not template then return end

  -- Try to colorize the log using the closest matching type color.
  local effect_type_lookup = {
    [field_effect_ids.safeguard]       = "Normal",
    [field_effect_ids.mist]            = "Ice",
    [field_effect_ids.spikes]          = "Ground",
    [field_effect_ids.stealthrock]     = "Rock",
    [field_effect_ids.toxicspikes]     = "Poison",
    [field_effect_ids.electricterrain] = "Electric",
    [field_effect_ids.grassyterrain]   = "Grass",
    [field_effect_ids.psychicterrain]  = "Psychic",
    [field_effect_ids.mistyterrain]    = "Fairy",
    [field_effect_ids.rain]            = "Water",
    [field_effect_ids.harshsunlight]   = "Fire",
    [field_effect_ids.sandstorm]       = "Ground",
    [field_effect_ids.hail]            = "Ice",
  }
  local color = nil
  local effect_type = effect_type_lookup[effect_name]
  if effect_type then
    color = Global.call("type_to_color_lookup", effect_type)
  end

  local message = template:find("%%s") and string.format(template, side) or template
  printToAll(message, color)
end

-- Prints a flavor message for a status being applied to a Pokemon.
-- status should match status_ids; pokemon_name is the target's display name.
function announceStatus(status, pokemon_name)
  if not status or not pokemon_name then return end

  local msgs = {
    [status_ids.poison]   = "%s was poisoned!",
    [status_ids.burn]     = "%s was burned!",
    [status_ids.paralyze] = "%s is paralyzed! It may be unable to move!",
    [status_ids.sleep]    = "%s fell asleep!",
    [status_ids.freeze]   = "%s was frozen solid!",
    [status_ids.confuse]  = "%s became confused!",
    [status_ids.curse]    = "%s became cursed!",
  }

  local type_lookup = {
    [status_ids.poison]   = "Poison",
    [status_ids.burn]     = "Fire",
    [status_ids.paralyze] = "Electric",
    [status_ids.sleep]    = "Psychic",
    [status_ids.freeze]   = "Ice",
    [status_ids.confuse]  = "Psychic",
    [status_ids.curse]    = "Ghost",
  }

  local template = msgs[status]
  if not template then return end

  local color = nil
  local type_name = type_lookup[status]
  if type_name then
    color = Global.call("type_to_color_lookup", type_name)
  end

  printToAll(string.format(template, pokemon_name), color)
end

--------------------------------------------------------------------------------
-- RACK BUTTONS
--------------------------------------------------------------------------------

function showRackSlotButtons(params)

    local rack = getObjectFromGUID(params.rackGUID)
    local buttonIndex = (params.index * 8) - 3

    rack.editButton({index=buttonIndex, position={params.xPos, params.yLoc, params.zLoc}}) -- Attack Button
    rack.editButton({index=buttonIndex+1, position={params.xPos + 0.26, params.yLoc, params.zLoc}}) -- Defend Button
    rack.editButton({index=buttonIndex+2, position={params.xPos - 0.09, params.yLoc, 0.02}}) -- Level Down Button
    rack.editButton({index=buttonIndex+3, position={params.xPos + 0.34, params.yLoc, 0.02}}) -- Level Up Button
end

-- Hides rack slot buttons params supplies inputs.
function hideRackSlotButtons(params)

    local rack = getObjectFromGUID(params.rackGUID)
    local buttonIndex = (params.index * 8) - 3

    rack.editButton({index=buttonIndex, position={params.xPos, 1000, params.zLoc}}) -- Attack Button
    rack.editButton({index=buttonIndex+1, position={params.xPos + 0.26, 1000, params.zLoc}}) -- Defend Button
    rack.editButton({index=buttonIndex+2, position={params.xPos - 0.09, 1000, 0.02}}) -- Level Down Button
    rack.editButton({index=buttonIndex+3, position={params.xPos + 0.34, 1000, 0.02}}) -- Level Up Button
end

-- Hides all rack buttons.
function hideAllRackButtons(buttonParams)
    local rack = getObjectFromGUID(buttonParams.rackGUID)
    local buttonIndex = 5

    for i=1,6 do
        local xPos = -1.6 + ( 0.59 * (i-1))
        local yPos = 1000
        rack.editButton({index=buttonIndex + 7, position={buttonParams.pokemonXPos[7 - i] + 0.24, yPos, buttonParams.pokemonZPos + 0.025}})
        rack.editButton({index=buttonIndex + 6, position={buttonParams.pokemonXPos[7 - i] + 0.19, yPos, buttonParams.pokemonZPos + 0.025}})
        rack.editButton({index=buttonIndex + 5, position={buttonParams.pokemonXPos[7 - i] + 0.215, yPos, buttonParams.pokemonZPos + 0.025}})

        rack.editButton({index=buttonIndex + 4, position={-1.47 + ((i - 1) * 0.59), yPos, buttonParams.zLoc}})

        rack.editButton({index=buttonIndex, position={xPos, yPos, buttonParams.zLoc}})
        rack.editButton({index=buttonIndex + 1, position={xPos + 0.26, yPos, buttonParams.zLoc}})
        rack.editButton({index=buttonIndex + 2, position={xPos - 0.09, yPos, 0.02}})
        rack.editButton({index=buttonIndex + 3, position={xPos + 0.34, yPos, 0.02}})

      buttonIndex = buttonIndex + 8
    end
end

-- Handles multi evo 1.
function multiEvo1()

  multiEvolve(1)

end

-- Handles multi evo 2.
function multiEvo2()

  multiEvolve(2)
end

-- Handles multi evo 3.
function multiEvo3()

  multiEvolve(3)
end

-- Handles multi evo 4.
function multiEvo4()

  multiEvolve(4)
end

-- Handles multi evo 5.
function multiEvo5()

  multiEvolve(5)
end

-- Handles multi evo 6.
function multiEvo6()

  multiEvolve(6)
end

-- Handles multi evo 7.
function multiEvo7()

  multiEvolve(7)
end

-- Handles multi evo 8.
function multiEvo8()

  multiEvolve(8)
end

-- Handles multi evo 9.
function multiEvo9()

  multiEvolve(9)
end

-- Handles multi evolve.
function multiEvolve(index)
  multiEvolving = false
  local params = multiEvoData.params
  local evoPokemon = multiEvoData.pokemonData
  local chosenEvoData = evoPokemon[index]
  local chosenEvoGuids = chosenEvoData.guids

  for i=1, #evoPokemon do
    local evoData = evoPokemon[i]
    local evoDataGuids = evoData.guids

    -- This check prevents us from putting away the wrong token.
    local removeThisToken = true
    for j = 1, #chosenEvoGuids do
      for k = 1, #evoDataGuids do
        if chosenEvoGuids[j] == evoDataGuids[k] then
          removeThisToken = false
          break
        end
      end
    end
    
    if removeThisToken then
      for m = 1, #evoDataGuids do
        local status, pokemonToken = pcall(getObjectFromGUID, evoDataGuids[m])
        if pokemonToken ~= nil then
          local pokeball = getObjectFromGUID(evolvePokeballGUID[evoData.ball])
          pokeball.putObject(pokemonToken)
        end
      end
    end
  end

  hideMultiEvoButtons()
  local evolvedPokemon = nil
  local evolvedPokemonData = nil
  local evolvedPokemonGUID = nil
  local status = nil
  for n = 1, #chosenEvoGuids do
    if evolvedPokemon ~= nil then
      break
    end
    status, evolvedPokemon = pcall(getObjectFromGUID, chosenEvoGuids[n])
    if evolvedPokemon ~= nil then
      evolvedPokemonGUID = chosenEvoGuids[n]
      evolvedPokemonData = Global.call("GetPokemonDataByGUID",{guid=evolvedPokemonGUID})
      break
    end
  end
  local rack = getObjectFromGUID(params.rackGUID)

  if params.inArena then
    if params.isAttacker then
      position = {attackerPos.pokemon[1], 2, attackerPos.pokemon[2]}
      evolvedPokemon.setPosition(position)
      setNewPokemon(attackerPokemon, evolvedPokemonData, evolvedPokemonGUID, true)
      updateMoves(params.isAttacker, attackerPokemon)
    else
      position = {defenderPos.pokemon[1], 2, defenderPos.pokemon[2]}
      evolvedPokemon.setPosition(position)
      setNewPokemon(defenderPokemon, evolvedPokemonData, evolvedPokemonGUID, true)
      updateMoves(params.isAttacker, defenderData)
    end
    rack.call("updatePokemonData", {index=params.index, pokemonGUID=evolvedPokemonGUID})
  else
    rack.call("updatePokemonData", {index=params.index, pokemonGUID=evolvedPokemonGUID})
    local position = rack.positionToWorld({params.pokemonXPos[params.index], 1, params.pokemonZPos})
    local rotation = {0, 0 + params.evolveRotation, 0}

    -- Move the evolved Pokemon model.
    evolvedPokemon.setPosition(position)
    evolvedPokemon.setRotation(rotation)

    -- Move the model once the evolved pokemon model is resting.
    Wait.condition(
      function()
        -- Check if there is a model_GUID associated with this evo. Sparse array behavior prevents 
        -- us from using nil in place of a nil model. Check for 0 instead.
        if multiEvoGuids[index] ~= 0 and multiEvoGuids[index] ~= nil then
          -- Get the model by its GUID and move it to ontop of the pokemon token.
          local pokemonModel = getObjectFromGUID(multiEvoGuids[index])
          if pokemonModel ~= nil then
            -- Reformat the data so that the model code can use it. (Sorry, I know this is hideous.)
            evolvedPokemonData.chip = evolvedPokemonGUID
            evolvedPokemonData.base = {offset = evolvedPokemonData.offset}
            pokemonModel.setPosition(Global.call("model_position", evolvedPokemonData))
            pokemonModel.setRotation(rotation)
          end
        end

        -- Clear the multi evo GUID table.
        multiEvoGuids = {}
      end,
      function() -- Condition function
        return evolvedPokemon.resting
      end,
      2
    )
  end
end

--------------------------------------------------------------------------------
-- EVOLUTION BUTTONS
--------------------------------------------------------------------------------

function updateEvoButtons(params)
    if params.inArena then
      updateArenaEvoButtons(params, params.isAttacker)
    else
      updateRackEvoButtons(params)
    end
end

-- Hides evo buttons params supplies inputs.
function hideEvoButtons(params)
    if params.inArena then
      hideArenaEvoButtons(params.isAttacker)
    else
      hideRackEvoButtons(params)
    end
end

-- Rack Evolution Buttons
function updateRackEvoButtons(params)
    local rack = getObjectFromGUID(params.rackGUID)
    local buttonTooltip
    local buttonIndex = 2 + (8 * params.index)
    if params.numEvos == 2 then
      local buttonTooltip2
      buttonTooltip = "Evolve into " .. params.evoName
      buttonTooltip2 = "Evolve into " .. params.evoNameTwo
      rack.editButton({index=buttonIndex+1, position={params.pokemonXPos[7 - params.index] + 0.19, params.yLoc, params.pokemonZPos + 0.025}, tooltip=buttonTooltip})
      rack.editButton({index=buttonIndex+2, position={params.pokemonXPos[7 - params.index] + 0.24, params.yLoc, params.pokemonZPos + 0.025}, tooltip=buttonTooltip2})
    else
      if params.numEvos == 1 then
          buttonTooltip = "Evolve into " .. params.evoName
      else
          buttonTooltip = "Evolve " .. params.pokemonName
      end
      rack.editButton({index=buttonIndex, position={params.pokemonXPos[7 - params.index] + 0.215, params.yLoc, params.pokemonZPos + 0.025}, tooltip=buttonTooltip})
    end
end

-- Hides rack evo buttons params supplies inputs.
function hideRackEvoButtons(params)
    local rack = getObjectFromGUID(params.rackGUID)
    local buttonIndex = 2 + (8 * params.index)

    rack.editButton({index=buttonIndex, position={params.pokemonXPos[7 - params.index] + 0.215, 1000, params.pokemonZPos + 0.025}, tooltip=""})
    rack.editButton({index=buttonIndex+1, position={params.pokemonXPos[7 - params.index] + 0.19, 1000, params.pokemonZPos + 0.025}, tooltip=""})
    rack.editButton({index=buttonIndex+2, position={params.pokemonXPos[7 - params.index] + 0.24, 1000, params.pokemonZPos + 0.025}, tooltip=""})
end

-- Updates arena evo buttons params supplies inputs. isAttacker selects attacker/defender.
function updateArenaEvoButtons(params, isAttacker)

  local position1
  local position2
  local buttonId1
  local buttonId2

  if isAttacker then
    buttonId1 = BUTTON_ID.atkEvo1
    buttonId2 = BUTTON_ID.atkEvo2
    position1 = {x=atkEvolve1Pos.x, y=0.4, z=atkEvolve1Pos.z}
    position2 = {x=atkEvolve2Pos.x, y=0.4, z=atkEvolve2Pos.z}
  else
    buttonId1 = BUTTON_ID.defEvo1
    buttonId2 = BUTTON_ID.defEvo2
    position1 = {x=defEvolve1Pos.x, y=0.4, z=defEvolve1Pos.z}
    position2 = {x=defEvolve2Pos.x, y=0.4, z=defEvolve2Pos.z}
  end

  if params.numEvos == 2 then
    local buttonTooltip2
    buttonTooltip = "Evolve into " .. params.evoName
    buttonTooltip2 = "Evolve into " .. params.evoNameTwo
    edit_button(buttonId1, {position=position1, tooltip=buttonTooltip})
    edit_button(buttonId2, {position=position2, tooltip=buttonTooltip2})
  else
    if params.numEvos == 1 then
        buttonTooltip = "Evolve into " .. params.evoName
    else
        buttonTooltip = "Evolve " .. params.pokemonName
    end
    edit_button(buttonId1, {position=position1, tooltip=buttonTooltip})
  end
end

-- Hides arena evo buttons isAttacker selects attacker/defender.
function hideArenaEvoButtons(isAttacker)
  if isAttacker then
    edit_button(BUTTON_ID.atkEvo1, { position={atkEvolve1Pos.x, 1000, atkEvolve1Pos.z}})
    edit_button(BUTTON_ID.atkEvo2, { position={atkEvolve2Pos.x, 1000, atkEvolve2Pos.z}})
  else
    edit_button(BUTTON_ID.defEvo1, { position={defEvolve1Pos.x, 1000, defEvolve1Pos.z}})
    edit_button(BUTTON_ID.defEvo2, { position={defEvolve2Pos.x, 1000, defEvolve2Pos.z}})
  end
end

--------------------------------------------------------------------------------
-- ARENA BUTTONS
--------------------------------------------------------------------------------

function showMoveButtons(isAttacker, cardMoveData)
  local buttonIds
  local movesZPos
  local moves

  if isAttacker then
    buttonIds = {BUTTON_ID.atkMove1, BUTTON_ID.atkMove2, BUTTON_ID.atkMove3, BUTTON_ID.atkMove4}
    movesZPos = atkMoveZPos
    moves = attackerPokemon.movesData
  else
    buttonIds = {BUTTON_ID.defMove1, BUTTON_ID.defMove2, BUTTON_ID.defMove3, BUTTON_ID.defMove4}
    movesZPos = defMoveZPos
    moves = defenderPokemon.movesData
  end

  local numMoves = #moves
  if cardMoveData ~= nil then
    numMoves = numMoves + 1
    table.insert(moves, 1, cardMoveData)
  end
  local buttonWidths = (numMoves*3.15) + ((numMoves-1) + 0.45)
  local xPos = 9.415 - (buttonWidths * 0.49)

  for i=1, math.min(numMoves, #buttonIds) do
    local moveName = tostring(moves[i].name)
    local moveType = tostring(moves[i].type)
    local button_color = copyTable(Global.call("type_to_color_lookup", moveType))
    local font_color = "Black"
    if moveType == "Dark" or moveType == "Ghost" or moveType == "Fighting" then
      font_color = "White"
    end

    -- If this move is Flying Press then give a tooltip.
    local tooltip = ""
    if moveName == "Flying Press" then
      tooltip = "Effectiveness calculated on best outcome of Fighting/Flying"
    elseif moveName == "Judgement" then
      local pokemon_data = isAttacker and attackerPokemon or defenderPokemon
      local enhancer_type = pokemon_data.type_enhancer
      if enhancer_type ~= nil then
        moveType = tostring(enhancer_type)
        if moveType == "Dark" or moveType == "Ghost" or moveType == "Fighting" then
          font_color = "White"
        end
        button_color = copyTable(Global.call("type_to_color_lookup", moveType))
      end
    end

    -- Cap move names so they don't get gigantic.
    if #moveName > 15 then
      -- Grab the first 10 characters.
      local prefix = string.sub(moveName, 1, 10)

      -- Find the last space in that prefix.
      local last_space = prefix:match(".*()%s")

      if last_space then
        -- Cut at the last space.
        moveName = string.sub(moveName, 1, last_space - 1) .. "..."
      else
        -- No space, fallback to hard cutoff.
        moveName = prefix .. " ..."
      end
    end

    edit_button(buttonIds[i], { position={xPos + (3.75*(i-1)), 0.45, movesZPos}, label=moveName, font_color=font_color, color=button_color, tooltip=tooltip})
  end
end

-- Shows random move button isAttacker selects attacker/defender.
function showRandomMoveButton(isAttacker)
  if isAttacker then
    edit_button(BUTTON_ID.atkRandomMove, { position={atkConfirmPos.x, 0.4, atkConfirmPos.z}, label="RANDOM MOVE" })
  else
    edit_button(BUTTON_ID.defRandomMove, { position={defConfirmPos.x, 0.4, defConfirmPos.z}, label="RANDOM MOVE" })
  end
end

-- Hides random move button isAttacker selects attacker/defender.
function hideRandomMoveButton(isAttacker)
  if isAttacker then
    edit_button(BUTTON_ID.atkRandomMove, { position={atkConfirmPos.x, 1000, atkConfirmPos.z}})
  else
    edit_button(BUTTON_ID.defRandomMove, { position={defConfirmPos.x, 1000, defConfirmPos.z}})
  end
end

-- This function is for player-controlled trainers.
function showAtkButtons(visible)
  local yPos = visible and 0.4 or 1000
  edit_button(BUTTON_ID.atkFaint, { position={teamAtkPos.x, yPos, teamAtkPos.z}, click_function="recallAndFaintAttackerPokemon", label="FAINT", tooltip="Recall and Faint Pokémon"})
  edit_button(BUTTON_ID.atkMoves, { position={movesAtkPos.x, yPos, movesAtkPos.z}, click_function="seeMoveRules", label="MOVES", tooltip="Show Move Rules"})
  edit_button(BUTTON_ID.atkRecall, { position={recallAtkPos.x, yPos, recallAtkPos.z}, click_function="recallAtkArena", label="RECALL"})
  edit_button(BUTTON_ID.atkLevelUp, { position={incLevelAtkPos.x, yPos, incLevelAtkPos.z}})
  edit_button(BUTTON_ID.atkLevelDown, { position={decLevelAtkPos.x, yPos, decLevelAtkPos.z}})
  edit_button(BUTTON_ID.atkStatusUp, { position={incStatusAtkPos.x, yPos, incStatusAtkPos.z}})
  edit_button(BUTTON_ID.atkStatusDown, { position={decStatusAtkPos.x, yPos, decStatusAtkPos.z}})

  if visible == false then
    hideArenaEvoButtons(true)
    hideArenaMoveButtons(true)
  end
end

-- Shows def buttons.
function showDefButtons(visible)
    local yPos = visible and 0.4 or 1000
    edit_button(BUTTON_ID.defFaint, { position={teamDefPos.x, yPos, teamDefPos.z}, click_function="recallAndFaintDefenderPokemon", label="FAINT", tooltip="Recall and Faint Pokémon"})
    edit_button(BUTTON_ID.defMoves, { position={movesDefPos.x, yPos, movesDefPos.z}, click_function="seeMoveRules", label="MOVES", tooltip="Show Move Rules"})
    edit_button(BUTTON_ID.defRecall, { position={recallDefPos.x, yPos, recallDefPos.z}, click_function="recallDefArena", label="RECALL", tooltip="Recall Pokémon"})
    edit_button(BUTTON_ID.defLevelUp, { position={incLevelDefPos.x, yPos, incLevelDefPos.z}, click_function="increaseDefArena"})
    edit_button(BUTTON_ID.defLevelDown, { position={decLevelDefPos.x, yPos, decLevelDefPos.z}, click_function="decreaseDefArena"})
    edit_button(BUTTON_ID.defStatusUp, { position={incStatusDefPos.x, yPos, incStatusDefPos.z}, click_function="addDefStatus"})
    edit_button(BUTTON_ID.defStatusDown, { position={decStatusDefPos.x, yPos, decStatusDefPos.z}, click_function="removeDefStatus"})

    if visible == false then
      hideArenaEvoButtons(false)
      hideArenaMoveButtons(false)
    end
end

-- This function shows or hides the attacker status buttons. For use with Gyms and Rivals, since Players automaticaclly get this.
function showAtkStatusButtons(visible)
  local yPos = visible and 0.4 or 1000
  edit_button(BUTTON_ID.atkStatusUp, { position={incStatusAtkPos.x, yPos, incStatusAtkPos.z}})
  edit_button(BUTTON_ID.atkStatusDown, { position={decStatusAtkPos.x, yPos, decStatusAtkPos.z}})
end

-- This function shows or hides the defender status buttons. For use with Gyms and Rivals, since Players automaticaclly get this.
function showDefStatusButtons(visible)
  local yPos = visible and 0.4 or 1000
  edit_button(BUTTON_ID.defStatusUp, { position={incStatusDefPos.x, yPos, incStatusDefPos.z}})
  edit_button(BUTTON_ID.defStatusDown, { position={decStatusDefPos.x, yPos, decStatusDefPos.z}})
end

-- Hides arena move buttons isAttacker selects attacker/defender.
function hideArenaMoveButtons(isAttacker)
    if isAttacker then
      edit_button(BUTTON_ID.atkMove1, { position={atkEvolve1Pos.x, 1000, atkEvolve1Pos.z}})
      edit_button(BUTTON_ID.atkMove2, { position={atkEvolve1Pos.x, 1000, atkEvolve2Pos.z}})
      edit_button(BUTTON_ID.atkMove3, { position={atkEvolve1Pos.x, 1000, atkEvolve2Pos.z}})
      edit_button(BUTTON_ID.atkMove4, { position={atkEvolve1Pos.x, 1000, atkEvolve2Pos.z}})
    else
      edit_button(BUTTON_ID.defMove1, { position={defEvolve1Pos.x, 1000, defEvolve1Pos.z}})
      edit_button(BUTTON_ID.defMove2, { position={defEvolve1Pos.x, 1000, defEvolve2Pos.z}})
      edit_button(BUTTON_ID.defMove3, { position={defEvolve1Pos.x, 1000, defEvolve2Pos.z}})
      edit_button(BUTTON_ID.defMove4, { position={defEvolve1Pos.x, 1000, defEvolve2Pos.z}})
    end

    hideArenaEffectiness(isAttacker)
end

-- Hides arena effectiness isAttacker selects attacker/defender.
function hideArenaEffectiness(isAttacker)
  local moveText = isAttacker and atkMoveText or defMoveText
  for i=1, 4 do
    local textfield = getObjectFromGUID(moveText[i])
    textfield.TextTool.setValue(" ")
  end
end

-- Shows wild pokemon button.
function showWildPokemonButton(visible)

  local yPos = visible and 0.4 or 1000
  edit_button(BUTTON_ID.battleWild, { position={defConfirmPos.x, yPos, -6.2}})
end

-- Shows multi evo buttons.
function showMultiEvoButtons(evoData)
  local buttonIds = {
    BUTTON_ID.multiEvo1, BUTTON_ID.multiEvo2, BUTTON_ID.multiEvo3,
    BUTTON_ID.multiEvo4, BUTTON_ID.multiEvo5, BUTTON_ID.multiEvo6,
    BUTTON_ID.multiEvo7, BUTTON_ID.multiEvo8, BUTTON_ID.multiEvo9
  }

  for evoIndex = 1, #evoData do
    if evoData[evoIndex].model_GUID ~= nil then
      table.insert(multiEvoGuids, evoData[evoIndex].model_GUID)
    else
      table.insert(multiEvoGuids, 0)
    end
  end

  local numEvos = #evoData
  local tokensWidth = ((numEvos * 2.8) + ((numEvos-1) * 0.2) )

  for i=1, numEvos do
    local xPos = 1.4 + ((i-1) * 3) - (tokensWidth * 0.5)
    local worldPos = {xPos, 1, -30}
    local localPos = self.positionToLocal(worldPos)
    localPos.x = -localPos.x
    edit_button(buttonIds[i], {position=localPos})
  end
end

-- Hides multi evo buttons.
function hideMultiEvoButtons()
  local buttonIds = {
    BUTTON_ID.multiEvo1, BUTTON_ID.multiEvo2, BUTTON_ID.multiEvo3,
    BUTTON_ID.multiEvo4, BUTTON_ID.multiEvo5, BUTTON_ID.multiEvo6,
    BUTTON_ID.multiEvo7, BUTTON_ID.multiEvo8, BUTTON_ID.multiEvo9
  }

  for i=1, 9 do
    edit_button(buttonIds[i], {position={0, 1000, 0}})
  end
end

-- Shows flip gym button.
function showFlipGymButton(visible)
  local yPos = visible and 0.5 or 1000
  edit_button(BUTTON_ID.nextPokemon, { position={gymFlipButtonPos.x, yPos, gymFlipButtonPos.z}})
end

-- Shows flip rival button.
function showFlipRivalButton(visible)
  local yPos = visible and 0.5 or 1000
  edit_button(BUTTON_ID.nextRival, { position={rivalFlipButtonPos.x, yPos, rivalFlipButtonPos.z}, click_function="flipRivalPokemon", tooltip=""})
end

-- Helper function to despawn autoroller dice.
function despawnAutoRollDice(isAttacker)
  if isAttacker then
    -- Despawn any existing spawned dice.
    for dice_index=1, #ATK_SPAWNED_DICE_TABLE do
      -- Delete the dice.
      if not ATK_SPAWNED_DICE_TABLE[dice_index].isDestroyed() then
        ATK_SPAWNED_DICE_TABLE[dice_index].destruct()
      end
    end
    ATK_SPAWNED_DICE_TABLE = {}
  elseif isAttacker == false then
    -- Despawn any existing spawned dice.
    for dice_index=1, #DEF_SPAWNED_DICE_TABLE do
      -- Delete the dice.
      DEF_SPAWNED_DICE_TABLE[dice_index].destruct()
    end
    DEF_SPAWNED_DICE_TABLE = {}
  else
    -- Despawn both tables.
    for dice_index=1, #ATK_SPAWNED_DICE_TABLE do
      -- Delete the dice.
      if not ATK_SPAWNED_DICE_TABLE[dice_index].isDestroyed() then
        ATK_SPAWNED_DICE_TABLE[dice_index].destruct()
      end
    end
    ATK_SPAWNED_DICE_TABLE = {}

    for dice_index=1, #DEF_SPAWNED_DICE_TABLE do
      -- Delete the dice.
      if not DEF_SPAWNED_DICE_TABLE[dice_index].isDestroyed() then
        DEF_SPAWNED_DICE_TABLE[dice_index].destruct()
      end
    end
    DEF_SPAWNED_DICE_TABLE = {}
  end
end

-- Shows auto roll buttons.
function showAutoRollButtons(visible)
  -- Check if auto rollers are enabled.
  local rivalEventPokeball = getObjectFromGUID("432e69")
  if not rivalEventPokeball then
    print("Failed to find Rival Event Pokeball")
  end

  -- Ensure auto rollers are enabled.
  local roller_type = rivalEventPokeball.call("get_auto_roller_type")
  if roller_type == 0 then 
    -- AutoRollers are not enabled. Hide everything.
    -- Hide Autoroll Attacker.
    edit_button(BUTTON_ID.autoRollAttacker, { position={autoRollAtkPos.x, 1000, autoRollAtkPos.z}})
    edit_button(BUTTON_ID.autoRollAtkBlue, { position={autoRollAtkDicePos.blue.x, 1000, autoRollAtkDicePos.blue.z}})
    edit_button(BUTTON_ID.autoRollAtkWhite, { position={autoRollAtkDicePos.white.x, 1000, autoRollAtkDicePos.white.z}})
    edit_button(BUTTON_ID.autoRollAtkPurple, { position={autoRollAtkDicePos.purple.x, 1000, autoRollAtkDicePos.purple.z}})
    edit_button(BUTTON_ID.autoRollAtkRed, { position={autoRollAtkDicePos.red.x, 1000, autoRollAtkDicePos.red.z}})
    -- Show/Hide Autoroll Defender.
    edit_button(BUTTON_ID.autoRollDefender, { position={autoRollDefPos.x, 1000, autoRollDefPos.z}})
    edit_button(BUTTON_ID.autoRollDefBlue, { position={autoRollDefDicePos.blue.x, 1000, autoRollDefDicePos.blue.z}})
    edit_button(BUTTON_ID.autoRollDefWhite, { position={autoRollDefDicePos.white.x, 1000, autoRollDefDicePos.white.z}})
    edit_button(BUTTON_ID.autoRollDefPurple, { position={autoRollDefDicePos.purple.x, 1000, autoRollDefDicePos.purple.z}})
    edit_button(BUTTON_ID.autoRollDefRed, { position={autoRollDefDicePos.red.x, 1000, autoRollDefDicePos.red.z}})
  elseif roller_type == 3 or roller_type == 4 then
    -- Create some offsets and edit the button.
    local y_pos = visible and 0.5 or 1000
    -- Hide Autoroll Attacker.
    edit_button(BUTTON_ID.autoRollAttacker, { position={autoRollAtkPos.x, 1000, autoRollAtkPos.z}})
    edit_button(BUTTON_ID.autoRollAtkBlue, { position={autoRollAtkDicePos.blue.x, 1000, autoRollAtkDicePos.blue.z}})
    edit_button(BUTTON_ID.autoRollAtkWhite, { position={autoRollAtkDicePos.white.x, 1000, autoRollAtkDicePos.white.z}})
    edit_button(BUTTON_ID.autoRollAtkPurple, { position={autoRollAtkDicePos.purple.x, 1000, autoRollAtkDicePos.purple.z}})
    edit_button(BUTTON_ID.autoRollAtkRed, { position={autoRollAtkDicePos.red.x, 1000, autoRollAtkDicePos.red.z}})
    -- Hide Autoroll Defender.
    edit_button(BUTTON_ID.autoRollDefender, { position={autoRollDefPos.x, 1000, autoRollDefPos.z}})
    edit_button(BUTTON_ID.autoRollDefBlue, { position={autoRollDefDicePos.blue.x, 1000, autoRollDefDicePos.blue.z}})
    edit_button(BUTTON_ID.autoRollDefWhite, { position={autoRollDefDicePos.white.x, 1000, autoRollDefDicePos.white.z}})
    edit_button(BUTTON_ID.autoRollDefPurple, { position={autoRollDefDicePos.purple.x, 1000, autoRollDefDicePos.purple.z}})
    edit_button(BUTTON_ID.autoRollDefRed, { position={autoRollDefDicePos.red.x, 1000, autoRollDefDicePos.red.z}})

    -- Despawn any existing spawned dice.
    despawnAutoRollDice()
  else
    -- Create some offsets and edit the buttons.
    local y_pos = visible and 0.5 or 1000
    -- Show/Hide Autoroll Attacker.
    edit_button(BUTTON_ID.autoRollAttacker, { position={autoRollAtkPos.x, y_pos, autoRollAtkPos.z}})
    edit_button(BUTTON_ID.autoRollAtkBlue, { position={autoRollAtkDicePos.blue.x, y_pos, autoRollAtkDicePos.blue.z}})
    edit_button(BUTTON_ID.autoRollAtkWhite, { position={autoRollAtkDicePos.white.x, y_pos, autoRollAtkDicePos.white.z}})
    edit_button(BUTTON_ID.autoRollAtkPurple, { position={autoRollAtkDicePos.purple.x, y_pos, autoRollAtkDicePos.purple.z}})
    edit_button(BUTTON_ID.autoRollAtkRed, { position={autoRollAtkDicePos.red.x, y_pos, autoRollAtkDicePos.red.z}})
    -- Show/Hide Autoroll Defender.
    edit_button(BUTTON_ID.autoRollDefender, { position={autoRollDefPos.x, y_pos, autoRollDefPos.z}})
    edit_button(BUTTON_ID.autoRollDefBlue, { position={autoRollDefDicePos.blue.x, y_pos, autoRollDefDicePos.blue.z}})
    edit_button(BUTTON_ID.autoRollDefWhite, { position={autoRollDefDicePos.white.x, y_pos, autoRollDefDicePos.white.z}})
    edit_button(BUTTON_ID.autoRollDefPurple, { position={autoRollDefDicePos.purple.x, y_pos, autoRollDefDicePos.purple.z}})
    edit_button(BUTTON_ID.autoRollDefRed, { position={autoRollDefDicePos.red.x, y_pos, autoRollDefDicePos.red.z}})

    -- Either way, reset the AutoRoll button counts.
    atkAutoRollCounts = {blue=0, white=1, purple=0, red=0}
    defAutoRollCounts = {blue=0, white=1, purple=0, red=0}
    updateAutoRollButtons()

    -- Despawn any existing spawned dice.
    despawnAutoRollDice()
  end
end

-- Shows move disable buttons isAttacker selects attacker/defender.
function showMoveDisableButtons(isAttacker, visible)
  local buttonIds
  local movesZPos
  local moves

  if isAttacker then
    buttonIds = {BUTTON_ID.atkMove1Disable, BUTTON_ID.atkMove2Disable, BUTTON_ID.atkMove3Disable, BUTTON_ID.atkMove4Disable}
    movesZPos = atkMoveDisableZPos
    moves = attackerPokemon and attackerPokemon.movesData or {}
  else
    buttonIds = {BUTTON_ID.defMove1Disable, BUTTON_ID.defMove2Disable, BUTTON_ID.defMove3Disable, BUTTON_ID.defMove4Disable}
    movesZPos = defMoveDisableZPos
    moves = defenderPokemon and defenderPokemon.movesData or {}
  end

  local numMoves = #moves
  local buttonWidths = (numMoves * 3.15) + ((numMoves - 1) + 0.45)
  local xPos = 9.415 - (buttonWidths * 0.49)
  local yPos = visible and 0.45 or 1000

  for i=1, #buttonIds do
    local buttonY = (visible and i <= numMoves) and yPos or 1000
    edit_button(buttonIds[i], {position={xPos + (3.75 * (i - 1)), buttonY, movesZPos}})
  end
end

-- Handles atk move 1 disable.
function atkMove1Disable()
  disableMove(1, ATTACKER)
end

-- Handles atk move 2 disable.
function atkMove2Disable()
  disableMove(2, ATTACKER)
end

-- Handles atk move 3 disable.
function atkMove3Disable()
  disableMove(3, ATTACKER)
end

-- Handles atk move 4 disable.
function atkMove4Disable()
  disableMove(4, ATTACKER)
end

-- Handles def move 1 disable.
function defMove1Disable()
  disableMove(1, DEFENDER)
end

-- Handles def move 2 disable.
function defMove2Disable()
  disableMove(2, DEFENDER)
end

-- Handles def move 3 disable.
function defMove3Disable()
  disableMove(3, DEFENDER)
end

-- Handles def move 4 disable.
function defMove4Disable()
  disableMove(4, DEFENDER)
end

-- Disable a move for a given side.
function disableMove(index, isAttacker)
  local pokemon = isAttacker and attackerPokemon or defenderPokemon
  if not pokemon or not pokemon.movesData or not pokemon.movesData[index] then
    return
  end

  -- Set the move to disabled.
  pokemon.movesData[index].status = DISABLED

  local data = isAttacker and attackerData or defenderData
  if data and data.selectedMoveIndex == index then
    clearSelectedMove(isAttacker)
  end

  showMoveDisableButtons(isAttacker, false)
  updateMoves(isAttacker, pokemon)
end

------------------------------
-- Autoroll Logic.
------------------------------

-- Helper function to roll some dice in the logs.
-- Returns the dice attack dice that were rolled. Only the highest count attack dice.
function auto_roll_logs(isAttacker, color)
  -- Save off the autoroll counts.
  local auto_roll_counts = isAttacker and atkAutoRollCounts or defAutoRollCounts

  -- Basic check.
  if auto_roll_counts.blue < 1 and auto_roll_counts.white < 1 and auto_roll_counts.purple < 1 and auto_roll_counts.red < 1 then return end

  -- Get a reference to the Record Keeper.
  local record_keeper = getObjectFromGUID(RECORD_KEEPER_GUID)

  -- Gather the blue D8 dice rolls.
  local blue_rolls = {}
  for roll=1, auto_roll_counts.blue do
    local value = math.random(1,8)
    if value == 8 then value = 6 end
    if value == 7 then value = 5 end
    table.insert(blue_rolls, value)

    -- Send the roll to the record keeper.
    if record_keeper and color ~= nil then
      record_keeper.call("record_dice_roll", { dice_type = "d8", value = value, player_name = Player[color].steam_name })
    end
  end
  if #blue_rolls > 0 then
    local roll_string = ""
    for index=1, #blue_rolls do
      roll_string = roll_string .. " " .. tostring(blue_rolls[index])
    end
    printToAll(roll_string, "Blue")
  end

  -- Gather the white D6 rolls.
  local white_rolls = {}
  for roll=1, auto_roll_counts.white do
    local value = math.random(1,6)
    table.insert(white_rolls, value)

    -- Send the roll to the record keeper.
    if record_keeper and color ~= nil then
      record_keeper.call("record_dice_roll", { dice_type = "whited6", value = value, player_name = Player[color].steam_name })
    end
  end
  if #white_rolls > 0 then
    local roll_string = ""
    for index=1, #white_rolls do
      roll_string = roll_string .. " " .. tostring(white_rolls[index])
    end
    printToAll(roll_string, "White")
  end

  -- Gather the purple D4 rolls.
  local purple_rolls = {}
  for roll=1, auto_roll_counts.purple do
    local value = math.random(1,4)
    table.insert(purple_rolls, value)

    -- Send the roll to the record keeper.
    if record_keeper and color ~= nil then
      record_keeper.call("record_dice_roll", { dice_type = "d4", value = value, player_name = Player[color].steam_name })
    end
  end
  if #purple_rolls > 0 then
    local roll_string = ""
    for index=1, #purple_rolls do
      roll_string = roll_string .. " " .. tostring(purple_rolls[index])
    end
    printToAll(roll_string, "Purple")
  end

  -- Gather the red D6 rolls.
  local red_rolls = {}
  for roll=1, auto_roll_counts.red do
    local value = math.random(1,6)
    table.insert(red_rolls, value)

    -- Send the roll to the record keeper.
    if record_keeper and color ~= nil then
      record_keeper.call("record_dice_roll", { dice_type = "redd6", value = value, player_name = Player[color].steam_name })
    end
  end
  if #red_rolls > 0 then
    local roll_string = ""
    for index=1, #red_rolls do
      roll_string = roll_string .. " " .. tostring(red_rolls[index])
    end
    printToAll(roll_string, "Red")
  end

  -- Return the appropriate roll values.
  if #blue_rolls > 0 then
    return blue_rolls
  elseif #white_rolls > 0 then
    return white_rolls
  elseif #purple_rolls > 0 then
    return purple_rolls
  else
    return {}
  end
end

-- Helper function to auto roll some dice.
function auto_roll_dice(isAttacker, color)
  -- First, despawn the existing dice.
  despawnAutoRollDice(isAttacker)

  -- Save off the autoroll counts.
  local auto_roll_counts = isAttacker and atkAutoRollCounts or defAutoRollCounts

  -- Basic check.
  if auto_roll_counts.blue < 1 and auto_roll_counts.white < 1 and auto_roll_counts.purple < 1 and auto_roll_counts.red < 1 then return end

  -- Save off the table we need to use for the spawned dice.
  local spawned_dice_table = isAttacker and ATK_SPAWNED_DICE_TABLE or DEF_SPAWNED_DICE_TABLE

  -- Determine the location to roll the dice.
  local z_multiplier = isAttacker and -1.0 or 1.0

  -- Get a handle on the blue D8 bag.
  local d8Bag = getObjectFromGUID(critDice)
  -- Get the dice.
  for die_index=1, auto_roll_counts.blue do
    local auto_roller_position = auto_roller_positions[(#spawned_dice_table % #auto_roller_positions) + 1]
    local dice_position = {auto_roller_position[1], auto_roller_position[2], z_multiplier * auto_roller_position[3]}
    local dice = d8Bag.takeObject({position=dice_position, rotation={math.random(180), math.random(180), 0}})
    table.insert(spawned_dice_table, dice)
  end
  
  -- Get a handle on the white D6 bag.
  local d6Bag = getObjectFromGUID(d6Dice)
  -- Get the dice.
  for die_index=1, auto_roll_counts.white do
    local auto_roller_position = auto_roller_positions[(#spawned_dice_table % #auto_roller_positions) + 1]
    local dice_position = {auto_roller_position[1], auto_roller_position[2], z_multiplier * auto_roller_position[3]}
    local dice = d6Bag.takeObject({position=dice_position, rotation={math.random(180), math.random(180), 0}})
    table.insert(spawned_dice_table, dice)
  end

  -- Get a handle on the purple D4 bag.
  local d4Bag = getObjectFromGUID(d4Dice)
  -- Get the dice.
  for die_index=1, auto_roll_counts.purple do
    local auto_roller_position = auto_roller_positions[(#spawned_dice_table % #auto_roller_positions) + 1]
    local dice_position = {auto_roller_position[1], auto_roller_position[2], z_multiplier * auto_roller_position[3]}
    local dice = d4Bag.takeObject({position=dice_position, rotation={math.random(180), math.random(180), 0}})
    table.insert(spawned_dice_table, dice)
  end

  -- Get a handle on the red D6 bag.
  local effectBag = getObjectFromGUID(effectDice)
  -- Get the dice.
  for die_index=1, auto_roll_counts.red do
    local auto_roller_position = auto_roller_positions[(#spawned_dice_table % #auto_roller_positions) + 1]
    local dice_position = {auto_roller_position[1], auto_roller_position[2], z_multiplier * auto_roller_position[3]}
    local dice = effectBag.takeObject({position=dice_position, rotation={math.random(180), math.random(180), 0}})
    table.insert(spawned_dice_table, dice)
  end

  -- Roll all the dice a few times.
  for i, dice in pairs(spawned_dice_table) do
    for temp_i=0, 4 do 
      Wait.time(
        function()
          if not dice.isDestroyed() then dice.roll() end
        end, 
        1.5 + (temp_i * 0.25)
      )
    end
  end

  -- Get a reference to the Record Keeper.
  local record_keeper = getObjectFromGUID(RECORD_KEEPER_GUID)

  -- Report the dice rolls to the Record Keeper.
  if record_keeper and color ~= nil then
    for i, dice in pairs(spawned_dice_table) do
      -- Wait until the die is idle.
      Wait.condition(
        function() -- Conditional function.
          local dice_type = dice.getDescription()
          local value = dice.getRotationValue()
          -- Adjust D8 values for crit dice.
          if dice_type == "d8" then
            if value == 6 then
              value = 5
            elseif value == 7 or value == 8 then
              value = 6
            end
          end
          record_keeper.call("record_dice_roll", { dice_type = dice_type, value = value, player_name = Player[color].steam_name })
        end,
        function() -- Condition function
          return dice.resting
        end,
        30,
        function() -- Timeout function.
          print("Timeout exceeded waiting for dice to come to a stop.")
        end
      )
    end
  end
end

-- AutoRoll for the Attacker.
function autoRollAttacker(obj, color, alt)
  -- If a player other than the designated trainer clicks the button, ignore it.
  if attackerData.playerColor and attackerData.playerColor ~= color then return end

  -- Check if auto rollers are enabled.
  local rivalEventPokeball = getObjectFromGUID("432e69")
  if not rivalEventPokeball then
    print("Failed to find Rival Event Pokeball")
    return
  end
  -- Check that we have values to AutoRoll.
  if atkAutoRollCounts.blue == 0 and atkAutoRollCounts.white == 0 and atkAutoRollCounts.purple == 0 and atkAutoRollCounts.red == 0 then return end

  -- See what auto roller is being used.
  local auto_roller = rivalEventPokeball.call("get_auto_roller_type")
  
  -- Logs AutoRoller.
  if auto_roller == 1 then
    -- Get the player's Steam name.
    local player_name = color
    if Player[color].steam_name then
        player_name = Player[color].steam_name
    end

    -- Print the results.
    printToAll("Attacker " .. player_name .. " rolled: ")
    auto_roll_logs(ATTACKER, color)
  -- Dice AutoRoller.
  elseif auto_roller == 2 then
    -- Roll physical dice.
    auto_roll_dice(ATTACKER, color)
  end
end

-- Handles adjust atk dice blue.
function adjustAtkDiceBlue(obj, color, alt)
  -- Despawn existing dice.
  despawnAutoRollDice(ATTACKER)

  -- Set all other attacker colors to 0.
  atkAutoRollCounts.white = 0
  atkAutoRollCounts.red = 0
  atkAutoRollCounts.purple = 0

  -- Adjust the button value.
  if alt then
    atkAutoRollCounts.blue = atkAutoRollCounts.blue - 1
  else
    atkAutoRollCounts.blue = atkAutoRollCounts.blue + 1
  end

  -- Prevent negative values.
  if atkAutoRollCounts.blue < 0 then
    atkAutoRollCounts.blue = 0
  end

  -- Update the buttons.
  updateAutoRollButtons(ATTACKER)
end

-- Handles adjust atk dice white.
function adjustAtkDiceWhite(obj, color, alt)
  -- Despawn existing dice.
  despawnAutoRollDice(ATTACKER)

  -- Set all other attacker colors to 0.
  atkAutoRollCounts.blue = 0
  atkAutoRollCounts.red = 0
  atkAutoRollCounts.purple = 0

  -- Adjust the button value.
  if alt then
    atkAutoRollCounts.white = atkAutoRollCounts.white - 1
  else
    atkAutoRollCounts.white = atkAutoRollCounts.white + 1
  end

  -- Prevent negative values.
  if atkAutoRollCounts.white < 0 then
    atkAutoRollCounts.white = 0
  end

  -- Update the buttons.
  updateAutoRollButtons(ATTACKER)
end

-- Handles adjust atk dice purple.
function adjustAtkDicePurple(obj, color, alt)
  -- Despawn existing dice.
  despawnAutoRollDice(ATTACKER)

  -- Set all other attacker colors to 0.
  atkAutoRollCounts.blue = 0
  atkAutoRollCounts.white = 0
  atkAutoRollCounts.red = 0

  -- Adjust the button value.
  if alt then
    atkAutoRollCounts.purple = atkAutoRollCounts.purple - 1
  else
    atkAutoRollCounts.purple = atkAutoRollCounts.purple + 1
  end

  -- Prevent negative values.
  if atkAutoRollCounts.purple < 0 then
    atkAutoRollCounts.purple = 0
  end

  -- Update the buttons.
  updateAutoRollButtons(ATTACKER)
end

-- Rolls atk effect die.
function rollAtkEffectDie(obj, color, alt)
  -- Despawn existing dice.
  despawnAutoRollDice(ATTACKER)

  -- Track the previous dice counts.
  local previousDiceCounts = atkAutoRollCounts

  -- Adjust the die counts.
  atkAutoRollCounts = {purple=0, white=0, blue=0, red=1}

  -- Roll the dice.
  autoRollAttacker(obj, color, alt)
  
  -- Fix the dice counts.
  atkAutoRollCounts = previousDiceCounts
end

-- AutoRoll for the Defender.
function autoRollDefender(obj, color, alt)
  -- If a player other than the designated trainer clicks the button, ignore it.
  if defenderData.playerColor and defenderData.playerColor ~= color then return end
  
  -- Check if auto rollers are enabled.
  local rivalEventPokeball = getObjectFromGUID("432e69")
  if not rivalEventPokeball then
    print("Failed to find Rival Event Pokeball")
  end

  -- Check that we have values to AutoRoll.
  if defAutoRollCounts.blue == 0 and defAutoRollCounts.white == 0 and defAutoRollCounts.purple == 0 and defAutoRollCounts.red == 0 then return end

  -- See what auto roller is being used.
  local auto_roller = rivalEventPokeball.call("get_auto_roller_type")

  -- Logs AutoRoller.
  if auto_roller == 1 then
    -- Get the player's Steam name.
    local player_name = color
    if Player[color].steam_name then
        player_name = Player[color].steam_name
    end

    -- Print the results.
    printToAll("Defender " .. player_name .. " rolled: ")
    auto_roll_logs(DEFENDER, color)
  -- Dice AutoRoller.
  elseif auto_roller == 2 then
    -- Roll physical dice.
    auto_roll_dice(DEFENDER, color)
  end
end

-- Handles adjust def dice blue.
function adjustDefDiceBlue(obj, color, alt)
  -- Despawn existing dice.
  despawnAutoRollDice(DEFENDER)

  -- Set all other attacker colors to 0.
  defAutoRollCounts.white = 0
  defAutoRollCounts.red = 0
  defAutoRollCounts.purple = 0

  -- Adjust the button value.
  if alt then
    defAutoRollCounts.blue = defAutoRollCounts.blue - 1
  else
    defAutoRollCounts.blue = defAutoRollCounts.blue + 1
  end

  -- Prevent negative values.
  if defAutoRollCounts.blue < 0 then
    defAutoRollCounts.blue = 0
  end

  -- Update the buttons.
  updateAutoRollButtons(DEFENDER)
end

-- Handles adjust def dice white.
function adjustDefDiceWhite(obj, color, alt)
  -- Despawn existing dice.
  despawnAutoRollDice(DEFENDER)

  -- Set all other attacker colors to 0.
  defAutoRollCounts.blue = 0
  defAutoRollCounts.red = 0
  defAutoRollCounts.purple = 0

  -- Adjust the button value.
  if alt then
    defAutoRollCounts.white = defAutoRollCounts.white - 1
  else
    defAutoRollCounts.white = defAutoRollCounts.white + 1
  end

  -- Prevent negative values.
  if defAutoRollCounts.white < 0 then
    defAutoRollCounts.white = 0
  end

  -- Update the buttons.
  updateAutoRollButtons(DEFENDER)
end

-- Handles adjust def dice purple.
function adjustDefDicePurple(obj, color, alt)
  -- Despawn existing dice.
  despawnAutoRollDice(DEFENDER)

  -- Set all other attacker colors to 0.
  defAutoRollCounts.blue = 0
  defAutoRollCounts.white = 0
  defAutoRollCounts.red = 0

  -- Adjust the button value.
  if alt then
    defAutoRollCounts.purple = defAutoRollCounts.purple - 1
  else
    defAutoRollCounts.purple = defAutoRollCounts.purple + 1
  end

  -- Prevent negative values.
  if defAutoRollCounts.purple < 0 then
    defAutoRollCounts.purple = 0
  end

  -- Update the buttons.
  updateAutoRollButtons(DEFENDER)
end

-- Rolls def effect die.
function rollDefEffectDie(obj, color, alt)
  -- Despawn existing dice.
  despawnAutoRollDice(DEFENDER)

  -- Track the previous dice counts.
  local previousDiceCounts = defAutoRollCounts

  -- Adjust the die counts.
  defAutoRollCounts = {purple=0, white=0, blue=0, red=1}

  -- Roll the dice.
  autoRollDefender(obj, color, alt)
  
  -- Fix the dice counts.
  defAutoRollCounts = previousDiceCounts
end

-- Updates the selected AutoRoll buttons. Pass nil to update all.
function updateAutoRollButtons(isAttacker)
  if isAttacker then
    -- Update Attacker only.
    edit_button(BUTTON_ID.autoRollAtkBlue, { label=atkAutoRollCounts.blue})
    edit_button(BUTTON_ID.autoRollAtkWhite, { label=atkAutoRollCounts.white})
    edit_button(BUTTON_ID.autoRollAtkPurple, { label=atkAutoRollCounts.purple})
  elseif isAttacker == false then
    -- Update Defender only.
    edit_button(BUTTON_ID.autoRollDefBlue, { label=defAutoRollCounts.blue})
    edit_button(BUTTON_ID.autoRollDefWhite, { label=defAutoRollCounts.white})
    edit_button(BUTTON_ID.autoRollDefPurple, { label=defAutoRollCounts.purple})
  else
    -- Both. Used when no arguement is given.
    -- Attacker.
    edit_button(BUTTON_ID.autoRollAtkBlue, { label=atkAutoRollCounts.blue})
    edit_button(BUTTON_ID.autoRollAtkWhite, { label=atkAutoRollCounts.white})
    edit_button(BUTTON_ID.autoRollAtkPurple, { label=atkAutoRollCounts.purple})
    -- Defender.
    edit_button(BUTTON_ID.autoRollDefBlue, { label=defAutoRollCounts.blue})
    edit_button(BUTTON_ID.autoRollDefWhite, { label=defAutoRollCounts.white})
    edit_button(BUTTON_ID.autoRollDefPurple, { label=atkAutoRollCounts.purple})
  end
end

-- Helper function to clear Field Effects for a said (or both, if isAttacker is nil).
-- NOTE: Active Field Effects table format: { name = field_effect_ids.effect, guid = XXXXXX } in attackerData/defenderData.
-- Recalling a Pokemon loses reference to existing Field Effects.
function clearExistingFieldEffects(isAttacker)
  if isAttacker ~= nil then
    -- Check if this side has an active effect.
    local arena_effect = isAttacker and atkFieldEffect or defFieldEffect

    -- If this side has a current effect, put the tile away and clear it.
    if arena_effect.guid then
      -- Get the tile.
      local tile = getObjectFromGUID(arena_effect.guid)
      if tile then
        -- Get the tile's original location and set it.
        local tile_location = field_effect_tile_data[arena_effect.guid].position
        tile.setPosition(tile_location)
      end
    end

    -- Clear the data regardless.
    if isAttacker then
      atkFieldEffect = { name = nil, guid = nil }
    else
      defFieldEffect = { name = nil, guid = nil }
    end
  else
    local arena_effects_table = { atkFieldEffect, defFieldEffect }
    for effect_index=1, #arena_effects_table do
      -- Check if this side has an effect.
      if arena_effects_table[effect_index].guid then
        -- Get the tile.
        local tile = getObjectFromGUID(arena_effects_table[effect_index].guid)
        if tile then
          -- Get the tile's original location and set it.
          local tile_location = field_effect_tile_data[arena_effects_table[effect_index].guid].position
          tile.setPosition(tile_location)
        end
      end

      -- Clear the data regardless.
      atkFieldEffect = { name = nil, guid = nil }
      defFieldEffect = { name = nil, guid = nil }
    end 
  end
end

-- Helper function to get a booster for a Gym Leader, etc.
function getBooster(isAttacker, boosterName)
  -- TODO: With the expansion of boosters, boosterName is currently not considered.
  --       Previously, we iterated through the boosters until we found one with its name.

  -- Get a booster from a random position in the booster deck.
  local card_index = nil
  local positionTable = isAttacker and attackerPos or defenderPos
  local arenaPokemon = isAttacker and attackerPokemon or defenderPokemon

  -- Randomly select a card from the DeckBuilder "booster" types.
  local deckBuilder = getObjectFromGUID(DECK_BUILDER_GUID)
  if not deckBuilder then print("Failed to find Deck Builder, cannot create booster") end

  -- Determine what kind of booster we are snagging.
  local booster_choice = math.random(1,100)

  -- Get the pokemon and arena info.
  local pokemonData = isAttacker and attackerData or defenderData
  local arenaData = isAttacker and attackerPokemon or defenderPokemon

  -- If the Gym Leader, etc is already Tera, they are not elgible for another attach item - only one-time boosters.
  if arenaPokemon.teraActive then
      -- Get the Booster info.
    local booster_options = deckBuilder.call("get_one_time_gym_booster_info")
    local one_time_booster_data = copyTable(booster_options[math.random(1, #booster_options)])

    -- Generate the card using DeckBuilder's create_card().
    local position = copyTable(positionTable)
    local params = { card_data=one_time_booster_data, offset=false, position={position.booster[1], 1.5, position.booster[2]}, rotation={0,180,0} }
    local booster_guid = deckBuilder.call("create_card", params)

    -- Log it and save the GUID.
    printToAll(arenaData.name .. " has a " .. one_time_booster_data.name .. "!")
    pokemonData.boosterGuid = booster_guid
  elseif booster_choice < 71 then
    -- Get the Booster info.
    local booster_options = deckBuilder.call("get_gym_booster_info")
    local booster_data = copyTable(booster_options[math.random(1, #booster_options)])

    -- Generate the card using DeckBuilder's create_card().
    local position = copyTable(positionTable)
    local params = { card_data=booster_data, offset=false, position={position.booster[1], 1.5, position.booster[2]}, rotation={0,180,0} }
    local booster_guid = deckBuilder.call("create_card", params)

    -- Add card data to the pokemon data if applicable.
    if params.card_data.name == "Vitamin" then
      arenaData.vitamin = true
      pokemonData.vitamin = true
    end

    -- Log it and save the GUID.
    printToAll(arenaData.name .. " has a " .. booster_data.name .. "!")
    pokemonData.boosterGuid = booster_guid
  elseif booster_choice < 86 then
    -- TM.
    local tm_deck = getObjectFromGUID("68d25d")
    if tm_deck == nil then
      print("Failed to get TM deck via GUID 68d25d")
      return
    end

    -- Take a card from the TM deck.
    card_index = math.random(1, #tm_deck.getObjects())
    local booster = tm_deck.takeObject({index=card_index, position = {positionTable.booster[1], 1.5, positionTable.booster[2]}, rotation={0,180,0}})
    local data = isAttacker and attackerData or defenderData
    local arenaData = isAttacker and attackerPokemon or defenderPokemon
    printToAll(arenaData.name .. " has a TM!")

    -- Update the return data.
    data.boosterGuid = booster.getGUID()
    data.boosterReturnDeckGuid = "68d25d"

    -- Update the data.
    data.tmCard = true
  else
    -- Teratype.
    local tera_deck = getObjectFromGUID("0b44ce")
    if tera_deck == nil then
      print("Failed to get Tera deck via GUID 0b44ce")
      return
    end

    -- Take a card from the TM deck.
    card_index = math.random(1, #tera_deck.getObjects())
    local booster = tera_deck.takeObject({index=card_index, position = {positionTable.booster[1], 1.5, positionTable.booster[2]}, rotation={0,180,0}})
    local tera_data = Global.call("GetTeraDataByGUID", booster.getGUID())
    local arenaData = isAttacker and attackerPokemon or defenderPokemon
    printToAll(arenaData.name .. " has the " .. tera_data.type .. " Tera!")

    -- Update the return data.
    local data = isAttacker and attackerData or defenderData
    data.boosterGuid = booster.getGUID()
    data.boosterReturnDeckGuid = "0b44ce"

    -- Update the data.
    data.teraType = true
  end
end

-- After a Gym Leader, etc. is recalled we need to discard their booster.
function discardBooster(isAttacker)
  -- Delete the booster file if we generated. Otherwise, shuffle it back into the return deck.
  local data = isAttacker and attackerData or defenderData
  local booster = getObjectFromGUID(data.boosterGuid)
  if booster then
    if data.boosterReturnDeckGuid == nil then
      destroyObject(booster)
    else
      local deck = getObjectFromGUID(data.boosterReturnDeckGuid)
      deck.putObject(booster)
      deck.shuffle()
    end
  end
  
  -- Reset the booster GUID and arena data.
  data.boosterGuid = nil
  data.boosterReturnDeckGuid = nil
  data.tmCard = nil
  data.teraType = nil
  data.vitamin = nil
  data.attackValue.item = 0
  
  local arenaData = isAttacker and attackerPokemon or defenderPokemon
  if arenaData then
    arenaData.vitamin = nil
  end
end

-- Helper function to send a Health Indicator to the arena.
function cloneTempHpRuleHealthIndicatorToArena(isAttacker, healthValue)
  -- Save a copy of the data to modify.
  local data = isAttacker and attackerData or defenderData
  local position = isAttacker and attackerPos.healthIndicator or defenderPos.healthIndicator

  -- Take out the original health indicator object.
  local original_health_indicator = getObjectFromGUID(BASE_HEALTH_OBJECT_GUID)

  -- Get a handle on the health indicator object.
  local cloned_health_indicator = original_health_indicator.clone()
  if cloned_health_indicator then
    -- Move the indicator.
    cloned_health_indicator.setPosition(position)
    cloned_health_indicator.setRotation({0, 180, 0})

    -- Once the indicator is resting, lock it.
    Wait.time(
      function()
        cloned_health_indicator.setLock(true)

        -- Set the counter's health.
        if healthValue then
          cloned_health_indicator.call("setValue", healthValue)
        end
      end,
      2
    )

    -- Save off the GUID.
    data.health_indicator_guid = cloned_health_indicator.guid
  end
end

-- Helper function to destroy a temporary Health Indicator.
function destroyTempHealthIndicator(isAttacker)
  local health_indicator = getObjectFromGUID(isAttacker and attackerData.health_indicator_guid or defenderData.health_indicator_guid)
  if health_indicator then
    -- Delete the health indicator.
    destroyObject(health_indicator)
  end
end

--[[ Status card helpers for arena. ]]

function moveStatusButtons(visible)
  -- Determine the elevation of the buttons based on the visible paramter.
  local yStatusPos = visible and 0.3 or 1000

  -- Show the status card buttons for the Attacker.
  edit_button(BUTTON_ID.atkStatusCurse, { position={curseAtkPos.x, yStatusPos, curseAtkPos.z}})
  edit_button(BUTTON_ID.atkStatusBurn, { position={burnAtkPos.x, yStatusPos, burnAtkPos.z}})
  edit_button(BUTTON_ID.atkStatusPoison, { position={poisonAtkPos.x, yStatusPos, poisonAtkPos.z}})
  edit_button(BUTTON_ID.atkStatusSleep, { position={sleepAtkPos.x, yStatusPos, sleepAtkPos.z}})
  edit_button(BUTTON_ID.atkStatusParalysis, { position={paralysisAtkPos.x, yStatusPos, paralysisAtkPos.z}})
  edit_button(BUTTON_ID.atkStatusFrozen, { position={frozenAtkPos.x, yStatusPos, frozenAtkPos.z}})
  edit_button(BUTTON_ID.atkStatusConfuse, { position={confusedAtkPos.x, yStatusPos, confusedAtkPos.z}})

  -- Show the status card buttons for the Defender.
  edit_button(BUTTON_ID.defStatusCurse, { position={curseDefPos.x, yStatusPos, curseDefPos.z}})
  edit_button(BUTTON_ID.defStatusBurn, { position={burnDefPos.x, yStatusPos, burnDefPos.z}})
  edit_button(BUTTON_ID.defStatusPoison, { position={poisonDefPos.x, yStatusPos, poisonDefPos.z}})
  edit_button(BUTTON_ID.defStatusSleep, { position={sleepDefPos.x, yStatusPos, sleepDefPos.z}})
  edit_button(BUTTON_ID.defStatusParalysis, { position={paralysisDefPos.x, yStatusPos, paralysisDefPos.z}})
  edit_button(BUTTON_ID.defStatusFrozen, { position={frozenDefPos.x, yStatusPos, frozenDefPos.z}})
  edit_button(BUTTON_ID.defStatusConfuse, { position={confusedDefPos.x, yStatusPos, confusedDefPos.z}})
end

-- Applies cursed attacker.
function applyCursedAttacker()
  addStatus(ATTACKER, status_ids.curse)
end

-- Applies burned attacker.
function applyBurnedAttacker()
  addStatus(ATTACKER, status_ids.burn)
end

-- Applies poisoned attacker.
function applyPoisonedAttacker()
  addStatus(ATTACKER, status_ids.poison)
end

-- Applies sleep attacker.
function applySleepAttacker()
  addStatus(ATTACKER, status_ids.sleep)
end

-- Applies paralyzed attacker.
function applyParalyzedAttacker()
  addStatus(ATTACKER, status_ids.paralyze)
end

-- Applies frozen attacker.
function applyFrozenAttacker()
  addStatus(ATTACKER, status_ids.freeze)
end

-- Applies confusion attacker.
function applyConfusionAttacker()
  addStatus(ATTACKER, status_ids.confuse)
end

-- Applies cursed defender.
function applyCursedDefender()
  addStatus(DEFENDER, status_ids.curse)
end

-- Applies burned defender.
function applyBurnedDefender()
  addStatus(DEFENDER, status_ids.burn)
end

-- Applies poisoned defender.
function applyPoisonedDefender()
  addStatus(DEFENDER, status_ids.poison)
end

-- Applies sleep defender.
function applySleepDefender()
  addStatus(DEFENDER, status_ids.sleep)
end

-- Applies paralyzed defender.
function applyParalyzedDefender()
  addStatus(DEFENDER, status_ids.paralyze)
end

-- Applies frozen defender.
function applyFrozenDefender()
  addStatus(DEFENDER, status_ids.freeze)
end

-- Applies confusion defender.
function applyConfusionDefender()
  addStatus(DEFENDER, status_ids.confuse)
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
