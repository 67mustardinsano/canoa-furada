draw_set_font(fnt_determination);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text (room_width / 2, 70, "CHEFES (nao O chefe, CHEFES)");
draw_set_halign(fa_left);

if (opcao_chefe == 0)
{ draw_set_color(make_color_rgb(80, 200, 255));
    draw_text( 100 + seta_offset, 180, "->" );
}
else
{ draw_set_color(c_white);}
draw_text(145,180,"NULL");

if (opcao_chefe == 1)
{ draw_set_color(make_color_rgb(80, 200, 255));
    draw_text(100 + seta_offset, 240, "->" );
}
else
{
    draw_set_color(c_white);
}draw_text(145,240,"IMPERADOR-DE-PO");

if (opcao_chefe == 2)
{draw_set_color(make_color_rgb(80, 200, 255));
draw_text(100 + seta_offset,300,"->");
}
else
{
draw_set_color(c_white);
}

draw_text(145,300,"VOLTAR");

//       .-'''-.
//     .'       '.
//    /  ●     ●  \
//   |      ᴗ      |
//   |    \___/    |
//     \           /
//     '.       .'
//       '-._.-'          canoa furadity
