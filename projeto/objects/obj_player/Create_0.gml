// Movimento
global.spd = 4;
spd = global.spd;

// Física
grav = 0.5;
jump = -8.5;
vsp = 0;
hsp = 0;

// Sprite
image_speed = 0.2;

start_x = x;
start_y = y;

gravity_mode = 0;

scale = false;
wall_lock = false;

hurt_timer = 0;

step_timer = 0;
step_delay = 12;

walk_sound = -1;

can_move = true;

if (variable_global_exists("load_x"))
{
    x = global.load_x;
    y = global.load_y;
}

was_jumping = false;
jump_pressed = false;
