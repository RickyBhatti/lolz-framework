fx_version "cerulean"
game "gta5"
lua54 "yes"

name "lolz-core"
description "a core/framework thing that i'm making. refer to the github for a better summary."
author "ricky"
version "0.0.0"

shared_scripts {
    "sh_config.lua",
    "shared/__sh__init.lua",
    "shared/sh_logging.lua"
    "shared/sh_main.lua",
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

dependencies {
    "oxmysql"
}