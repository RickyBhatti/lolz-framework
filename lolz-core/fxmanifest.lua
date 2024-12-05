fx_version "cerulean"
game "gta5"
lua54 "yes"

name "lolz-core"
description "a core/framework thing that i'm making. refer to the github for a better summary."
author "ricky"
version "0.0.0"

shared_scripts {
    "config.lua",
    "shared/__sh__init.lua",
    "shared/sh_main.lua",
    "shared/sh_logging.lua"
}

client_scripts {
    "client/__cl__init.lua",
    "client/cl_main.lua"
}

server_scripts {
    "server/__sv__init.lua",
    "server/sv_main.lua"
}

dependencies {
    "oxmysql"
}