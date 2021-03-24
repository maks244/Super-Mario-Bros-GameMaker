function player_switch_states(player_state){
	// Check inputs if player is in right or left state
	if (player_state == "RIGHT" || player_state == "LEFT") {
		if (b) {
			maxSpeed = 2.55
			acceleration = 0.065
		}
		else {
			maxSpeed = 2
			acceleration = 0.05
		}
		if (a && vsp == 0 && global.enemy_combo == 0) {
			global.state = "JUMPING"
			if (jump_sound_timer == 0) {
				if (global.powerup >= 1) audio_play_sound(BigJump, 1, false)
				else audio_play_sound(SmallJump, 1, false)
			}
			jump_sound_timer++
		}
		if (hsp == 0) global.state = "IDLE"
		if (player_state = "RIGHT" && left) global.state = "LEFT"
		if (player_state = "LEFT" && right) global.state = "RIGHT"
		if (down && global.powerup >= 1) global.state = "DUCKING"
	}
	// Check inputs if player is idle
	if (player_state == "IDLE") {
        if (a) {
			global.state = "JUMPING"
			if (jump_sound_timer == 0) {
				if (global.powerup >= 1) audio_play_sound(BigJump, 1, false)
				else audio_play_sound(SmallJump, 1, false)
			}
			jump_sound_timer++
		}
        if (right) global.state = "RIGHT"
		if (down && global.powerup >= 1) global.state = "DUCKING"
		// Screen scroll stop check
        if (x >= (__view_get( e__VW.XView, 0 ) + 8) && left) global.state = "LEFT"
	}
	if (player_state == "DUCKING") {
		if (!down || global.powerup = 0) global.state = last_state
		if (a) {
			global.state = "JUMPING"
			if (jump_sound_timer == 0) {
				if (global.powerup >= 1) audio_play_sound(BigJump, 1, false)
				else audio_play_sound(SmallJump, 1, false)
			}
			jump_sound_timer++
		}
	}
}