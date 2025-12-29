
-- GUID: ea518e
-- Should live at {97.41, 1.96, 39.36}

Pokedex_API_BASE = "https://pmtu-Pokedex.com/api"
local LEADERBOARD_LOOKUP_LIMIT = 100

-- Gets Steam identity (ID and name) from player color.
local function getSteamIdentityFromColor(player_color)
  local player = Player[player_color]
  if not player then
    logPokedexError("Failed to get player info from player_color param: " .. tostring(player_color))
    return nil, "Unknown"
  end
  if not player.seated then
    return nil, "Unknown"
  end
  local sid = player.steam_id
  local name = player.steam_name or "Unknown"
  if sid ~= nil and tostring(sid) ~= "" then
    return sid, name
  end
  logPokedexInfo("WARNING: Failed too get Steam ID")
  return "steamname:" .. name, name
end

-- Public helper so racks can fetch current player identity for their color.
function getSteamIdentityForColor(params)
  if not params or not params.color then return nil end
  local sid, name = getSteamIdentityFromColor(params.color)
  if not sid then return nil end
  return { steam_id = sid, steam_name = name }
end

-- URL encodes a string.
local function urlEncode(str)
  if str == nil then return "" end
  str = tostring(str)
  str = string.gsub(str, "\n", "\r\n")
  str = string.gsub(str, "([^%w _%%%-%.])", function(c)
    return string.format("%%%02X", string.byte(c))
  end)
  str = string.gsub(str, " ", "%%20")
  return str
end

-- Simple log wrapper. Info Level.
local function logPokedexInfo(msg, color)
  if not color then color = "White" end
  printToAll("[Pokédex] " .. msg, color)
end

-- Simple log wrapper. Error Level.
local function logPokedexError(msg)
  print("[Pokédex] Error: " .. msg)
end

-- Simple rate-limit for Pokedex capture calls (dedupe handled per rack).
local CAPTURE_REQUEST_INTERVAL = 0.25 -- seconds between capture requests
local captureQueue = {}
local captureInFlight = false

-- Rate-limit registration calls as well.
local REGISTER_REQUEST_INTERVAL = 0.25
local registerQueue = {}
local registerInFlight = false

-- After registering, print the player's leaderboard rank if they already appear on the completion list.
local function printPlayerLeaderboardRank(steam_id, steam_name, color)
  if not steam_id then return end
  local url = Pokedex_API_BASE .. "/v1/leaderboard/completion?limit=" .. tostring(LEADERBOARD_LOOKUP_LIMIT)

  WebRequest.get(url, function(req)
    local okReq, err = requestOk(req)
    if not okReq then
      return
    end

    local ok, data = pcall(JSON.decode, req.text)
    if not ok or not data then
      return
    end

    local entries = data.entries or {}

    for i, e in ipairs(entries) do
      if tostring(e.steam_id) == tostring(steam_id) then
        local name = e.steam_name_safe or e.steam_name or steam_name or "Unknown"
        local unique = tonumber(e.unique_species)
        local unique_display = unique or "N/A"

        logPokedexInfo(
          string.format(
            "%s is currently #%d on the PMTU completion leaderboard: %s",
            name,
            i,
            unique_display
          ),
          color
        )
        return
      end
    end
  end)
end

local function popRegisterQueue()
  if registerInFlight then return end
  if #registerQueue == 0 then return end
  local task = table.remove(registerQueue, 1)
  registerInFlight = true

  WebRequest.custom(task.url, "POST", true, task.body, task.headers, function(req)
    local okReq, err = requestOk(req)
    if not okReq then
      if (task.attempts or 0) < 1 then
        task.attempts = (task.attempts or 0) + 1
        table.insert(registerQueue, 1, task)
      else
        logPokedexError("register failure for " .. task.steam_name .. ": " .. err)
      end
      registerInFlight = false
      Wait.time(popRegisterQueue, REGISTER_REQUEST_INTERVAL)
      return
    end

    local ok, data = pcall(JSON.decode, req.text)
    if not ok then
      logPokedexError("register decode failure for " .. task.steam_name)
      registerInFlight = false
      Wait.time(popRegisterQueue, REGISTER_REQUEST_INTERVAL)
      return
    end

    logPokedexInfo("registered " .. (data.steam_name_safe or task.steam_name) .. " (" .. task.steam_id .. ") into the PMTU Pokédex", task.color)
    printPlayerLeaderboardRank(task.steam_id, data.steam_name_safe or task.steam_name, task.color)

    registerInFlight = false
    Wait.time(popRegisterQueue, REGISTER_REQUEST_INTERVAL)
  end)
