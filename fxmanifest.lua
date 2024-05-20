fx_version 'bodacious'
games { 'gta5' }
Lua54 'yes'

author 'Easydomii'
description 'Mischung von Befehlen'
version '2.0.1'

files {
	'locales/*.json'
  }

shared_scripts {
    "@ox_lib/init.lua",
    "config.lua",
    "locale.lua"
}
client_scripts {
    "client/esx.lua",
    "client/functions.lua",
    "client/cmds/cl_*.lua",
    "client/suggestions.lua",
}
server_scripts {
    "server/esx.lua",
    "server/functions.lua",
    "server/cmds/sv_*.lua",
}

ox_libs {
    'locale',
    'math',
    'table',
}
