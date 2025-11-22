SHOP_DECK_GUID = "272b2d"
BOOSER_DECK_GUID = "b66e98"

PLAYER_COIN_GUIDS = {
  Yellow = "b08b0e",
  Green = "fe0861",
  Blue = "92cb92",
  Red = "252975",
  Purple = "b15f1b",
  Orange = "68de04"
}

CARDS = {
  -- Left.
  poke_ball = { name = "Poke Ball", cost = 4, desc = "- Poké Ball: Before rolling to catch a Pokémon, play this card to add 1 to your catch roll." },
  great_ball = { name = "Great Ball", cost = 8, desc = "- Great Ball: Before rolling to catch a Pokémon, play this card to add 2 to your catch roll." },
  ultra_ball = { name = "Ultra Ball", cost = 12, desc = "- Ultra Ball: Before rolling to catch a Pokémon, play this card to add 3 to your catch roll." },
  apricorn = { name = "Apricorn", cost = 8, desc = "- Apricorn: Draw 3 cards from the Poké Ball deck. Add 1 to your hand and place the rest on the bottom of the deck." },
  potion = { name = "Potion", cost = 4, desc = "- Potion: If Attached Pokémon is knocked out, discard this card and revive it immediately." },
  max_potion = { name = "Max Potion", cost = 8, desc = "- Max Potion: If Attached Pokémon is knocked out, discard this card and revive it immediately. You may also discard this card from your hand to revive a Pokémon at any time." },
  revive = { name = "Revive", cost = 6, desc = "- Revive: Revive 1 knocked out Pokémon in your team." },
  max_revive = { name = "Max Revive", cost = 16, desc = "- Max Revive: Revive up to 4 Pokémon on your team." },
  full_heal = { name = "Full Heal", cost = 2, desc = "- Full Heal: Remove a status condition from 1 of your Pokémon." },
  escape_rope = { name = "Escape Rope", cost = 2, desc = "- Escape Rope: Move your trainer pawn to the same space as your Current Home token. Your movement phase in unaffected." },
  bicycle = { name = "Bicycle", cost = 18, desc = "- Bicycle: Double your movement for the turn. You may end your movement on any space you enter." },
  poke_doll = { name = "Poke Doll", cost = 4, desc = "- Poké Doll: Play this card at the beginning of any battle round to immediately end the battle. No rewards are given to either side." },
  berry = { name = "Berry", cost = 8, desc = "- Berry: Discard this card to remove a status condition from the attached Pokémon or to re-roll their attack roll." },
  -- Right.
  boost_item = { name = "Boost Item", cost = 4, desc = "- Boost Item: Draw a battle booster item at random." },
  vitamin = { name = "Vitamin", cost = 30, desc = "- Vitamin: Add 1 to the final attack value of the attached Pokémon." },
  -- legendary_evo_item (12)
  tm = { name = "Technical Machine", cost = 16, desc = "- Technical Machine: Draw 3 cards from the TM deck. Select 1 to keep, then shuffle the other 2 back into the deck." },
  type_enhancer = { name = "Type Enhancer", cost = 12, desc = "- Type Enhancer: Draw 3 cards from the Type-Enhancer deck. Select 1 to keep and then place the rest on the bottom of the deck." },
  mega_bracelet = { name = "Mega Bracelet", cost = 10, desc = "- Mega Bracelet: In a battle round, prior to either side selecting attacks, you may Mega Evolve your active Pokémon if it has a Mega Stone attached. You may only Mega Evolve one Pokémon per battle." },
  mega_stone = { name = "Mega Stone", cost = 4, desc = "- Mega Stone: You may only attach this to Pokémon capable of Mega Evolution. If this Pokémon Mega Evolves, it returns to its original state at the end of battle. Level gains for this Pokémon are given relative to its original state." },
  z_ring = { name = "Z-Ring", cost = 12, desc = "- Z-Ring: Draw 3 cards from the Z-Ring deck. Add 1 to your hand and then place the rest on the bottom of the deck." },
  dynamax_band = { name = "Dynamax Band", cost = 20, desc = "- Dynamax Band: In a battle round, prior to selecting attacks, you may Dynamax your non-Mega Evolved active Pokémon. Dynamaxed Pokémon moves become Max Moves (refer to Max Moves sheet for full rules) for the rest of the battle. Pokémon with the Gigantamax sysmbol may Gigantamax instead. They change into their Gigantamax state for the battle, then return to their original state. You may only Dynamax or Gigantamax once per battle." },
  tera_orb = { name = "Tera Orb", cost = 18, desc = "- Tera Orb: Draw 3 cards from the Tera-Type deck. Add 1 to your hand and then place the rest on the bottom of the deck."},
  running_shoes = { name = "Running Shoes", cost = 4, desc = "- Running Shoes: Play this card to add 1 or 2 to your movement roll." },
  repel = { name = "Repel", cost = 4, desc = "- Repel: When revealing a wild Pokémon, you may play this card to draw 2 more tokens of the same color and replace the revealed Pokémon with either." },
  black_flute = { name = "Black Flute", cost = 8, desc = "- Black Flute: You may play this card at the beginning of a wild battle to increase the level of the wild Pokémon to match the level of your Pokémon in play. Their level returns to normal at the end of the battle." }
}

