

seta_offset += 0.5 * seta_direcao;

if (seta_offset > 8)
{
    seta_direcao = -1;
}

if (seta_offset < 0)
{
    seta_direcao = 1;
}




if (
    (!global.config_teclado_wasd && keyboard_check_pressed(vk_left))
    ||
    (global.config_teclado_wasd && keyboard_check_pressed(ord("A")))
)
{
    capitulo_selecionado -= 1;

    if (capitulo_selecionado < 0)
    {
        capitulo_selecionado = 6;
    }

    audio_play_sound(snd_hover, 1, false);
}


if (
    (!global.config_teclado_wasd && keyboard_check_pressed(vk_right))
    ||
    (global.config_teclado_wasd && keyboard_check_pressed(ord("D")))
)
{
    capitulo_selecionado += 1;

    if (capitulo_selecionado > 6)
    {
        capitulo_selecionado = 0;
    }

    audio_play_sound(snd_hover, 1, false);
}




var confirmar =
    (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z")))
    ||
    (global.config_teclado_wasd && keyboard_check_pressed(vk_enter));


if (confirmar)
{
    audio_play_sound(snd_select, 1, false);

    if (capitulo_selecionado == 0)
    {
        show_debug_message("CAPÍTULO 1 SELECIONADO");
    }
    else
    {
        show_debug_message("CAPÍTULO AINDA NÃO DISPONÍVEL");
    }
}