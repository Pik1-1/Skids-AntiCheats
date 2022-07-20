
fx_version 'cerulean'
game 'gta5'

author 'EasyAnticheat'
description 'SmokeAc'
version '3.0'

lua54 'yes'

shared_scripts {
    'configs/*.lua'
}

client_script 'client/client.lua'

server_scripts {
    'server/server.lua',
}

client_scripts {
    'client/menu.lua',
}

escrow_ignore {
    'configs/*.lua'
}






