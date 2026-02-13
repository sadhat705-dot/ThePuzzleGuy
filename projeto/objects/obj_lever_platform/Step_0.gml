if (distance_to_object(obj_player) < 32 && keyboard_check_pressed(ord("F")))
{
	active = !active;
	image_xscale = active ? -1 : 1;

	// plataforma tipo 1
	var p1 = instance_nearest(x, y, obj_moving_platform);
	if (p1 != noone) p1.active = active;

	// plataforma tipo 2
	var p2 = instance_nearest(x, y, obj_moving_platform_2);
	if (p2 != noone) p2.active = active;
}
