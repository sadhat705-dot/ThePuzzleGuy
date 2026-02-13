// checa player em cima
if (place_meeting(x, y - 1, obj_player))
{
	pressed = true;
}


// sprite
sprite_index = pressed ? sprite_down : sprite_up;

// manda estado pra porta
with (obj_door)
{
	button_pyr_active = other.pressed;
}
