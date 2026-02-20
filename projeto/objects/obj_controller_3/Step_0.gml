timer += 0.01;

scroll_x += speed_x;
scroll_y += speed_y;
timer += 0.01;

scroll_x += speed_x;
scroll_y += speed_y;

if (
	(room == rm_level11   || room == rm_level12
	|| room == rm_level13 || room == rm_level14
	)
	&& !audio_is_playing(Level_3)
)
{
	audio_play_sound(Level_3, 0, true);
}
else if (
	room != rm_level11 && room != rm_level12 
	&& room != rm_level13  && room != rm_level14
)
{
	audio_stop_sound(Level_3);
}
