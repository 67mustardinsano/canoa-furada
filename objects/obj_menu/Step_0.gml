

if (room == rm_menu)
{
  

    if (
        (!global.config_teclado_wasd && keyboard_check_pressed(vk_up))
        ||
        (global.config_teclado_wasd && keyboard_check_pressed(ord("W")))
    )
    {
        opcao -= 1;

        if (opcao < 0)
        {
            opcao = 4;
        }

        audio_play_sound(snd_hover, 1, false);
    }


  

    if (
        (!global.config_teclado_wasd && keyboard_check_pressed(vk_down))
        ||
        (global.config_teclado_wasd && keyboard_check_pressed(ord("S")))
    )
    {
        opcao += 1;

        if (opcao > 4)
        {
            opcao = 0;
        }

        audio_play_sound(snd_hover, 1, false);
    }




    var confirmar_menu =
        (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z")))
        ||
        (global.config_teclado_wasd && keyboard_check_pressed(vk_enter));


    if (confirmar_menu)
    {
        audio_play_sound(snd_select, 1, false);


     

        if (opcao == 0)
        {
            room_goto(rm_jogo);
            exit;
        }




        if (opcao == 1)
        {
            room_goto(rm_configuracoes);
            exit;
        }




        if (opcao == 2)
        {
            room_goto(rm_multiplayer);
            exit;
        }




        if (opcao == 3)
        {
            room_goto(rm_extras);
            exit;
        }


    

        if (opcao == 4)
        {
            game_end();
        }
    }



    seta_offset += 0.5 * seta_direcao;

    if (seta_offset > 8)
    {
        seta_direcao = -1;
    }

    if (seta_offset < 0)
    {
        seta_direcao = 1;
    }


    exit;
}




if (room == rm_configuracoes)
{


    if (ajustando_audio)
    {
     

        if (
            (!global.config_teclado_wasd && keyboard_check_pressed(vk_up))
            ||
            (global.config_teclado_wasd && keyboard_check_pressed(ord("W")))
        )
        {
            opcao_audio -= 1;

            if (opcao_audio < 0)
            {
                opcao_audio = 3;
            }

            audio_play_sound(snd_hover, 1, false);
        }


     

        if (
            (!global.config_teclado_wasd && keyboard_check_pressed(vk_down))
            ||
            (global.config_teclado_wasd && keyboard_check_pressed(ord("S")))
        )
        {
            opcao_audio += 1;

            if (opcao_audio > 3)
            {
                opcao_audio = 0;
            }

            audio_play_sound(snd_hover, 1, false);
        }


    
        if (
            (!global.config_teclado_wasd && keyboard_check_pressed(vk_left))
            ||
            (global.config_teclado_wasd && keyboard_check_pressed(ord("A")))
        )
        {
            // MUSICA
            if (opcao_audio == 0)
            {
                global.config_musica -= 5;

                if (global.config_musica < 0)
                {
                    global.config_musica = 0;
                }

                if (instance_exists(obj_controle))
                {
                    with (obj_controle)
                    {
                        audio_sound_gain(
                            musica,
                            global.config_musica / 100,
                            0
                        );
                    }
                }
            }


            // EFEITOS SONOROS
            if (opcao_audio == 1)
            {
                global.config_efeitos -= 5;

                if (global.config_efeitos < 0)
                {
                    global.config_efeitos = 0;
                }
            }


            // TOTAL
            if (opcao_audio == 2)
            {
                global.config_audio -= 5;

                if (global.config_audio < 0)
                {
                    global.config_audio = 0;
                }

                audio_master_gain(
                    global.config_audio / 100
                );
            }

            audio_play_sound(snd_hover, 1, false);
        }


   

        if (
            (!global.config_teclado_wasd && keyboard_check_pressed(vk_right))
            ||
            (global.config_teclado_wasd && keyboard_check_pressed(ord("D")))
        )
        {
            
            if (opcao_audio == 0)
            {
                global.config_musica += 5;

                if (global.config_musica > 99)
                {
                    global.config_musica = 99;
                }

                if (instance_exists(obj_controle))
                {
                    with (obj_controle)
                    {
                        audio_sound_gain(
                            musica,
                            global.config_musica / 100,
                            0
                        );
                    }
                }
            }


            // EFEITOS SONOROS
            if (opcao_audio == 1)
            {
                global.config_efeitos += 5;

                if (global.config_efeitos > 99)
                {
                    global.config_efeitos = 99;
                }
            }


            // TOTAL
            if (opcao_audio == 2)
            {
                global.config_audio += 5;

                if (global.config_audio > 99)
                {
                    global.config_audio = 99;
                }

                audio_master_gain(
                    global.config_audio / 100
                );
            }

            audio_play_sound(snd_hover, 1, false);
        }


        // ---------------------------------------------
        // VOLTAR
        // ---------------------------------------------

        if (opcao_audio == 3)
        {
            if (
                (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z")))
                ||
                (global.config_teclado_wasd && keyboard_check_pressed(vk_enter))
            )
            {
                ajustando_audio = false;

                audio_play_sound(
                    snd_select,
                    1,
                    false
                );
            }
        }


        
        exit;
    }




    if (
        (!global.config_teclado_wasd && keyboard_check_pressed(vk_up))
        ||
        (global.config_teclado_wasd && keyboard_check_pressed(ord("W")))
    )
    {
        opcao -= 1;

        if (opcao < 0)
        {
            opcao = 4;
        }

        audio_play_sound(snd_hover, 1, false);
    }


   

    if (
        (!global.config_teclado_wasd && keyboard_check_pressed(vk_down))
        ||
        (global.config_teclado_wasd && keyboard_check_pressed(ord("S")))
    )
    {
        opcao += 1;

        if (opcao > 4)
        {
            opcao = 0;
        }

        audio_play_sound(snd_hover, 1, false);
    }




    if (opcao == 0)
    {
        if (
            (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z")))
            ||
            (global.config_teclado_wasd && keyboard_check_pressed(vk_enter))
        )
        {
            ajustando_audio = true;
            opcao_audio = 0;

            audio_play_sound(
                snd_select,
                1,
                false
            );
        }
    }




if (opcao == 1)
{
    if (keyboard_check_pressed(ord("Z")) ||
        keyboard_check_pressed(vk_enter))
    {
        global.config_tela_cheia =
            !global.config_tela_cheia;

        window_set_fullscreen(
            global.config_tela_cheia
        );

        audio_play_sound(
            snd_select,
            1,
            false
        );
    }
}


  

    if (opcao == 2)
    {
        if (
            (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z")))
            ||
            (global.config_teclado_wasd && keyboard_check_pressed(vk_enter))
        )
        {
            global.config_dublagem =
                !global.config_dublagem;

            audio_play_sound(
                snd_select,
                1,
                false
            );
        }
    }


  

    if (opcao == 3)
    {
        if (
            (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z")))
            ||
            (global.config_teclado_wasd && keyboard_check_pressed(vk_enter))
        )
        {
            global.config_teclado_wasd =
                !global.config_teclado_wasd;

            audio_play_sound(
                snd_select,
                1,
                false
            );
        }
    }



    if (opcao == 4)
    {
        if (
            (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z")))
            ||
            (global.config_teclado_wasd && keyboard_check_pressed(vk_enter))
        )
        {
            audio_play_sound(
                snd_select,
                1,
                false
            );

            room_goto(rm_menu);
        }
    }


   

    seta_offset += 0.5 * seta_direcao;

    if (seta_offset > 8)
    {
        seta_direcao = -1;
    }

    if (seta_offset < 0)
    {
        seta_direcao = 1;
    }

if (room == rm_extras)
{
    // SUBIR
    if (keyboard_check_pressed(vk_up) ||
        keyboard_check_pressed(ord("W")))
    {
        opcao_extras -= 1;

        if (opcao_extras < 0)
        {
            opcao_extras = 3;
        }

        audio_play_sound(
            snd_hover,
            1,
            false
        );
    }


    // DESCER
    if (keyboard_check_pressed(vk_down) ||
        keyboard_check_pressed(ord("S")))
    {
        opcao_extras += 1;

        if (opcao_extras > 3)
        {
            opcao_extras = 0;
        }

        audio_play_sound(
            snd_hover,
            1,
            false
        );
    }


    // SELECIONAR
    if (keyboard_check_pressed(ord("Z")) ||
        keyboard_check_pressed(vk_enter))
    {
        audio_play_sound(
            snd_select,
            1,
            false
        );

        if (opcao_extras == 3)
        {
            room_goto(rm_menu);
        }

        // CHEFES
        if (opcao_extras == 0)
        {
            // Por enquanto nao faz nada
        }

        // AREAS
        if (opcao_extras == 1)
        {
            // Por enquanto nao faz nada
        }

        // PERSONAGENS
        if (opcao_extras == 2)
        {
            // Por enquanto nao faz nada
        }
    }


    
    seta_offset += 0.5 * seta_direcao;

    if (seta_offset > 8)
    {
        seta_direcao = -1;
    }

    if (seta_offset < 0)
    {
        seta_direcao = 1;
    }

    exit;
}
    exit;
}



if (room == rm_extras)
{
    // SUBIR
    if (
        (!global.config_teclado_wasd && keyboard_check_pressed(vk_up))
        ||
        (global.config_teclado_wasd && keyboard_check_pressed(ord("W")))
    )
    {
        opcao_extras -= 1;

        if (opcao_extras < 0)
        {
            opcao_extras = 3;
        }

        audio_play_sound(snd_hover, 1, false);
    }


    // DESCER
    if (
        (!global.config_teclado_wasd && keyboard_check_pressed(vk_down))
        ||
        (global.config_teclado_wasd && keyboard_check_pressed(ord("S")))
    )
    {
        opcao_extras += 1;

        if (opcao_extras > 3)
        {
            opcao_extras = 0;
        }

        audio_play_sound(snd_hover, 1, false);
    }


    // SELECIONAR
    if (
        (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z")))
        ||
        (global.config_teclado_wasd && keyboard_check_pressed(vk_enter))
    )
    {
        audio_play_sound(snd_select, 1, false);

        // CHEFES
        if (opcao_extras == 0)
        {
            // Vamos fazer depois
        }


        // AREAS
        if (opcao_extras == 1)
        {
            // Vamos fazer depois
        }


        // PERSONAGENS
        if (opcao_extras == 2)
        {
            // Vamos fazer depois
        }


        
        if (opcao_extras == 3)
        {
            room_goto(rm_menu);
        }
    }


   
    seta_offset += 0.5 * seta_direcao;

    if (seta_offset > 8)
    {
        seta_direcao = -1;
    }

    if (seta_offset < 0)
    {
        seta_direcao = 1;
    }

    exit;
}