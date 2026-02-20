// ===============================
// INPUT SOMENTE SE PUDER MOVER
// ===============================
h = 0;

if (can_move)
{
	 h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	hsp = h * spd;

	// ===============================
	// PULO (chão OU plataformas)
	// ===============================
	if (
		place_meeting(x, y + 1, obj_ground) ||
		place_meeting(x, y + 1, obj_moving_platform) ||
		place_meeting(x, y + 1, obj_moving_platform_2) ||
		(global.dark_mode && place_meeting(x, y + 1, obj_phanton_block))
	)
	{
		jump_pressed = keyboard_check_pressed(vk_space);

		if (jump_pressed)
		{
			vsp = jump;
			audio_play_sound(Pular, 1, false);
		}
	}
}
else
{
	hsp = 0;
}

// ===============================
// SOM DE PASSO
// ===============================
var on_ground =
	place_meeting(x, y + 1, obj_ground) ||
	place_meeting(x, y + 1, obj_moving_platform) ||
	place_meeting(x, y + 1, obj_moving_platform_2) ||
	(global.dark_mode && place_meeting(x, y + 1, obj_phanton_block));

var walking = (h != 0);

if (can_move && on_ground && walking)
{
	if (walk_sound == -1)
	{
		walk_sound = audio_play_sound(Passos, 1, true);
	}
}
else
{
	if (walk_sound != -1)
	{
		audio_stop_sound(walk_sound);
		walk_sound = -1;
	}
}

// ===============================
// GRAVIDADE
// ===============================
vsp += grav;
vsp = clamp(vsp, -20, 20);

// ===============================
// COLISÃO X
// ===============================
if (hsp != 0 && (
	place_meeting(x + hsp, y, obj_ground) ||
	place_meeting(x + hsp, y, obj_moving_platform) ||
	place_meeting(x + hsp, y, obj_moving_platform_2) ||
	(global.dark_mode && place_meeting(x + hsp, y, obj_phanton_block))
))
{
	while (
		!place_meeting(x + sign(hsp), y, obj_ground) &&
		!place_meeting(x + sign(hsp), y, obj_moving_platform) &&
		!place_meeting(x + sign(hsp), y, obj_moving_platform_2) &&
		!(global.dark_mode && place_meeting(x + sign(hsp), y, obj_phanton_block))
	)
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

// ===============================
// COLISÃO Y
// ===============================
if (vsp != 0 && (
	place_meeting(x, y + vsp, obj_ground) ||
	place_meeting(x, y + vsp, obj_moving_platform) ||
	place_meeting(x, y + vsp, obj_moving_platform_2) ||
	(global.dark_mode && place_meeting(x, y + vsp, obj_phanton_block))
))
{
	while (
		!place_meeting(x, y + sign(vsp), obj_ground) &&
		!place_meeting(x, y + sign(vsp), obj_moving_platform) &&
		!place_meeting(x, y + sign(vsp), obj_moving_platform_2) &&
		!(global.dark_mode && place_meeting(x, y + sign(vsp), obj_phanton_block))
	)
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;


// ===============================
// SPRITES
// ===============================
// PLAYER ANDANDO?
// ===============================
if (h != 0)
{
    image_xscale = sign(h);

    if (room == rm_level6
    || room == rm_level7
    || room == rm_level8
    || room == rm_level9
    || room == rm_level10)
    {
        sprite_index = spr_player_walk_red;
    }
    else if (room == rm_level11
	|| room == rm_level12
	|| room == rm_level13
	|| room == rm_level14)
    {
        sprite_index = spr_player_walk_gray;
    }
    else
    {
        sprite_index = spr_player_walk;
    }
}
else
{
    if (room == rm_level6
    || room == rm_level7
    || room == rm_level8
    || room == rm_level9
    || room == rm_level10)
    {
        sprite_index = spr_player_idle_red;
    }
    else if (room == rm_level11 
	|| room == rm_level12
	|| room == rm_level13
	|| room == rm_level14)
    {
        sprite_index = spr_player_idle_gray;
    }
    else
    {
        sprite_index = spr_player_idle;
    }
}


// ===============================
// INVENCIBILIDADE
// ===============================
if (hurt_timer > 0) hurt_timer--;

// ===============================
// ESPINHOS
// ===============================
if (place_meeting(x, y, obj_spike) && hurt_timer <= 0)
{
	global.p1_life -= 1;
	hurt_timer = 60;

	vsp = -6;
	hsp = -image_xscale * 4;
}



if (keyboard_check_pressed(ord("F")))
{
    var e = instance_place(x, y, obj_leverrover);

    if (e != noone && !e.activated)
    {
        e.activated = true;

        e.image_index = 1; // frame da alavanca ativada

        global.enemy_done += 1;
    }
}

