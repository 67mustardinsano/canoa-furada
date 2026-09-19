seta_offset += 0.5 * seta_direcao;
if (keyboard_check_pressed(vk_escape))
{
    room_goto_previous();
}
if (seta_offset > 8)
{
	seta_direcao = -1;
}

if (seta_offset < 0)
{
    seta_direcao = 1;
}

if ((!global.config_teclado_wasd && keyboard_check_pressed(vk_up)) || (global.config_teclado_wasd && keyboard_check_pressed(ord("W"))))
{
	audio_play_sound(snd_hover, 1, false);
    capitulo_selecionado -= 1;
}

if ((!global.config_teclado_wasd && keyboard_check_pressed(vk_down)) || (global.config_teclado_wasd && keyboard_check_pressed(ord("S"))))
{
	audio_play_sound(snd_hover, 1, false);
    capitulo_selecionado += 1;
}

keyboard_check_pressed(ord("Z")) keyboard_check_pressed(vk_enter)

capitulo_selecionado = clamp(capitulo_selecionado, 0, 5);

if ((keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)) && capitulo_selecionado == 0)
{
	audio_play_sound(snd_select, 1, false);
    room_goto(rm_capitulo1);
}