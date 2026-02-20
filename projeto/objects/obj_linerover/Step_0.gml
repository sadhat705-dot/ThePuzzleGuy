t += (spd / line_length) * dir;

if (t >= 1)
{
    t = 1;
    dir = -1;
}
if (t <= 0)
{
    t = 0;
    dir = 1;
}

x = lerp(start_x, end_x, t);
y = lerp(start_y, end_y, t);
image_angle = line_angle;

// =====================
// PLAYER MORRE AO TOCAR
// =====================
if (place_meeting(x, y, obj_player))
{
	with (obj_player)
	{
		global.p1_life =- 3
	}
}