-- Button constants.
BUTTON_LEFT_X = -0.4
BUTTON_RIGHT_X = 0.65
BUTTON_Y = 0.15

function onLoad()
  -- Remove tooltip for the chart.
  self.tooltip = false

  -- Create the purchase buttons.
  create_buttons()
end

function create_buttons()
  self.createButton({ -- Pokeball.
    click_function="purchase_pokeball",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, -1.2}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.poke_ball.name
  })

  self.createButton({ -- Great ball.
    click_function="purchase_great_ball",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, -1.0}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.great_ball.name
  })

  self.createButton({ -- Ultra ball.
    click_function="purchase_ultra_ball",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, -0.8}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.ultra_ball.name
  })

  self.createButton({ -- Apricorn.
    click_function="purchase_apricorn",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, -0.55}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.apricorn.name
  })

  self.createButton({ -- Potion.
    click_function="purchase_potion",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, -0.35}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.potion.name
  })

  self.createButton({ -- Max Potion.
    click_function="purchase_max_potion",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, -0.15}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.max_potion.name
  })

  self.createButton({ -- Revive.
    click_function="purchase_revive",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, 0.05}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.revive.name
  })

  self.createButton({ -- Max Revive.
    click_function="purchase_max_revive",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, 0.3}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.max_revive.name
  })

  self.createButton({ -- Full Heal.
    click_function="purchase_full_heal",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, 0.55}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.full_heal.name
  })

  self.createButton({ -- Escape Rope.
    click_function="purchase_escape_rope",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, 0.75}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.escape_rope.name
  })

  self.createButton({ -- Bicycle.
    click_function="purchase_bicycle",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, 0.95}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.bicycle.name
  })

  self.createButton({ -- Poke Doll.
    click_function="purchase_poke_doll",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, 1.2}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.poke_doll.name
  })

  self.createButton({ -- Berry.
    click_function="purchase_berry",
    function_owner=self,
    position={BUTTON_LEFT_X, BUTTON_Y, 1.4}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.berry.name
  })

  self.createButton({ -- Boost Items.
    click_function="purchase_boost_item",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, -1.2}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.boost_item.name
  })

  self.createButton({ -- Vitamin.
    click_function="purchase_vitamin",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, -1.0}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.vitamin.name
  })

  self.createButton({ -- Legendary Evo.
    click_function="purchase_legendary_evo",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, -0.8}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase Legendary Evo"
  })

  self.createButton({ -- Technical Machine.
    click_function="purchase_tm",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, -0.58}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.tm.name
  })

  self.createButton({ -- Type Enhancer.
    click_function="purchase_type_enhancer",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, -0.35}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.type_enhancer.name
  })

  self.createButton({ -- Mega Bracelet.
    click_function="purchase_mega_bracelet",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, -0.15}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.mega_bracelet.name
  })

  self.createButton({ -- Mega Stone.
    click_function="purchase_mega_stone",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, 0.1}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.mega_stone.name
  })

  self.createButton({ -- Z-Ring.
    click_function="purchase_z_ring",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, 0.3}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.z_ring.name
  })

  self.createButton({ -- Dynamax Band.
    click_function="purchase_dynamax_band",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, 0.53}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.dynamax_band.name
  })

  self.createButton({ -- Tera Orb.
    click_function="purchase_tera_orb",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, 0.75}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.tera_orb.name
  })

  self.createButton({ -- Running Shoes.
    click_function="purchase_running_shoes",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, 0.95}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.running_shoes.name
  })

  self.createButton({ -- Repel.
    click_function="purchase_repel",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, 1.2}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.repel.name
  })

  self.createButton({ -- Black Flute.
    click_function="purchase_black_flute",
    function_owner=self,
    position={BUTTON_RIGHT_X, BUTTON_Y, 1.4}, height=5, width=420, color={1,1,1,0},
    tooltip = "Purchase " .. CARDS.black_flute.name
  })
