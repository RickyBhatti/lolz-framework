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

local LANG_CODES = {
    [0] = "en", -- en-US, English (United States)
    [1] = "fr", -- fr-FR, French (France)
    [2] = "de", -- de-DE, German (Germany)
    [3] = "it", -- it-IT, Italian (Italy)
    [4] = "es", -- es-ES, Spanish (Spain)
    [5] = "pt", -- pt-BR, Portuguese (Brazil)
    [6] = "pl", -- pl-PL, Polish (Poland)
    [7] = "ru", -- ru-RU, Russian (Russia)
    [8] = "ko", -- ko-KR, Korean (South Korea)
    [9] = "zh", -- zh-TW, Chinese (Taiwan)
    [10] = "ja", -- ja-JP, Japanese (Japan)
    [11] = "es", -- es-MX, Spanish (Mexico)
    [12] = "zh" -- zh-CN, Chinese (China)
}

if IsDuplicityVersion() then
    -- Server-side
else 
    -- Client-side
    local activeLang = LANG_CODES[GetCurrentLanguage()] or "en"
    print(("Locale set to: %s"):format(activeLang))
end