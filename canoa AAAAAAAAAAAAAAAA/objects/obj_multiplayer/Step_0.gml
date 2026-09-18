seta_offset += 0.5 * seta_direcao;

if (seta_offset > 8) seta_direcao = -1;
if (seta_offset < 0) seta_direcao = 1;

var confirmar =
    (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z"))) ||
    (global.config_teclado_wasd && keyboard_check_pressed(vk_enter));

var cima =
    keyboard_check_pressed(vk_up) ||
    keyboard_check_pressed(ord("W"));

var baixo =
    keyboard_check_pressed(vk_down) ||
    keyboard_check_pressed(ord("S"));


if (estado == 0)
{
    if (digitando_nickname)
    {
        if (confirmar)
        {
            nickname = string_copy(keyboard_string, 1, limite_nickname);
            digitando_nickname = false;
            keyboard_string = "";
            audio_play_sound(snd_select, 1, false);
            exit;
        }

        var texto_novo = string_copy(keyboard_string, 1, limite_nickname);
        keyboard_string = texto_novo;
        nickname = texto_novo;

        exit;
    }

    if (cima)
    {
        opcao--;
        if (opcao < 0) opcao = 2;
        audio_play_sound(snd_hover, 1, false);
    }

    if (baixo)
    {
        opcao++;
        if (opcao > 2) opcao = 0;
        audio_play_sound(snd_hover, 1, false);
    }

    if (confirmar)
    {
        audio_play_sound(snd_select, 1, false);

        if (opcao == 0)
        {
            digitando_nickname = true;
            keyboard_string = nickname;
            exit;
        }

        if (string_length(nickname) < 1)
        {
            show_debug_message("É necessário ter um nickname!");
            exit;
        }

        if (opcao == 1)
        {
            var letras = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            var numeros = "0123456789";
            var lista = [];

            for (var l = 0; l < 4; l++)
                array_push(lista, string_char_at(letras, irandom(25) + 1));

            for (var n = 0; n < 3; n++)
                array_push(lista, string_char_at(numeros, irandom(9) + 1));

            for (var embaralhar = 0; embaralhar < 20; embaralhar++)
            {
                var a = irandom(6);
                var b = irandom(6);
                var temp = lista[a];
                lista[a] = lista[b];
                lista[b] = temp;
            }

            codigo_sala = "";

            for (var c = 0; c < 7; c++)
                codigo_sala += lista[c];

            jogadores[0] = nickname;
            jogadores[1] = "";
            jogadores[2] = "";
            sou_host = true;
            opcao_lobby = 0;
            estado = 1;
            exit;
        }

        codigo_entrada = "";
        digitando_codigo = true;
        keyboard_string = "";
        estado = 2;
        exit;
    }

    if (keyboard_check_pressed(vk_escape))
        room_goto(rm_menu);

    exit;
}


if (estado == 1)
{
    if (keyboard_check_pressed(vk_escape))
    {
        estado = 0;
        jogadores[0] = "";
        jogadores[1] = "";
        jogadores[2] = "";
        codigo_sala = "";
        exit;
    }

    if (cima)
    {
        opcao_lobby--;
        if (opcao_lobby < 0) opcao_lobby = 1;
        audio_play_sound(snd_hover, 1, false);
    }

    if (baixo)
    {
        opcao_lobby++;
        if (opcao_lobby > 1) opcao_lobby = 0;
        audio_play_sound(snd_hover, 1, false);
    }

    if (confirmar && sou_host)
    {
        audio_play_sound(snd_select, 1, false);

        if (opcao_lobby == 0)
        {
            estado = 3;
            exit;
        }

        estado = 0;
        jogadores[0] = "";
        jogadores[1] = "";
        jogadores[2] = "";
        codigo_sala = "";
    }

    exit;
}


if (estado == 2)
{
    if (digitando_codigo)
    {
        var texto_codigo = string_upper(string_replace_all(keyboard_string, " ", ""));
        codigo_entrada = string_copy(texto_codigo, 1, 7);

        if (confirmar)
        {
            if (string_length(codigo_entrada) == 7)
            {
                digitando_codigo = false;
                keyboard_string = "";
                audio_play_sound(snd_select, 1, false);

                estado = 1;
                sou_host = false;
                jogadores[0] = "";
                jogadores[1] = nickname;
                jogadores[2] = "";
            }

            exit;
        }

        exit;
    }

    if (keyboard_check_pressed(vk_escape))
    {
        estado = 0;
        codigo_entrada = "";
        keyboard_string = "";
    }

    exit;
}


if (estado == 3)
{
    if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down))
    {
        opcao_lobby = 1 - opcao_lobby;
        audio_play_sound(snd_hover, 1, false);
    }

    if (confirmar)
    {
        audio_play_sound(snd_select, 1, false);

        estado = opcao_lobby == 0 ? 4 : 1;

        if (estado == 4)
            opcao_menu_jogo = 0;

        exit;
    }

    if (keyboard_check_pressed(vk_escape))
        estado = 1;

    exit;
}


if (estado == 4)
{
    if (cima)
    {
        opcao_menu_jogo--;
        if (opcao_menu_jogo < 0) opcao_menu_jogo = 1;
        audio_play_sound(snd_hover, 1, false);
    }

    if (baixo)
    {
        opcao_menu_jogo++;
        if (opcao_menu_jogo > 1) opcao_menu_jogo = 0;
        audio_play_sound(snd_hover, 1, false);
    }

    if (confirmar)
    {
        audio_play_sound(snd_select, 1, false);

        if (opcao_menu_jogo == 0)
        {
            room_goto(rm_jogo);
            exit;
        }

        show_debug_message("o jogo (nao tem ainda).");
        exit;
    }

    if (keyboard_check_pressed(vk_escape))
        estado = 1;

    exit;
}