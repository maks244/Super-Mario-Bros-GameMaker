function slide_move_player_check(x, y, hsp){
	if (hsp < 0.7) && (hsp > -0.7) {
		if (!instance_position(x-8, y+8, parent_solid)) {
			if (position_meeting(x+2, y+17, obj_player)) slide_move_player(-6)
			if (position_meeting(x, y+17, obj_player)) slide_move_player(-3)
		}
		if (!instance_position(x+24, y+8, parent_solid)) {
			if (position_meeting(x+14, y+17, obj_player)) slide_move_player(6)
			if (position_meeting(x+16, y+17, obj_player)) slide_move_player(3)
		}
	}
}