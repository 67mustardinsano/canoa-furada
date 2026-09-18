draw_set_font(fnt_determination);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

draw_rectangle(0, 0, room_width, room_height, true);

if (estado == 0)
{
	
draw_set_color(make_color_rgb(80,200,255));
    draw_text(room_width / 2, 60, "MULTIPLAYER");

    draw_set_color(make_color_rgb(80, 200, 255));
    draw_text(100 + seta_offset, 150 + opcao * 70, "->");

    draw_set_color(opcao == 0 ? make_color_rgb(80, 200, 255) : c_white);
    draw_text(240, 150, "NICKNAME:");
	draw_set_color(c_white);
	draw_line(0,180, room_width - 0,180);
	
    draw_set_color(opcao == 0 ? make_color_rgb(80, 200, 255) : c_white);
    draw_text(600, 150, nickname);

    draw_set_color(opcao == 1 ? make_color_rgb(80, 200, 255) : c_white);
    draw_text(240, 220, "CRIAR SALA");

    draw_set_color(opcao == 2 ? make_color_rgb(80, 200, 255) : c_white);
    draw_text(325, 290, "ENTRAR EM UMA SALA");

    exit;
}

if (estado == 1)
{
    draw_set_color(c_white);
    draw_text(room_width / 2, 45, "SALA");

    draw_set_color(make_color_rgb(80, 200, 255));
    draw_text(room_width / 2, 85, codigo_sala);

draw_set_color(c_white);

draw_line(0, 175, room_width - 0, 175);

draw_set_color(
    jogadores[0] == ""
    ? c_white
    : make_color_rgb(80, 200, 255)
);

draw_text(
    250,
    150,
    jogadores[0] == ""
    ? "AGUARDANDO..."
    : jogadores[0]
);

if (jogadores[0] != "")
{
    draw_set_color(c_white);
    draw_text(80, 150, "HOST");
}


draw_set_color(c_white);
draw_line(0, 275, room_width - 0, 275);

draw_set_color(
    jogadores[1] == ""
    ? c_white
    : make_color_rgb(80, 200, 255)
);

draw_text(
    250,
    250,
    jogadores[1] == ""
    ? "AGUARDANDO JOGADOR..."
    : jogadores[1]
);


draw_set_color(c_white);
draw_line(0, 375, room_width - 0, 375);

draw_set_color(
    jogadores[2] == ""
    ? c_white
    : make_color_rgb(80, 200, 255)
);

draw_text(
    250,
    350,
    jogadores[2] == ""
    ? "AGUARDANDO JOGADOR..."
    : jogadores[2]
);
    draw_set_color(
        opcao_lobby == 0
        ? make_color_rgb(80, 200, 255)
        : c_white
    );

    draw_text(290, 485, "INICIAR");

    draw_set_color(
        opcao_lobby == 1
        ? make_color_rgb(80, 200, 255)
        : c_white
    );

    draw_text(283, 535, "VOLTAR");

    draw_set_color(make_color_rgb(80, 200, 255));
    draw_text(
        190 + seta_offset,
        opcao_lobby == 0 ? 485 : 535,
        "->"
    );

    exit;
}

if (estado == 2)
{
    draw_set_color(c_white);
    draw_text(room_width / 2, 70, "ENTRAR EM UMA SALA");

    draw_text(
        room_width / 2,
        140,
        "DIGITE O CODIGO DA SALA."
    );

    draw_set_color(make_color_rgb(80, 200, 255));

    draw_rectangle(
        room_width / 2 - 180,
        190,
        room_width / 2 + 180,
        250,
        true
    );

    draw_text(
        room_width / 2,
        220,
        codigo_entrada
    );

    if (digitando_codigo)
    {
        draw_text(
            room_width / 2 + string_width(codigo_entrada) / 2 + 8,
            220,
            "_"
        );
    }

    exit;
}

if (estado == 3)
{
    draw_set_color(c_white);
    draw_text(room_width / 2, 140, "TEM CERTEZA?");

    draw_set_color(
        opcao_lobby == 0
        ? make_color_rgb(80, 200, 255)
        : c_white
    );

    draw_text(300, 230, "SIM");

    draw_set_color(
        opcao_lobby == 1
        ? make_color_rgb(80, 200, 255)
        : c_white
    );

    draw_text(300, 290, "NAO");

    draw_set_color(make_color_rgb(80, 200, 255));

    draw_text(
        250 + seta_offset,
        opcao_lobby == 0 ? 230 : 290,
        "->"
    );

    exit;
}

if (estado == 4)
{
    draw_set_color(c_white);
    draw_text(room_width / 2, 80, "MULTIPLAYER");

    draw_set_color(
        opcao_menu_jogo == 0
        ? make_color_rgb(80, 200, 255)
        : c_white
    );

    draw_text(380, 200, "CAPITULOS");

    draw_set_color(
        opcao_menu_jogo == 1
        ? make_color_rgb(80, 200, 255)
        : c_white
    );

    draw_text(348, 260, "EXTRAS");

    draw_set_color(make_color_rgb(80, 200, 255));

    draw_text(
        250 + seta_offset,
        opcao_menu_jogo == 0 ? 200 : 260,
        "->"
    );
draw_set_color(opcao == 3 ? make_color_rgb(80, 200, 255) : c_white);
draw_text(250, 600, "VOLTAR");

draw_set_color(make_color_rgb(80, 200, 255));
draw_text(200 + seta_offset, 600, "->");

    exit;
}
 

