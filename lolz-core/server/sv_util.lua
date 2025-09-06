local sub = string.sub
local find = string.find

local GetPlayerIdentifiers = GetPlayerIdentifiers

local playerIdentifiersCache = {}

--[[
    Sends a message to the given player(s).
    @param players (number|table) - The player ID or a table of player IDs
    @param message (string) - The message to send
]]--
function lolz.server.sendMessage(players, message)
    -- TODO: Create the code. This is just a placeholder function for now. Not sure if I want to go with a table of players for this... We'll see.
end

--[[
    Kicks a player from the server with a given reason.
    @param player (number) - The player ID
    @param reason (string) - The reason for the kick
]]--
function lolz.server.kickPlayer(player, reason)
    DropPlayer(player, reason)
end

--[[
    Bans a player from the server with a given reason.
    @param player (number) - The player ID
    @param reason (string) - The reason for the ban
    @param duration (number) - The duration of the ban in minutes (0 for permanent)
]]--
function lolz.server.banPlayer(player, reason, duration)
    -- TODO: Implement ban logic. This is a placeholder function for now.
end

--[[
    Retrieves a player's information from the database.
    @param player (number) - The player ID
    @return (table) - The player's information
]]--
function lolz.server.getPlayerInfo(player)
    -- TODO: Implement database retrieval logic. This is a placeholder function for now.
    return {}
end

--[[
    Get a list of all player identifiers.
    @param player (number) - The player ID
    @return (table) - A table of the player's identifiers
]]--
function lolz.server.getPlayerIdentifiers(player)
    if playerIdentifiersCache[player] then
        return playerIdentifiersCache[player]
    end

    local playerIdentifiers = GetPlayerIdentifiers(player)
    if not playerIdentifiers then
        -- TODO: Log that we couldn't get identifiers for some reason.
        return identifiers
    end

    local identifiers = {}
    for i = 1, #playerIdentifiers do
        local identifier = playerIdentifiers[i]
        local identifierType = sub(identifier, 1, find(identifier, ":") - 1) -- 1 to the character before the colon
        identifiers[identifierType] = identifier
    end

    playerIdentifiersCache[player] = identifiers

    return identifiers
end