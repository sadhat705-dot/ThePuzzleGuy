// CAIXA TEXTO
if (state == 2)
{
    var txt = "quando eu ajeitar minha vida eu vou vingar meu irmão";
}
else if (state == 3)
{
    var txt = "uau tudo é meio azul e verde!";
}
else
{
    txt = "";
}

if (txt != "")
{
 var h = 56;
var box_y = room_height - h - 12;

draw_set_alpha(0.85);
draw_set_color(c_black);
draw_rectangle(16, box_y, room_width-16, box_y+h, false);

draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(16, box_y, room_width-16, box_y+h, true);

draw_text(32, box_y+16, txt);

if (current_time div 400 mod 2 == 0)
    draw_text(room_width-150, box_y+h-22, "Press SPACE");

}
// OBJETIVO NO TOPO
if (state == 1)
{
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(12, 12, 340, 44, false);

    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_rectangle(12, 12, 340, 44, true);

    draw_text(22, 22, "Objetivo: atravesse o cano");
}

// FADE
if (fade > 0)
{
    draw_set_alpha(fade/255);
    draw_set_color(c_black);
    draw_rectangle(0,0,room_width,room_height,false);
    draw_set_alpha(1);
}
