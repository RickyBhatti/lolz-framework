local dict = {}

function lang:load()
    
end

function lang:getLocale()
    
end

function lang:getDict()
    return dict
end

function lang:get(key, ...)

end

local LANG_CODES_CLIENT = { -- Removed the conversion to the "en.lua." Think of how to mount the files, so that the en.lua is mounted as en-US.
    [0] = "en-US",
    [1] = "fr-FR",
    [2] = "de-DE",
    [3] = "it-IT",
    [4] = "es-ES",
    [5] = "pt-BR",
    [6] = "pl-PL",
    [7] = "ru-RU",
    [8] = "ko-KR",
    [9] = "zh-TW",
    [10] = "ja-JP",
    [11] = "es-MX",
    [12] = "zh-CN"
}

local activeLang = "en" -- Default to "en" if no locale is set
if IsDuplicityVersion() then
    -- Server-side
    activeLang = GetConvar("locale", "en-US")
else 
    -- Client-side
    activeLang = LANG_CODES_CLIENT[GetCurrentLanguage() or 0] -- Default to "en-US" if GetCurrentLanguage() returns nil
end

print(("Locale set to: %s"):format(activeLang))
-- Load the language file based on the active language
local langFile = ("lolz-core/locale/%s.lua"):format(activeLang)

-- load file, get locale, mount it. add name and then dict to table.

-- Might change how this exactly works. Might mount all the languages and then just load the one that is set in the config (or like how we have it above). Feel like that'd make more sense and lets them be able to swap languages without restarting the resource.
-- Just writing code as it comes to me. As they say: Make it work, then make it right, then make it fast.