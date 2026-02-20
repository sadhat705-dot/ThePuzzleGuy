// =====================
// GRAVIDADE
// =====================
vsp += grav;
vsp = clamp(vsp, -10, 10);

// =====================
// MOVIMENTO HORIZONTAL
// =====================
var hsp = spd * dir;

// vira se bater em parede ou acabar chão
if (place_meeting(x + hsp, y, obj_ground) || !place_meeting(x + dir * 8, y + 1, obj_ground))
{
	dir *= -1;
}

// aplica movimento X
if (!place_meeting(x + hsp, y, obj_ground))
	x += hsp;

// =====================
// COLISÃO Y
// =====================
if (place_meeting(x, y + vsp, obj_ground))
{
	while (!place_meeting(x, y + sign(vsp), obj_ground))
		y += sign(vsp);

	vsp = 0;
}

y += vsp;

// =====================
// SPRITE DIREÇÃO
// =====================
image_xscale = dir;

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
