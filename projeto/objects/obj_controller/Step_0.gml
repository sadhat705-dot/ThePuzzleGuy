timer += 0.01;

scroll_x += speed_x;
scroll_y += speed_y;

if (
	(room == rm_level1 ||
	room == rm_level2 ||
	room == rm_level3 ||
	room == rm_level4 ||
	room == rm_level5)
	&& !audio_is_playing(Level_1)
)
{
	audio_play_sound(Level_1, 0, true);
}
else if (
	room != rm_level1 &&
	room != rm_level2 &&
	room != rm_level3 &&
	room != rm_level4 &&
	room != rm_level5
)
{
	audio_stop_sound(Level_1);
}
