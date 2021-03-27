function player_slide_move_check(x, y, hsp){
	if (!instance_position(x-8, y+8, parent_solid) && x >= __view_get(e__VW.XView, 0)+16) {
		if (hsp < 0.4 && hsp > -0.4) {
			if (position_meeting(x+2, y+17, obj_player)) player_slide_move(-6)
			if (position_meeting(x, y+17, obj_player)) player_slide_move(-3)
		}
		else if (hsp < 1 && hsp > -1) {
			if (position_meeting(x+2, y+17, obj_player)) player_slide_move(-9)
			if (position_meeting(x, y+17, obj_player)) player_slide_move(-5)
		}
		else if (hsp < 2 && hsp >= 0) {
			if (position_meeting(x+2, y+17, obj_player)) player_slide_move(-14)
			if (position_meeting(x, y+17, obj_player)) player_slide_move(-8)
		}
	}
	if (!instance_position(x+24, y+8, parent_solid)) {
		if (hsp < 0.4 && hsp > -0.4) {
			if (position_meeting(x+14, y+17, obj_player)) player_slide_move(6)
			if (position_meeting(x+16, y+17, obj_player)) player_slide_move(3)
		}
		else if (hsp < 1 && hsp > -1) {
			if (position_meeting(x+14, y+17, obj_player)) player_slide_move(9)
			if (position_meeting(x+16, y+17, obj_player)) player_slide_move(5)
		}
		else if (hsp <= 0 && hsp > -2) {
			if (position_meeting(x+14, y+17, obj_player)) player_slide_move(14)
			if (position_meeting(x+16, y+17, obj_player)) player_slide_move(8)
		}
	}
}