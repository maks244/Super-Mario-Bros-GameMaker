function player_switch_states(player_state){
	// Check inputs if player is in right or left state
	if (player_state = "RIGHT" || player_state = "LEFT") {
		if (b) maxSpeed = 2.85 else maxSpeed = 2
		if (a && vsp = 0 && global.enemy_combo = 0) {
			state = "JUMPING"
			if (jump_sound_timer == 0) {
				if (global.powerup >= 1) audio_play_sound(BigJump, 1, false)
				else audio_play_sound(SmallJump, 1, false)
			}
			jump_sound_timer++
		}
		if (hsp == 0) state = "IDLE"
		if (player_state = "RIGHT" && left) state = "LEFT"
		if (player_state = "LEFT" && right) state = "RIGHT"
	}
	// Check inputs if player is idle
	if (player_state = "IDLE") {
        if (a) {
			state = "JUMPING"
			if (jump_sound_timer == 0) {
				if (global.powerup >= 1) audio_play_sound(BigJump, 1, false)
				else audio_play_sound(SmallJump, 1, false)
			}
			jump_sound_timer++
		}
        if (right) state = "RIGHT"
		// Screen scroll stop check
        if (x >= (__view_get( e__VW.XView, 0 ) + 8) && left) state = "LEFT"
	}
}