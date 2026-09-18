



opcao = 0;
mudando_room = false;
opcao_extras = 0;

seta_offset = 0;
seta_direcao = 1;

menu_principal = [
    "Jogar",
    "Configuracoes",
    "Multiplayer",
    "Extras",
    "Sair"
];




if (!variable_global_exists("config_audio"))
{
    global.config_musica = 99;
    global.config_efeitos = 99;
    global.config_audio = 99;

    global.config_tela_cheia = false;
    global.config_dublagem = true;
    global.config_teclado_wasd = false;
}




ajustando_audio = false;
opcao_audio = 0;




window_set_fullscreen(global.config_tela_cheia);




audio_master_gain(global.config_audio / 100);