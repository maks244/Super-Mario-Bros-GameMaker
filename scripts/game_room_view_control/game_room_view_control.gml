function game_room_view_control(x, hsp){
	if (room != Level_1_1_Bonus && x < obj_castle.x+26 && sign(hsp) == 1) {
		if (x > __view_get(e__VW.XView, 0)+__view_get(e__VW.WView, 0)*0.48) {
			__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0)+hsp)
			popup_score_move(hsp, 1)
		}
		else if (x > __view_get(e__VW.XView, 0)+__view_get(e__VW.WView, 0)*0.42) {
	        __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0)+hsp/1.25)
			popup_score_move(hsp, 1.25)
	    }
	    else if (x > __view_get(e__VW.XView, 0)+__view_get(e__VW.WView, 0)*0.36) {
	        __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0)+hsp/1.5)
			popup_score_move(hsp, 1.5)
	    }
	}
	if (x <= __view_get( e__VW.XView, 0 ) + 8 && sign(hsp) = -1) hsp = 0
}