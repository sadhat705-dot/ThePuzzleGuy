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