end

local function popCaptureQueue()
  if captureInFlight then return end
  if #captureQueue == 0 then return end
  local nextItem = table.remove(captureQueue, 1)

  captureInFlight = true
  local params = nextItem

  -- Record the capture.
  WebRequest.custom(params.capture_url, "POST", true, params.capture_body, params.headers, function(reqCap)
    local okCap, errCap = requestOk(reqCap)
    if not okCap then
      -- Retry once on failure/timeouts before surfacing an error.
      if (params.attempts or 0) < 1 then
        params.attempts = (params.attempts or 0) + 1
        table.insert(captureQueue, 1, params)
      else
        local rawErr = tostring(errCap)
        local code = tonumber(reqCap.response_code) or 0
        logPokedexError("capture failed for " .. params.steam_id .. " (code=" .. tostring(code) .. ", err=" .. rawErr .. ")")
      end
    else
      -- Interpret the return code.
      local code = tonumber(reqCap.response_code) or 0
      local data = {}
      local ok, parsed = pcall(JSON.decode, reqCap.text)
      if ok and parsed then data = parsed end

      -- Log it. API returns 201/202 for new/upgrade, 200 for already recorded.
      if code == 201 or code == 202 then
        logPokedexInfo("Pokedex updated for " .. params.pokemon_name .. (params.isShiny and " [shiny]" or "") .. " (" .. params.steam_name .. ")", params.color)
        if data.first_overall then
          logPokedexInfo("First ever " .. params.pokemon_name .. " captured!")
        end
        if data.first_shiny then
          logPokedexInfo("First ever shiny " .. params.pokemon_name .. " captured!")
        end
      end
    end

    -- Notify the originating rack on any successful response.
    if params.rack_guid then
      local rack = getObjectFromGUID(params.rack_guid)
      if rack then
        rack.call("onPokedexCaptureRecorded", {
          pokemon_name = params.pokemon_name,
          shiny = params.isShiny,
        })
      end
    end

    -- Allow the next item to be processed after a small delay.
    captureInFlight = false
    Wait.time(popCaptureQueue, CAPTURE_REQUEST_INTERVAL)
  end)
end

-- Registers a player with the backend.
function registerPlayer(params)
  local color = params.color
  local steam_id, steam_name = getSteamIdentityFromColor(color)
  if not steam_id then
    logPokedexError("found no player for color " .. tostring(color))
    return
  end

  local payload = {
    steam_id = steam_id,
    steam_name = steam_name,
  }

  -- Build the request.
  local url = Pokedex_API_BASE .. "/v1/register"
  local body = JSON.encode(payload)
  local headers = {
    ["Content-Type"] = "application/json",
    ["Accept"] = "application/json",
  }

  -- Enqueue registration to avoid bursts.
  table.insert(registerQueue, {
    url = url,
    body = body,
    headers = headers,
    steam_id = steam_id,
    steam_name = steam_name,
    color = params.color,
    attempts = 0,
  })
  popRegisterQueue()
end

