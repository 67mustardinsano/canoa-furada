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



if (estado == 1)
{
    draw_set_color(c_white);

    draw_text(
        room_width / 2,
        50,
        "SALA CRIADA"
    );




    var slot_y = 170;

    var espaco = 190;

    var x1 = room_width / 2 - espaco * 1.5;
    var x2 = room_width / 2 - espaco * 0.5;
    var x3 = room_width / 2 + espaco * 0.5;
    var x4 = room_width / 2 + espaco * 1.5;


  

    draw_set_color(make_color_rgb(80, 200, 255));

    draw_rectangle(
        x1 - 75,
        slot_y - 50,
        x1 + 75,
        slot_y + 50,
        false
    );


    draw_set_color(c_white);

    draw_text(
        x1,
        slot_y - 15,
        nickname
    );

    draw_text(
        x1,
        slot_y + 18,
        "Dono"
    );




    draw_set_color(c_white);

    draw_text(
        x2,
        slot_y,
        "Esperando..."
    );




    draw_text(
        x3,
        slot_y,
        "Esperando..."
    );




    draw_text(
        x4,
        slot_y,
        "Esperando..."
    );




    draw_set_color(c_white);

    draw_text(
        room_width / 2,
        290,
        "CAPÍTULO"
    );


    draw_set_color(make_color_rgb(80, 200, 255));

    draw_text(
        room_width / 2,
        330,
        "CAPÍTULO 1: O Início"
    );




    draw_set_color(c_white);

    draw_text(
        room_width / 2,
        room_height - 70,
        "CÓDIGO DA SALA:"
    );


    draw_set_color(make_color_rgb(80, 200, 255));

    draw_text(
        room_width / 2,
        room_height - 35,
        codigo_sala
    );


    exit;
}




if (estado == 2)
{
    draw_set_color(c_white);

    draw_text(
        room_width / 2,
        60,
        "ENTRAR EM UMA SALA"
    );


    draw_text(
        room_width / 2,
        140,
        "CÓDIGO DA SALA:"
    );


    draw_set_color(make_color_rgb(80, 200, 255));

    draw_text(
        room_width / 2,
        205,
        codigo_entrada
    );


    if (digitando_codigo)
    {
        draw_text(
            room_width / 2 + string_width(codigo_entrada) / 2 + 8,
            205,
            "_"
        );
    }


    draw_set_color(c_white);

    draw_text(
        room_width / 2,
        275,
        "10 CARACTERES"
    );

    draw_text(
        room_width / 2,
        330,
        "Z / ENTER PARA PRONTO"
    );

    draw_text(
        room_width / 2,
        390,
        "ESC PARA VOLTAR"
    );


    exit;
}


draw_set_color(c_white);

draw_text(
    room_width / 2,
    60,
    "MULTIPLAYER"
);




draw_set_halign(fa_left);

if (opcao == 0)
{
    draw_set_color(make_color_rgb(80, 200, 255));

    draw_text(
        100 + seta_offset,
        120,
        "->"
    );
}
else
{
    draw_set_color(c_white);
}

draw_text(
    145,
    120,
    "NICKNAME:"
);


draw_set_color(make_color_rgb(80, 200, 255));

draw_text(
    300,
    120,
    nickname
);


draw_set_color(c_white);

draw_text(
    300,
    150,
    "(1 a 25 caracteres)"
);



if (opcao == 1)
{
    draw_set_color(make_color_rgb(80, 200, 255));

    draw_text(
        100 + seta_offset,
        210,
        "->"
    );
}
else
{
    draw_set_color(c_white);
}

draw_text(
    145,
    210,
    "CRIAR SALA"
);




if (opcao == 2)
{
    draw_set_color(make_color_rgb(80, 200, 255));

    draw_text(
        100 + seta_offset,
        270,
        "->"
    );
}
else
{
    draw_set_color(c_white);
}

draw_text(
    145,
    270,
    "ENTRAR EM UMA SALA"
);




if (opcao == 3)
{
    draw_set_color(make_color_rgb(80, 200, 255));

    draw_text(
        100 + seta_offset,
        330,
        "->"
    );
}
else
{
    draw_set_color(c_white);
}

draw_text(
    145,
    330,
    "VOLTAR"
);



draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);