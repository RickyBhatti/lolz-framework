local getPlayerIdentifiers = lolz.server.getPlayerIdentifiers

AddEventHandler("playerDropped", function(reason)
    local identifiers = getPlayerIdentifiers(source)
    --[[
        Player Disconnected: {name}
        Reason: {reason}
        Server ID: {id}
        Identifiers:
        ```
            License: {license}
            Steam: {steamID}
            Discord: {discordID}
        ```
    ]]--
end)