-- Records a PokÃ©mon capture with the backend and checks for firsts.
function recordCapture(params)
  local color = params.color
  local pokemon_name = params.pokemon_name
  local isShiny = params.shiny == true
  local rack_guid = params.rack_guid

  if not Player[params.color] or not Player[params.color].seated then
    return
  end

  -- Get Steam ID + Steam name.
  local steam_id, steam_name = getSteamIdentityFromColor(color)
  if not steam_id then
    logPokedexError("no steam id for color " .. tostring(color))
    return
  end

  -- Skip Mega and Gmax forms entirely.
  local lower_name = string.lower(pokemon_name or "")
  if string.sub(lower_name, 1, 5) == "mega " or string.sub(lower_name, 1, 5) == "gmax " then
    return
  end

  -- Prepare JSON payload.
  local payload = {
    steam_id = steam_id,
    pokemon_name = pokemon_name,
    shiny = isShiny,
  }

  -- Build the request.
  local capture_url = Pokedex_API_BASE .. "/v1/capture"
  local capture_body = JSON.encode(payload)
  local headers = {
    ["Content-Type"] = "application/json",
    ["Accept"] = "application/json",
  }

  -- Enqueue the capture to avoid spamming simultaneous requests.
  table.insert(captureQueue, {
    capture_url = capture_url,
    capture_body = capture_body,
    headers = headers,
    pokemon_name = pokemon_name,
    isShiny = isShiny,
    steam_id = steam_id,
    steam_name = steam_name,
    color = params.color,
    attempts = 0,
    rack_guid = rack_guid,
  })
  popCaptureQueue()
end

-- Fetches and prints a player's Pokedex.
function fetchDex(params)
  local color = params.color
  local steam_id, steam_name = getSteamIdentityFromColor(color)
  if not steam_id then
    logPokedexError("found no steam id for color " .. tostring(color))
    return
  end

  -- Build the request.
  local url = Pokedex_API_BASE .. "/v1/dex/" .. urlEncode(steam_id)

  WebRequest.get(url, function(req)
    local okReq, err = requestOk(req)
    if not okReq then
      logPokedexError("fetch dex failed for " .. steam_name .. ": " .. err)
      return
    end

    local ok, data = pcall(JSON.decode, req.text)
    if not ok or not data then
        logPokedexError("fetch dex decode error for " .. steam_name)
        return
    end

    -- Print dex summary.
    logPokedexInfo("Dex for " ..
      (data.steam_name_safe or data.steam_name or "Unknown") ..
      " (" .. data.steam_id .. "), total " .. tostring(data.count) ..
      ", shiny " .. tostring(data.shiny_count))

    -- Print individual captures.
    for _, cap in ipairs(data.captures or {}) do
      local flag = cap.shiny and " [shiny]" or ""
      logPokedexInfo("  " .. cap.pokemon_name .. flag .. " at " .. tostring(cap.captured_at))
    end
  end)
end

-- Async: check if a given player/color has caught a species (and shiny status).
function queryPlayerCaught(params)
  local pokemon_name = params and params.pokemon_name
  local color = params and params.color
  local callback_fn = (params and params.callback_fn) or "onPokedexQueryPlayerCaught"
  if not pokemon_name or pokemon_name == "" or not color then
    return
  end

  local steam_id, _ = getSteamIdentityFromColor(color)
  if not steam_id then
    Global.call(callback_fn, { ok = false, error = "no steam id", pokemon_name = pokemon_name, color = color })
    return
  end

  local url = Pokedex_API_BASE .. "/v1/dex/" .. urlEncode(steam_id)

  WebRequest.get(url, function(req)
    local okReq, err = requestOk(req)
    if not okReq then
      Global.call(callback_fn, { ok = false, error = err, pokemon_name = pokemon_name, color = color })
      return
    end

    local ok, data = pcall(JSON.decode, req.text)
    if not ok or not data then
      Global.call(callback_fn, { ok = false, error = "decode failed", pokemon_name = pokemon_name, color = color })
      return
    end

    local caught = false
    local shiny = false
    for _, cap in ipairs(data.captures or {}) do
      if string.lower(cap.pokemon_name or "") == string.lower(pokemon_name) then
        caught = true
        shiny = shiny or (cap.shiny == true or cap.shiny == 1)
        break
      end
    end

    Global.call(callback_fn, {
      ok = true,
      color = color,
      pokemon_name = pokemon_name,
      caught = caught,
      shiny = shiny,
    })
  end)
end

