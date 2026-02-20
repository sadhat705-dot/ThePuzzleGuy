timer += 0.01;

scroll_x += speed_x;
scroll_y += speed_y;
timer += 0.01;

scroll_x += speed_x;
scroll_y += speed_y;

if (
	(room == rm_level6 ||
	room == rm_level7 ||
	room == rm_level8||
	room == rm_level9 ||
	room == rm_level10)
	&& !audio_is_playing(Level_2)
)
{
	audio_play_sound(Level_2, 0, true);
}
else if (
	room != rm_level6 &&
	room != rm_level7 &&
	room != rm_level8 &&
	room != rm_level9 &&
	room != rm_level10
)
{
	audio_stop_sound(Level_2);
}
