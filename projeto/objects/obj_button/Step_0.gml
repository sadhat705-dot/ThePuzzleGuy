if (place_meeting(x, y - 2, obj_block))
{
	is_pressed = true;
	sprite_index = spr_button_down_green;
}
else
{
	is_pressed = false;
	sprite_index = spr_button_up_green;
}

