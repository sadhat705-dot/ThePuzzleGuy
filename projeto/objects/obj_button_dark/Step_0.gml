if (place_meeting(x, y, obj_player) && keyboard_check_pressed(ord("F")))
{
    pressed = !pressed;
    global.dark_mode = pressed;

    if (pressed)
    {
        image_xscale = -1;
    }
    else
    {
        image_xscale = 1;
    }
}

// sprite 0 = desligado
// sprite 1 = ligado
image_index = pressed;
