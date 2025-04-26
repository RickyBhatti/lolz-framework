local RESOURCE_NAME = GetResourceMetadata(GetCurrentResourceName(), "name", 0)

local LOGS_ENABLED = lolzconfig.log or false
local LOG_FORMAT = ("[%s] %s: %s^7"):format(RESOURCE_NAME, "%s", "%s") -- Reduce the amount of times we have to call format by using a pre-formatted string.

local DEBUG_MODE = (lolzconfig.debug or lolzconfig.debug_log) or false -- (A or B) or C
local DEBUG_FORMAT = ("[DEBUG: %s] %s: %s^7"):format(RESOURCE_NAME, "%s", "%s") -- Reduce the amount of times we have to call format by using a pre-formatted string.

local print = print
local format = string.format

function lolz.log(module, log)
    if not LOGS_ENABLED then return end
    print(format(LOG_FORMAT, module, log))
end

function lolz.debug(module, log)
    if not DEBUG_MODE then return end
    print(format(DEBUG_FORMAT, module, log))
end