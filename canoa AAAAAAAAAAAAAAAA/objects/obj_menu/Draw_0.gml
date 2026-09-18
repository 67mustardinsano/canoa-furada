draw_set_font(fnt_determination);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);

draw_rectangle(
    0,
    0,
    room_width,
    room_height,
    false
);

if (room == rm_menu)
{
    draw_set_halign(fa_center);

    draw_set_color(c_white);

    draw_text(
        room_width / 2,
        80,
        "A CANOA"
    );

    draw_text(
        room_width / 2,
        120,
        "QUE ESTA"
    );

    draw_set_color(
        make_color_rgb(80, 200, 255)
    );

    draw_text(
        room_width / 2,
        160,
        "FURADA"
    );

    var inicio_y = 240;
    var espacamento = 65;

    draw_set_halign(fa_left);

    for (var i = 0; i < array_length(menu_principal); i++)
    {
        var posicao_y = inicio_y + i * espacamento;

        if (i == opcao)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_text(
                100 + seta_offset,
                posicao_y,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_text(
            145,
            posicao_y,
            menu_principal[i]
        );
    }
}

if (room == rm_extras)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_set_color(c_white);

    draw_text(
        room_width / 2,
        70,
        "EXTRAS"
    );

    var extras_inicio_y = 180;
    var extras_espacamento = 60;

    var extras_opcoes = [
        "CHEFES",
        "AREAS",
        "PERSONAGENS",
        "VOLTAR"
    ];

    draw_set_halign(fa_left);

    for (var i = 0; i < array_length(extras_opcoes); i++)
    {
        var extras_y =
            extras_inicio_y +
            i * extras_espacamento;

        if (i == opcao_extras)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_text(
                100 + seta_offset,
                extras_y,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_text(
            145,
            extras_y,
            extras_opcoes[i]
        );
    }

    draw_set_halign(fa_center);
    draw_set_color(c_white);

    draw_text(
        room_width / 2 + 260,
        150,
        "A CANOA FURADA"
    );

    draw_text(
        room_width / 2 + 260,
        195,
        "CRIADO POR:"
    );

    draw_text(
        room_width / 2 + 260,
        240,
        "GUIGOES69"
    );

    draw_text(
        room_width / 2 + 260,
        280,
        "GOWO"
    );

    draw_text(
        room_width / 2 + 260,
        320,
        "FOX"
    );

    draw_text(
        room_width / 2 + 260,
        360,
        "MAXLOL__"
    );

    draw_text(
        room_width / 2 + 260,
        400,
        "BANNYAKURA"
    );
}

if (room == rm_configuracoes)
{
    if (ajustando_audio)
    {
        draw_set_halign(fa_center);
        draw_set_color(c_white);

        draw_text(
            room_width / 2,
            60,
            "AUDIO"
        );

        var x_inicio = room_width / 2 - 280;

        var y_musica = 145;
        var y_efeitos = 205;
        var y_total = 265;
        var y_voltar = 335;

        if (opcao_audio == 0)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_set_halign(fa_left);

            draw_text(
                x_inicio + seta_offset,
                y_musica,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_set_halign(fa_left);

        draw_text(
            x_inicio + 45,
            y_musica,
            "MUSICA:"
        );

        draw_set_halign(fa_center);

        draw_text(
            room_width / 2 + 20,
            y_musica,
            "<-"
        );

        draw_text(
            room_width / 2 + 90,
            y_musica,
            string(global.config_musica)
        );

        draw_text(
            room_width / 2 + 160,
            y_musica,
            "->"
        );

        if (opcao_audio == 1)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_set_halign(fa_left);

            draw_text(
                x_inicio + seta_offset,
                y_efeitos,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_set_halign(fa_left);

        draw_text(
            x_inicio + 40,
            y_efeitos,
            "EFEITOS SONOROS:"
        );

        draw_set_halign(fa_center);

        draw_text(
            room_width / 2 + 150,
            y_efeitos,
            "<-"
        );

        draw_text(
            room_width / 2 + 220,
            y_efeitos,
            string(global.config_efeitos)
        );

        draw_text(
            room_width / 2 + 290,
            y_efeitos,
            "->"
        );

        if (opcao_audio == 2)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_set_halign(fa_left);

            draw_text(
                x_inicio + seta_offset,
                y_total,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_set_halign(fa_left);

        draw_text(
            x_inicio + 45,
            y_total,
            "TOTAL:"
        );

        draw_set_halign(fa_center);

        draw_text(
            room_width / 2 + 20,
            y_total,
            "<-"
        );

        draw_text(
            room_width / 2 + 90,
            y_total,
            string(global.config_audio)
        );

        draw_text(
            room_width / 2 + 160,
            y_total,
            "->"
        );

        if (opcao_audio == 3)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_set_halign(fa_left);

            draw_text(
                x_inicio + seta_offset,
                y_voltar,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_set_halign(fa_left);

        draw_text(
            x_inicio + 45,
            y_voltar,
            "VOLTAR"
        );
    }
    else
    {
        draw_set_halign(fa_center);
        draw_set_color(c_white);

        draw_text(
            room_width / 2,
            55,
            "CONFIGURACOES"
        );

        var x_seta = room_width / 2 - 235;
        var x_nome = room_width / 2 - 190;
        var x_valor = room_width / 2 + 120.67;

        var y_audio = 125;
        var y_tela = 180;
        var y_dublagem = 235;
        var y_teclado = 290;
        var y_voltar = 345;

        if (opcao == 0)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_set_halign(fa_left);

            draw_text(
                x_seta + seta_offset,
                y_audio,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_set_halign(fa_left);

        draw_text(
            x_nome,
            y_audio,
            "AUDIO:"
        );

        draw_set_halign(fa_center);

        draw_text(
            x_valor,
            y_audio,
            string(global.config_audio)
        );

        if (opcao == 1)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_set_halign(fa_left);

            draw_text(
                x_seta + seta_offset,
                y_tela,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_set_halign(fa_left);

        draw_text(
            x_nome,
            y_tela,
            "TELA:"
        );

        draw_set_halign(fa_center);

        if (global.config_tela_cheia)
        {
            draw_text(
                x_valor,
                y_tela,
                "CHEIA"
            );
        }
        else
        {
            draw_text(
                x_valor,
                y_tela,
                "JANELA"
            );
        }

        if (opcao == 2)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_set_halign(fa_left);

            draw_text(
                x_seta + seta_offset,
                y_dublagem,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_set_halign(fa_left);

        draw_text(
            x_nome,
            y_dublagem,
            "DUBLAGEM:"
        );

        draw_set_halign(fa_center);

        if (global.config_dublagem)
        {
            draw_text(
                x_valor,
                y_dublagem,
                "SIM"
            );
        }
        else
        {
            draw_text(
                x_valor,
                y_dublagem,
                "NAO"
            );
        }

        if (opcao == 3)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_set_halign(fa_left);

            draw_text(
                x_seta + seta_offset,
                y_teclado,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_set_halign(fa_left);

        draw_text(
            x_nome,
            y_teclado,
            "TECLADO:"
        );

        draw_set_halign(fa_center);

        if (global.config_teclado_wasd)
        {
            draw_text(
                x_valor,
                y_teclado,
                "WASD E ENTER"
            );
        }
        else
        {
            draw_text(
                x_valor,
                y_teclado,
                "SETAS E Z"
            );
        }

        if (opcao == 4)
        {
            draw_set_color(
                make_color_rgb(80, 200, 255)
            );

            draw_set_halign(fa_left);

            draw_text(
                x_seta + seta_offset,
                y_voltar,
                "->"
            );
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_set_halign(fa_left);

        draw_text(
            x_nome,
            y_voltar,
            "VOLTAR"
        );
    }
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);