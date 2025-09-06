local getPlayerIdentifiers = lolz.server.getPlayerIdentifiers

AddEventHandler("playerConnecting", function(name)
    local identifiers = getPlayerIdentifiers(source)
    --[[
        Player Connecting: {name}
        Identifiers:
        ```
            License: {license}
            Steam: {steamID}
            Discord: {discordID}
        ```
    ]]--
end)