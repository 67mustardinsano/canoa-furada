draw_set_font(fnt_determination);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var espaco = 640 / quantidade_personagens;
var pos_y = 400;
for (var i=0; i < quantidade_personagens; i++)
{var pos_x = espaco * i + espaco / 2;
	if (i == personagem_atual)
	{draw_set_colour(c_aqua);

 }
    else
    {
	draw_set_colour(c_white);
	 }
if (turno == 0)
{draw_text(room_width / 2, 100, "turno de nois");
}else{
	draw_text(room_width / 2, 100, "turno do fia da puta");
}
    draw_text(pos_x, pos_y, "PERSONAGEM " + string(i + 1));
}
	 