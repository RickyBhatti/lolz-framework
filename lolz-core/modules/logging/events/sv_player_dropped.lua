AddEventHandler("playerDropped", function(reason)
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