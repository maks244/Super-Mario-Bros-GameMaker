function player_jump_physics(){
	if (jump_timer < 2) {
		jumpTime += 1
		vsp = -jumpSpeed
	}
	else {
		if (a) {
		    jumpTime += 1
		    if (jumpTime < 17) vsp = -jumpSpeed
		}
		else jumpTime = 30
		if (place_meeting(x, y+1, parent_solid)) {
			//Lets player jump with imperfect input
			if (early_jump_input) {
				jumpTime = 0
				jump_timer = 0
				early_jump_input = 0
				if (global.powerup >= 1) audio_play_sound(BigJump, 1, false)
				else audio_play_sound(SmallJump, 1, false)
				early_jump_input = false
			}
			// Normal player jump
			else {
			    jumpTime = 0
				jump_timer = 0
				// Checks for a duck jump
			    if (down && duck_jump) global.state = "DUCKING"
				else global.state = last_state
			}
		}
		// Checks if player wants to jump before touching the ground
		if (place_meeting(x, y+24, parent_solid) && a_pressed) {
			early_jump_input = true
			early_jump_expiry_timer = 10
		}
		if (early_jump_expiry_timer = 0) early_jump_input = false
		else early_jump_expiry_timer--
	}
	jump_timer++
}