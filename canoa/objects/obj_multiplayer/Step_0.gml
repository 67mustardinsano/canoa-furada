

seta_offset += 0.5 * seta_direcao;

if (seta_offset > 8)
{
    seta_direcao = -1;
}

if (seta_offset < 0)
{
    seta_direcao = 1;
}




var confirmar =
    (!global.config_teclado_wasd && keyboard_check_pressed(ord("Z")))
    ||
    (global.config_teclado_wasd && keyboard_check_pressed(vk_enter));




if (estado == 1)
{
    if (keyboard_check_pressed(vk_escape))
    {
        estado = 0;
    }

    exit;
}



if (estado == 2)


    if (digitando_codigo)
    {
        var texto_codigo = keyboard_string;

        texto_codigo = string_replace_all(texto_codigo, " ", "");
        texto_codigo = string_upper(texto_codigo);

        if (string_length(texto_codigo) > 10)
        {
            texto_codigo = string_copy(texto_codigo, 1, 10);
        }

        codigo_entrada = texto_codigo;


        // CONFIRMAR CÓDIGO
        if (confirmar)
        {
            digitando_codigo = false;

            keyboard_string = "";

            audio_play_sound(snd_select, 1, false);
        }

        exit;
    }




    if (confirmar)
    {
        digitando_codigo = true;

        keyboard_string = codigo_entrada;

        audio_play_sound(snd_select, 1, false);

        exit;
    }




    if (keyboard_check_pressed(vk_escape))
    {
        estado = 0;
        codigo_entrada = "";
        keyboard_string = "";
    }

    exit;




if (digitando_nickname)
{
  

    if (confirmar)
    {
       
        if (string_length(keyboard_string) > string_length(nickname))
        {
            var ultimo = string_char_at(
                keyboard_string,
                string_length(keyboard_string)
            );

            if (string_lower(ultimo) == "z")
            {
                keyboard_string = string_delete(
                    keyboard_string,
                    string_length(keyboard_string),
                    1
                );
            }
        }

        nickname = keyboard_string;

        if (string_length(nickname) > limite_nickname)
        {
            nickname = string_copy(nickname, 1, limite_nickname);
        }

        digitando_nickname = false;

       
        keyboard_string = "";

        audio_play_sound(snd_select, 1, false);

        exit;
    }




    var texto_novo = keyboard_string;

    if (string_length(texto_novo) > limite_nickname)
    {
        texto_novo = string_copy(
            texto_novo,
            1,
            limite_nickname
        );

        keyboard_string = texto_novo;
    }

    nickname = texto_novo;

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
        opcao = 3;
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

    if (opcao > 3)
    {
        opcao = 0;
    }

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




    if (opcao == 1)
    {
        if (string_length(nickname) < 1)
        {
            show_debug_message("É necessário ter um nickname!");

            exit;
        }


 

        var letras = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

       

        var numeros = "0123456789";

        var lista = [];


        for (var l = 0; l < 5; l++)
        {
            array_push(
                lista,
                string_char_at(
                    letras,
                    irandom(25) + 1
                )
            );
        }


        for (var n = 0; n < 5; n++)
        {
            array_push(
                lista,
                string_char_at(
                    numeros,
                    irandom(9) + 1
                )
            );
        }

    

        for (var embaralhar = 0; embaralhar < 20; embaralhar++)
        {
            var a = irandom(9);
            var b = irandom(9);

            var temp = lista[a];

            lista[a] = lista[b];
            lista[b] = temp;
        }




        codigo_sala = "";

        for (var c = 0; c < 10; c++)
        {
            codigo_sala += lista[c];
        }


        estado = 1;

        exit;
    }




    if (opcao == 2)
    {
        if (string_length(nickname) < 1)
        {
            show_debug_message("É necessário ter um nickname!");

            exit;
        }


        codigo_entrada = "";

        estado = 2;

        digitando_codigo = true;

        keyboard_string = "";

        exit;
    }




    if (opcao == 3)
    {
        keyboard_string = "";

        room_goto(rm_menu);
    }
}
