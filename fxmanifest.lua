game 'common'
fx_version 'cerulean'

dependencies {
    'HPRPC-menus'

}

server_script {
    'server.lua'

}



shared_script { 
    'config.lua'

}

client_script {
    '@HPRPC-menus/menus.lua',
    'client.lua'
    
}
