draw_set_font(fnt_determination);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_white);






var quantidade = 6;


var espaco = room_height / quantidade;
 var pos_x = room_width / 2;






for (var i = 0; i < quantidade; i++)
{
   var pos_y = espaco * i + espaco / 2;
var espaco = 100;
var inicio_y = 150;
draw_line(0, 100, room_width, 100);
draw_line(0, 200, room_width, 200);
draw_line(0, 300, room_width, 300);
draw_line(0, 400, room_width, 400);
draw_line(0, 500, room_width, 500);
draw_line(0, 600, room_width, 600);

    if (i == capitulo_selecionado)
    {
        draw_set_color(make_color_rgb(80, 200, 255));

        draw_text(
            pos_x - 110 + seta_offset,
            pos_y,
            "->"
        );
    }
    else
    {
        draw_set_color(c_white);
    }


   

    if (i == 0)
    {
        draw_text(
            pos_x - 490,
            pos_y,
            "CAPITULO 1"
        );

        draw_text(
            pos_x,
            pos_y,
            "O Inicio"
        );
    }
    else
    {
      

        draw_text(
            pos_x,
            pos_y,
            "O JOGO"
        );
    }
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);


draw_rectangle(1200, 20, 1300, 100, true);
//draw_sprite pra desenhar o sprite dps viu fox verity 67
//tenta engrossa aí paizao kkkkkkkkkkkkkkkkkkkk 67 verity mogty