end

function purchase_pokeball(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.poke_ball)
  else
    printToAll(CARDS.poke_ball.desc)
  end
end

function purchase_great_ball(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.great_ball)
  else
    printToAll(CARDS.great_ball.desc)
  end
end

function purchase_ultra_ball(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.ultra_ball)
  else
    printToAll(CARDS.ultra_ball.desc)
  end
end

function purchase_apricorn(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.apricorn)
  else
    printToAll(CARDS.apricorn.desc)
  end
end

function purchase_potion(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.potion)
  else
    printToAll(CARDS.potion.desc)
  end
end

function purchase_max_potion(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.max_potion)
  else
    printToAll(CARDS.max_potion.desc)
  end
end

function purchase_revive(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.revive)
  else
    printToAll(CARDS.revive.desc)
  end
end

function purchase_max_revive(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.max_revive)
  else
    printToAll(CARDS.max_revive.desc)
  end
end

function purchase_full_heal(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.full_heal)
  else
    printToAll(CARDS.full_heal.desc)
  end
end

function purchase_escape_rope(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.escape_rope)
  else
    printToAll(CARDS.escape_rope.desc)
  end
end

function purchase_bicycle(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.bicycle)
  else
    printToAll(CARDS.bicycle.desc)
  end
end

function purchase_poke_doll(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.poke_doll)
  else
    printToAll(CARDS.poke_doll.desc)
  end
end

function purchase_berry(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.berry)
  else
    printToAll(CARDS.berry.desc)
  end
end

function purchase_boost_item(obj, player_color, alt_click)
  if not alt_click then
    purchase_booster(player_color)
  else
    printToAll(CARDS.boost_item.desc)
  end
end

function purchase_vitamin(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.vitamin)
  else
    printToAll(CARDS.vitamin.desc)
  end
end

function purchase_legendary_evo(obj, player_color, alt_click)
  printToAll("Purchasing Legendary Evo cards is not scripted. You gotta do this one yourself. :)", "Red")
end

function purchase_tm(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.tm)
  else
    printToAll(CARDS.tm.desc)
  end
end

function purchase_type_enhancer(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.type_enhancer)
  else
    printToAll(CARDS.type_enhancer.desc)
  end
end

function purchase_mega_bracelet(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.mega_bracelet)
  else
    printToAll(CARDS.mega_bracelet.desc)
  end
end

function purchase_mega_stone(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.mega_stone)
  else
    printToAll(CARDS.mega_stone.desc)
  end
end

function purchase_z_ring(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.z_ring)
  else
    printToAll(CARDS.z_ring.desc)
  end
end

function purchase_dynamax_band(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.dynamax_band)
  else
    printToAll(CARDS.dynamax_band.desc)
  end
end

function purchase_tera_orb(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.tera_orb)
  else
    printToAll(CARDS.tera_orb.desc)
  end
end

function purchase_running_shoes(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.running_shoes)
  else
    printToAll(CARDS.running_shoes.desc)
  end
end

function purchase_repel(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.repel)
  else
    printToAll(CARDS.repel.desc)
  end
end

function purchase_black_flute(obj, player_color, alt_click)
  if not alt_click then
    purchase_item(player_color, CARDS.black_flute)
  else
    printToAll(CARDS.black_flute.desc)
  end
end

-- Helper function to purchase an item.
function purchase_item(player_color, item_info)
  -- Get a handle on this player's Pokecoin counter.
  local player_pokecoin_counter = get_player_pokecoin_counter(player_color)
  if player_pokecoin_counter then
    -- Check if the player is rich enough.
    if check_if_player_has_enough(player_color, player_pokecoin_counter, item_info) then
      -- Attempt to get the card from the shop deck.
      get_card_from_shop_deck(player_color, item_info)
    end
  end
end

-- Helper function to get a player's Steam name.
function get_player_name(player_color)
  local player_name = player_color
  if Player[player_color].steam_name then
      player_name = Player[player_color].steam_name
  end
  return player_name
end

