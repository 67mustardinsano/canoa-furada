draw_set_font(fnt_textos);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(20, 20, "HP: " + string(vida) + " / " + string(vida_maxima));
draw_text(20, 40, "O JOGO");
draw_self();