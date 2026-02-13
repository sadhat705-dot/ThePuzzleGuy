// Player 1
if (instance_exists(obj_player) && place_meeting(x, y, obj_player)) {
    obj_player.x = target_p1_x;
    obj_player.y = target_y;
	global.p1_life -= 3
}


