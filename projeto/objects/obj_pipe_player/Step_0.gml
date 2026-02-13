var pressing = keyboard_check_pressed(vk_space);

// avança quando aperta espaço
if (pressing)
{
	 audio_play_sound(Jump2,0,false);
    progress += 6;
    move_timer = 10;
}

// posição no cano reto
x = lerp(64, room_width - 64, progress / 100);

// limite
progress = clamp(progress, 0, 100);

// animação
if (move_timer > 0)
{
    sprite_index = spr_pipe_player_walk;
    move_timer--;
}
else
{
    sprite_index = spr_pipe_player_idle;
}
