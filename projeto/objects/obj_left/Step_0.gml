// Player 1
if (instance_exists(obj_player) && place_meeting(x, y, obj_player)) {
    obj_player.x = target_p1_x;
    obj_player.y = target_y;
	
}


if (instance_exists(obj_block) && place_meeting(x, y, obj_block)) {
    obj_block.x = target_block_x;
    obj_block.y = target_y;
	
}
