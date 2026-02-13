if (paused) {

    // 1️⃣ Tela de fundo semi-transparente
    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

    // 2️⃣ Caixa central de pause
    var box_width = 400;
    var box_height = 200;
    var box_x1 = (room_width - box_width) / 2;
    var box_y1 = (room_height - box_height) / 2;
    var box_x2 = box_x1 + box_width;
    var box_y2 = box_y1 + box_height;

    draw_set_color(c_gray);
    draw_set_alpha(0.9);
   draw_roundrect(box_x1, box_y1, box_x2, box_y2, 16); // bordas arredondadas
    draw_set_alpha(1);

    // 3️⃣ Texto de pause com sombra
    var text = "PAUSADO";
    var text_x = room_width / 2;
    var text_y = room_height / 2 - 30;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // sombra
    draw_set_color(c_black);
    draw_text(text_x + 2, text_y + 2, text);

    // texto principal
    draw_set_color(c_white);
    draw_text(text_x, text_y, text);

    // 4️⃣ Texto de instrução
    draw_set_color(c_white);
    draw_text(text_x, text_y + 50, "Pressione ESC para continuar");

}
