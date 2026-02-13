// desenha o NPC
draw_self();

// caixa de texto
if (show) {

    var bx = camera_get_view_x(view_camera[0]) + 32;
    var by = camera_get_view_y(view_camera[0]) + 32;

    draw_sprite(spr_textbox, 0, bx, by);

    draw_set_color(c_black);

    draw_text_transformed(
        bx + 24,
        by + 20,
        string_copy(text, 1, char_index),
        0.6,
        0.6,
        0
    );
}
