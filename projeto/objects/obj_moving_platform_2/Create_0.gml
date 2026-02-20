start_x = x;
target_x = x;		
active = false;
									
move_dist = 32 * 8; // 128 pixels
speed = 2;
if (room == rm_level9) {
	sprite_index = spr_ground_4_purple
}else 
{
	sprite_index = spr_ground_4
}