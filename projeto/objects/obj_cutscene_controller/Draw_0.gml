// CAIXA DE TEXTO
if (state == 1 || state == 3)
{
    var box_h = 64;
    var box_y = room_height - box_h - 16;

    // FUNDO
    draw_set_alpha(0.85);
	draw_set_font(fnt_menu)
    draw_set_color(c_black);
    draw_rectangle(16, box_y, room_width-16, box_y + box_h, false);

    // BORDA
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_rectangle(16, box_y, room_width-16, box_y + box_h, true);

    // TEXTO
    draw_text(32, box_y + 18,
        state == 1 ? dialog[dialog_index] : dialog2[0]);
		// "Press SPACE" piscando
if (current_time div 400 mod 2 == 0)
{
    draw_text(room_width - 170, box_y + box_h - 24, "Press SPACE");
}

}
if (state == 2)
{
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(8, 8, 360, 40, false);

    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(16, 16, "Objetivo: fuja pelo buraco no poster");
}



// FADE
if (fade > 0)
{
    draw_set_alpha(fade/255);
    draw_set_color(c_black);
    draw_rectangle(0,0,room_width,room_height,false);
    draw_set_alpha(1);
}
