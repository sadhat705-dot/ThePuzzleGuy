draw_self();

if (fade > 0)
{
	draw_set_color(c_black); // FORÇA PRETO
	draw_set_alpha(fade);
	draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
	draw_set_alpha(1);
	draw_set_color(c_white); // volta padrão
}
