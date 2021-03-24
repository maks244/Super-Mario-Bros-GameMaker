function background_win_sequence(){
	if (!global.game_paused || !global.game_paused_on_timer) {
		if (global.flagpole_win) {
			// Castle flag goes up
			if (global.flagpole_timer > (175+global.time_left_after_win) && global.flagpole_timer < (194+global.time_left_after_win)) obj_castle_flag.y -= 1
			// Fireworks go off if the last time digit is 1, 3, or 6
			if (global.flagpole_timer > (194+global.time_left_after_win)) background_animation_fireworks()
		}
	}
}