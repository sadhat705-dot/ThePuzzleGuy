// salva estado
draw_set_alpha(1);

// desenha linha
draw_set_color(c_red);
draw_line(start_x, start_y, end_x, end_y);

// VOLTA PRA BRANCO (isso é o segredo)
draw_set_color(c_white);

// desenha sprite normal
draw_self();
