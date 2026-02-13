// JOGAR
if (hover_jogar)
{
    draw_sprite_ext(spr_btn_jogar, 0,
        btn_jogar_x, btn_jogar_y,
        scale_hover, scale_hover,
        0, c_white, 1);
}
else
{
    draw_sprite_ext(spr_btn_jogar, 0,
        btn_jogar_x, btn_jogar_y,
        scale_normal, scale_normal,
        0, c_white, 1);
}

// SAIR
if (hover_sair)
{
    draw_sprite_ext(spr_btn_sair, 0,
        btn_sair_x, btn_sair_y,
        scale_hover, scale_hover,
        0, c_white, 1);
}
else
{
    draw_sprite_ext(spr_btn_sair, 0,
        btn_sair_x, btn_sair_y,
        scale_normal, scale_normal,
        0, c_white, 1);
}
// DESENHA FADE PRETO
draw_set_color(c_black);

if (fade > 0)
{
    draw_set_alpha(fade / 255);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
}
