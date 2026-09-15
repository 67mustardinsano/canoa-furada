draw_set_font(fnt_determination);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_white);

draw_text(
    room_width / 2,
    70,
    "CAPÍTULOS"
);




var quantidade = 7;


var espaco = room_width / quantidade;


var pos_y = room_height / 2;




for (var i = 0; i < quantidade; i++)
{
    var pos_x = espaco * i + espaco / 2;




    if (i == capitulo_selecionado)
    {
        draw_set_color(make_color_rgb(80, 200, 255));

        draw_text(
            pos_x - 45,
            pos_y,
            ">"
        );
    }
    else
    {
        draw_set_color(c_white);
    }


   

    if (i == 0)
    {
        draw_text(
            pos_x,
            pos_y,
            "CAPÍTULO 1:"
        );

        draw_text(
            pos_x,
            pos_y + 45,
            "O Início"
        );
    }
    else
    {
      

        draw_text(
            pos_x,
            pos_y,
            "???"
        );
    }
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);