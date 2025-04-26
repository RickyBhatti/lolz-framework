lolzconfig = {}

--// Debug Configuration
lolzconfig.debug = false --// Enable or disable debug mode. (Default: false)
lolzconfig.debug_log = false --// Enable or disable debug logging. (Default: false)
    --> Decide weather debug logs can be enabled without debug mode enabled. Idea so far is that debug_log will be used for more "production" safe logging, while debug mode will enable more verbose logging and debugging tools or whatever.

--// Logging Configuration
lolzconfig.log = true --// Enable or disable console logging. (Default: true)

--// TODO: Discord Logging Configuration
lolzconfig.log_discord = false --// Enable or disable discord logging. (Default: false) 
lolzconfig.log_discord_webhook = "" --// Discord webhook URL for logging. (Default: "")
lolzconfig.log_discord_username = "lolz-core" --// Discord username for logging. (Default: "lolz-core")
lolzconfig.log_discord_avatar = "" --// Discord avatar URL for logging. (Default: "")
lolzconfig.log_discord_color = 0x00FF00 --// Discord embed color for logging. (Default: 0x00FF00)
lolzconfig.log_discord_footer = "lolz-core" --// Discord embed footer for logging. (Default: "lolz-core")
lolzconfig.log_discord_footer_icon = "g" --// Discord embed footer icon for logging. (Default: "")
lolzconfig.log_discord_timestamp = true --// Discord embed timestamp for logging. (Default: true)