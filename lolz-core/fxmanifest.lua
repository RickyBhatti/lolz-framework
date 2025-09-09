fx_version "cerulean"
game "gta5"
lua54 "yes"
use_experimental_fxv2_oal "yes"

name "lolz-core"
description "a core/framework thing that i'm making. refer to the github for a better summary."
author "ricky"
version "0.0.0"
repository "https://github.com/RickyBhatti/lolz-framework/tree/main/lolz-core"

shared_scripts {
    "locale/*.lua",
    "sh_config.lua",
    "shared/__sh__init.lua",
    "shared/sh_logging.lua",
    "shared/sh_main.lua"
}

client_scripts {
    "cl_config.lua",
    "client/__cl__init.lua",
    "client/cl_main.lua"
}

server_scripts {
    "sv_config.lua",
    "server/__sv__init.lua",
    "server/sv_main.lua"
}

dependencies {} -- None for now. Actually, maybe no resources for the "core" or whatever this is. Basically, make this the base library/framework that other resources can depend on. Hmmmmm, that might mean I have to adjust some of the modules. Bluh, later me issue (we love tech debt!) lol.