if (active)
{
	target_x = start_x + move_dist;
}
else
{
	target_x = start_x;
}

if (abs(x - target_x) > speed)
{
	x += sign(target_x - x) * speed;
}
else
{
	x = target_x;
}
if (room == rm_level8) {
	sprite_index = spr_ground_4_purple
}else 
{
	sprite_index = spr_ground_4
}