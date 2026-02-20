draw_self()

if (alpha > 0.01)
{
	var xx = x + 24;
	var yy = y - 48 + sin(float) * 3;

	var w = 270;
	var h = 56;

	// CAIXA PRETA
	draw_set_alpha(alpha * 0.8);
	draw_set_color(c_black);
	draw_roundrect(xx - w/2, yy - h/2, xx + w/2, yy + h/2, false);

	// TEXTO BRANCO
	draw_set_alpha(alpha);
	draw_set_color(c_white);
	draw_text(xx - w/2 + 12, yy - 12, text);

	draw_set_alpha(1);
	draw_set_color(c_white);
}
