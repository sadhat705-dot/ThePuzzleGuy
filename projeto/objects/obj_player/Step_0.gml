var h = 0;

// ===============================
// INPUT SOMENTE SE PUDER MOVER
// ===============================
if (can_move)
{
	h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	hsp = h * spd;

	// PULO (chão OU plataforma)
	if (place_meeting(x, y + 1, obj_ground) || place_meeting(x, y + 1, obj_moving_platform) || place_meeting(x, y + 1, obj_moving_platform_2))
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
var on_ground = place_meeting(x, y + 1, obj_ground) || place_meeting(x, y + 1, obj_moving_platform) || place_meeting(x, y + 1, obj_moving_platform_2);
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
// GRAVIDADE (SEMPRE ATIVA)
// ===============================
vsp += grav;
vsp = clamp(vsp, -20, 20);

// ===============================
// COLISÃO X
// ===============================
if (hsp != 0 && (place_meeting(x + hsp, y, obj_ground) || place_meeting(x + hsp, y, obj_moving_platform) || place_meeting(x + hsp, y, obj_moving_platform_2)))
{
	while (!place_meeting(x + sign(hsp), y, obj_ground) && !place_meeting(x + sign(hsp), y, obj_moving_platform)  && !place_meeting(x + sign(hsp), y, obj_moving_platform_2))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

// ===============================
// COLISÃO Y
// ===============================
if (vsp != 0 && (place_meeting(x, y + vsp, obj_ground) || place_meeting(x, y + vsp, obj_moving_platform) || place_meeting(x, y + vsp, obj_moving_platform_2) ))
{
	while (!place_meeting(x, y + sign(vsp), obj_ground) && !place_meeting(x, y + sign(vsp), obj_moving_platform)  && !place_meeting(x, y + sign(vsp), obj_moving_platform_2))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;


// ===============================
// SPRITES
// ===============================
if (h != 0)
{
	sprite_index = spr_player_walk;
	image_xscale = sign(h);
}
else
{
	sprite_index = spr_player_idle;
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