-- Helper function to get a handle on a player's Pokecoin counter.
function get_player_pokecoin_counter(player_color)
  local player_coin_counter_guid = PLAYER_COIN_GUIDS[player_color]
  if not player_coin_counter_guid then return nil end
  return getObjectFromGUID(player_coin_counter_guid)
end

-- Helper function to check if a player has an certain amount of couns.
function check_if_player_has_enough(player_color, counter_obj, item_info)
  local player_coin_count = counter_obj.call("getValue")
  if player_coin_count < item_info.cost then
    printToAll(get_player_name(player_color) .. " does not have enough Pokécoins to purchase a " .. item_info.name .. " (" .. item_info.cost .. ").", "Red")
    return false
  end

  return true
end

-- Helper function to take a specific card from the Shop Items deck and put it in the player's hand.
function get_card_from_shop_deck(player_color, item_info)
  -- Get a handle on the deck.
  local shop_deck = getObjectFromGUID(SHOP_DECK_GUID)
  if shop_deck then
    -- Enumerate the deck and search for one we care about.
    for _, card in ipairs(shop_deck.getObjects()) do
      if card.name == item_info.name then
        -- Take the original card from the Shope Deck and clone it.
        local base_card = shop_deck.takeObject({index = card.index})
        local base_card_guid = base_card.guid

        -- Wait until the original card loads.
        Wait.condition(
          function() -- Conditional function.
            local clone_card = base_card.clone()

            -- Wait until the clone card loads.
            Wait.condition(
              function() -- Conditional function.
                -- Deal the top card to the player.
                clone_card.deal(1, player_color)
                shop_deck.putObject(base_card)
    
                -- Log the purchase and adjust the Pokecoin counter value.
                printToAll(get_player_name(player_color) .. " purchased a " .. item_info.name .. " for " .. item_info.cost .. " Pokécoins.")
                if item_info.name == CARDS.vitamin.name then
                  printToAll("Purchasing a Vitamin is for cowards. ;)", "Pink")
                end
                local player_pokecoin_counter = get_player_pokecoin_counter(player_color)
                player_pokecoin_counter.call("adjustValue", -item_info.cost)

                -- Tabletop Sim is weird (or I am bad) and after this process, the base card appears to get cloned again 
                -- and *that* clone is what gets put into the deck. Why? I am not smart enough to understand the ways 
                -- of this engine. The original base gets set to the side and disfigured lol. Attempt to delete the base.
                local original_base = getObjectFromGUID(base_card_guid)
                if original_base then
                  destroyObject(original_base)
                end
              end,
              function() -- Condition function
                return (not clone_card.loading_custom)
              end,
              2,
              function() -- Timeout function.
                -- Failed.
                printToAll("Failed to find " .. item_info.name .. " in Shop Deck. Try searching through the Shop Deck or discard pile and deduct the cost yourself.", "Red")
              end
            )
          end,
          function() -- Condition function
            return (not base_card.loading_custom)
          end,
          2,
          function() -- Timeout function.
            -- Failed.
            printToAll("Failed to find " .. item_info.name .. " in Shop Deck. Try searching through the Shop Deck or discard pile and deduct the cost yourself.", "Red")
          end
        )
      end
    end
  end
end

-- Helper function to take a specific card from the Booster Items deck.
function purchase_booster(player_color)
  -- Get a handle on this player's Pokecoin counter.
  local player_pokecoin_counter = get_player_pokecoin_counter(player_color)
  if player_pokecoin_counter then
    -- Check if the player is rich enough.
    if check_if_player_has_enough(player_color, player_pokecoin_counter, CARDS.boost_item) then
      -- Get the card from the shop deck.
      if get_card_from_booster_deck(player_color) then
        -- Log the purchase.
        printToAll(get_player_name(player_color) .. " purchased a " .. CARDS.boost_item.name .. " for " .. CARDS.boost_item.cost .. " Pokécoins.")
        -- Retrieved card successfully, deduct the count from the player.
        player_pokecoin_counter.call("adjustValue", -CARDS.boost_item.cost)
      else
        printToAll("Failed to find any cards in Booster Deck. Try searching through the discard pile and deduct the cost yourself.", "Red")
      end
    end
  end
end

-- Helper function to deal the top card from the booster deck.
-- TODO: clone this card instead?
function get_card_from_booster_deck(player_color)
  -- Get a handle on the deck.
  local booster_deck = getObjectFromGUID(BOOSER_DECK_GUID)
  if booster_deck then
    -- Deal the top card to the player.
    booster_deck.deal(1, player_color)
    return true
  end

  return false
end