-- Async: fetch species caught stats (total players and shiny players).
function querySpeciesCaughtSummary(params)
  local pokemon_name = params and params.pokemon_name
  local callback_fn = (params and params.callback_fn) or "onPokedexQuerySpeciesSummary"
  if not pokemon_name or pokemon_name == "" then
    return
  end

  local url = Pokedex_API_BASE .. "/v1/species/" .. urlEncode(pokemon_name) .. "/caught"

  WebRequest.get(url, function(req)
    local okReq, err = requestOk(req)
    if not okReq then
      Global.call(callback_fn, { ok = false, error = err, pokemon_name = pokemon_name })
      return
    end

    local ok, data = pcall(JSON.decode, req.text)
    if not ok or not data then
      Global.call(callback_fn, { ok = false, error = "decode failed", pokemon_name = pokemon_name })
      return
    end

    Global.call(callback_fn, {
      ok = true,
      pokemon_name = pokemon_name,
      total_players = data.total_players or 0,
      shiny_players = data.shiny_players or 0,
    })
  end)
end

-- Fetches and prints who caught a given PokÃ©mon, including shiny/non-shiny stats
function whoCaught(params)
  local pokemon_name = params.pokemon_name
  if not pokemon_name or pokemon_name == "" then
    logPokedexError("whoCaught missing pokemon_name")
    return
  end

  -- Build the request.
  local url = Pokedex_API_BASE .. "/v1/species/" .. urlEncode(pokemon_name) .. "/caught"

  WebRequest.get(url, function(req)
    local okReq, err = requestOk(req)
    if not okReq then
      logPokedexError("whoCaught failed for " .. pokemon_name .. ": " .. err)
      return
    end

    local ok, data = pcall(JSON.decode, req.text)
    if not ok or not data then
      logPokedexError("whoCaught decode error for " .. pokemon_name)
      return
    end

    local total = data.total_players or 0
    local shiny_count = data.shiny_players or 0

    -- Summary line.
    logPokedexInfo(
      "Who caught " .. tostring(data.pokemon_name) ..
      ": " .. tostring(total) ..
      " players (shiny=" .. tostring(shiny_count) .. ")"
    )
  end)
end

-- Fetches and prints the "most complete" Pokédex leaderboard.
-- Example call: handler.call("printCompletionLeaderboard", { limit = 15 })
-- Default limit is 15.
function printCompletionLeaderboard(params)
  local limit = 15
  if params and params.limit then
    limit = tonumber(params.limit) or limit
  end

  -- Builld the request.
  local url = Pokedex_API_BASE .. "/v1/leaderboard/completion?limit=" .. tostring(limit)

  WebRequest.get(url, function(req)
    local okReq, err = requestOk(req)
    if not okReq then
      logPokedexError("completion leaderboard fetch failed: " .. err)
      return
    end

    local ok, data = pcall(JSON.decode, req.text)
    if not ok or not data then
      logPokedexError("completion leaderboard decode error")
      return
    end

    local max_species = data.max_species or 0
    local entries = data.entries or {}

    if #entries == 0 then
      logPokedexInfo("Most complete PMTU Pokédex: no entries yet.")
      return
    end

    logPokedexInfo("Most complete PMTU Pokédex (top " .. tostring(#entries) .. "), max species = " .. tostring(max_species))

    -- Loop through the entries.
    for i, e in ipairs(entries) do
      local name = e.steam_name_safe or e.steam_name or "Unknown"
      local unique = e.unique_species or 0
      local max_s = e.max_species or max_species
      local pct = 0
      if max_s and max_s > 0 then
        pct = math.floor((unique * 100 / max_s) + 0.5)
      end

      logPokedexInfo(
        string.format(
          "%2d) %s (%s): %d/%d (%d%%)",
          i,
          name,
          tostring(e.steam_id),
          unique,
          max_s,
          pct
        )
      )
    end
  end)
end

-- Helper function used to check if a WebRequest succeeded (network + HTTP code).
function requestOk(req)
  if req.is_error then
    return false, req.error or "network error"
  end
  local code = tonumber(req.response_code) or 0
  if code < 200 or code >= 300 then
    return false, "HTTP " .. tostring(code)
  end
  return true, nil
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
