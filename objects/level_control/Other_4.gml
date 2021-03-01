// Decrease time by one when the room changes
global.time_left--

// Check if player is exiting the bonus world and teleport them to the right place
if (room == Level_1_1) {
	if (global.exiting_bonus) {
		with (obj_player) {
			x = 2640
			if (global.powerup >= 1) y = 192
		    else y = 185
			pipe_timer = -80
		    state = "EXITING_PIPE"
		}
		__view_set( e__VW.XView, 0, 2576)
	    draw_remaining_time.visible = false
	}
	// Check if the player has a checkpoint and teleport them to the right place
	else if (global.checkpoint_acquired) {
		x = 1344
		y = 200
		__view_set( e__VW.XView, 0, 1296)
	}
}
if (room == Level_1_1_Bonus) entered_bonus = true