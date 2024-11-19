fx_version "cerulean"
game "gta5"
lua54 "yes"

name "lolz-core"
description "a core/framework thing that i'm making. refer to the github for a better summary."
author "ricky"
version "0.0.0"

shared_scripts {
    "shared/sh_main.lua",
    "**/sh_*.lua"
}

client_scripts {
    "client/cl_main.lua",
    "**/cl_*.lua"
}

server_scripts {
    "server/sv_main.lua",
    "**/sv_*.lua"
}
