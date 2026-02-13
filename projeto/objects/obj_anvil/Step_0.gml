// pega player
var p = instance_nearest(x, y, obj_player);

if (p != noone && !falling)
{
	// mesma coluna (32x32)
	if (floor(p.x / tile) == floor(x / tile))
	{
		falling = true;
	}
}

// gravidade só quando cai
if (falling)
{
	vsp += grav;
	y += vsp;
}

// colisão com chão
if (falling && place_meeting(x, y + vsp, obj_ground))
{
	while (!place_meeting(x, y + sign(vsp), obj_ground))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

// matar player
if (place_meeting(x, y, obj_player))
{
	global.p1_life =- 3
}
