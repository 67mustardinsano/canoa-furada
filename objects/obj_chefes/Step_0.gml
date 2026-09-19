if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
{opcao_chefe -= 1; 
	if (opcao_chefe < 0) { opcao_chefe = 2; }
	audio_play_sound (snd_hover, 1, false);
}
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
{opcao_chefe += 1; 
	if (opcao_chefe > 2) { opcao_chefe = 0; }
	audio_play_sound (snd_hover, 1, false);
}
if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))

	audio_play_sound (snd_hover, 1, false);
if (opcao_chefe == 2)
{
    room_goto(rm_extras);
}

seta_offset += 0.5 * seta_direcao;

if (seta_offset > 8){ seta_direcao = -1;}
if (seta_offset < 0){ seta_direcao = 1;}
