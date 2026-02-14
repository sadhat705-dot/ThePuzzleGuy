// ===============================
// ALAVANCAS (todas precisam estar ativas)
// ===============================
var all_active = true;

with (obj_lever)
{
	if (!active) all_active = false;
}

if (all_active && instance_number(obj_lever) > 0)
{
	sprite_index = sprite_open;
	solid = false;
}
else
{
	sprite_index = sprite_closed;
	solid = true;
}

// ===============================
// BOTÃO NORMAL (NÃO FUNCIONA NO LEVEL6)
// ===============================
if (room != rm_level6)
{
	if (instance_exists(obj_button))
	{
		if (obj_button.is_pressed)
		{
			sprite_index = sprite_open;
			solid = false;
		}
		else
		{
			sprite_index = sprite_closed;
			solid = true;
		}
	}
}

// ===============================
// BOTÃO PYR (FUNCIONA EM QUALQUER FASE)
// ===============================
if (instance_exists(obj_button_pyr))
{
	if (obj_button_pyr.pressed)
	{
		sprite_index = sprite_open;
		solid = false;
	}
	else
	{
		sprite_index = sprite_closed;
		solid = true;
	}
}

// ===============================
// FADE IN AO ENTRAR NA ROOM
// ===============================
if (fading_in)
{
	fade -= fade_speed;

	if (fade <= 0)
	{
		fade = 0;
		fading_in = false;
	}
}

// ===============================
// PLAYER ENTROU NA PORTA
// ===============================
if (!solid && place_meeting(x, y, obj_player) && !go_next)
{
	go_next = true;
}

// ===============================
// FADE OUT
// ===============================
if (go_next)
{
	fade += fade_speed;

	if (fade >= 1)
	{
		room_goto(rm_next);
	}
}
