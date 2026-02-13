if (distance_to_object(obj_player) < 32 && keyboard_check_pressed(ord("F")))
{
	active = !active;
	image_xscale = active ? -1 : 1;
}
