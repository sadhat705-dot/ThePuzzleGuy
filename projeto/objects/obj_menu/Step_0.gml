var mx = mouse_x;
var my = mouse_y;

// JOGAR
var wj = sprite_get_width(spr_btn_jogar) * scale_hover;
var hj = sprite_get_height(spr_btn_jogar) * scale_hover;

hover_jogar = (mx > btn_jogar_x - wj/2 && mx < btn_jogar_x + wj/2 &&
               my > btn_jogar_y - hj/2 && my < btn_jogar_y + hj/2);

// SAIR
var ws = sprite_get_width(spr_btn_sair) * scale_hover;
var hs = sprite_get_height(spr_btn_sair) * scale_hover;

hover_sair = (mx > btn_sair_x - ws/2 && mx < btn_sair_x + ws/2 &&
              my > btn_sair_y - hs/2 && my < btn_sair_y + hs/2);

// CLIQUE
if (mouse_check_button_pressed(mb_left))
{
 if (hover_jogar && !start_game)
{
    audio_stop_sound(Main_Menu);
    start_game = true;
}



    if (hover_sair)
    {
        game_end();
    }
}
// FADE
if (start_game)
{
    fade += fade_speed;

    if (fade >= 255)
    {
        room_goto(rm_cutscene1);
    }
}
