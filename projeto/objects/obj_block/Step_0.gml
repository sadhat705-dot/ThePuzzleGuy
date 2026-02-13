// GRAVIDADE
vsp += grav;
vsp = clamp(vsp, -20, 20);

// MOVIMENTO VERTICAL
if (place_meeting(x, y + vsp, obj_ground))
{
	while (!place_meeting(x, y + sign(vsp), obj_ground))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// EMPURRAR SOMENTE X COM F
hsp = 0;

if (keyboard_check(ord("F")) && distance_to_object(obj_player) < 12)
{
	if (obj_player.x < x)
	{
		hsp = push_spd;
	}
	else
	{
		hsp = -push_spd;
	}
}

// COLISÃO X
if (place_meeting(x + hsp, y, obj_ground) || place_meeting(x + hsp, y, obj_block))
{
	hsp = 0;
}

x += hsp;
