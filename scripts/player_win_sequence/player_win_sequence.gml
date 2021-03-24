function player_win_sequence(){
	// Stops the player
	if (global.flagpole_timer = 1) {
		// Snaps player to flagpole
		if (instance_place(x+hsp, y, parent_flagpole) || instance_place(x+(hsp+4), y, parent_flagpole) || instance_place(x+(hsp+8), y, parent_flagpole)) {
			if (instance_place(x+(hsp+8), y, parent_flagpole)) flagpole = instance_place(x+(hsp+8), y, parent_flagpole)
			else if (instance_place(x+(hsp+4), y, parent_flagpole)) flagpole = instance_place(x+(hsp+4), y, parent_flagpole)
			else if (instance_place(x+hsp, y, parent_flagpole)) flagpole = instance_place(x+hsp, y, parent_flagpole)
			xx = flagpole.x-(x+2)
			x += xx
		}
		
		// Stops player
		player_animation_flagpole()
		image_xscale = 1
		hsp = 0
		vsp = 0
	}
	// Player climbs down flagpole
	if (global.flagpole_timer < 59) {
		player_animation_flagpole()
	}
	// Player turns around flagpole
	if (global.flagpole_timer = 59) {
		image_xscale = -1
		x += 12
	}
	// Changes sprite if necessary
	if (global.flagpole_timer > 58 && global.flagpole_timer < 85) player_animation_flagpole()
	// Player walks to castle
	if (global.flagpole_timer > 84) {
		image_xscale = 1
		hsp = 1.2
		player_animation_walking(hsp, "RIGHT")
		if (vsp < 3.9) vsp += global.grav
	}
	// Player dissapears in castle
	if (global.flagpole_timer > 159) {
		visible = false
		game_time_left_count()
	}
}