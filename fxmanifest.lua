-- Resource Metadata
fx_version 'bodacious'
games { 'gta5' }
Lua54 'yes'

author 'Easydomii'
description 'CarryPeople'
version '1.0.1'
shared_scripts {
    "@ox_lib/init.lua",
    "config.lua",
    "locale.lua"
}
client_scripts {
    "client/functions.lua",
    "client/cmds/cl_*.lua",
    "client/suggestions.lua",
}
server_scripts {
    "server/functions.lua",
    "server/cmds/sv_*.lua",
}
