-- Modifies the escape menu, changing the default "GTA Online" text to a custom server name.
Citizen.CreateThread(function()
    AddTextEntry("FE_THDR_GTAO", lolzconfig.esc_server_name or "lolz-core framework")
end)