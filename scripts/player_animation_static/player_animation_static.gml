function player_animation_static(player_state){
	if (global.starpower_timer > 0) {
		if (global.powerup == 1) {
			if (player_state == "JUMPING") {
				if (duck_jump) sprite_index = spr_b_mario_duck_starpower
				else sprite_index = spr_b_mario_jump_starpower
			}
			else if (player_state == "IDLE") sprite_index = spr_b_mario_idle_starpower
			else if (player_state == "DUCKING") sprite_index = spr_b_mario_duck_starpower
		}
		else if (global.powerup == 2) {
			if (firing_sprite) player_animation_firing()
			else if (player_state == "JUMPING") {
				if (duck_jump) sprite_index = spr_f_mario_duck_starpower
				else sprite_index = spr_f_mario_jump_starpower
			}
			else if (player_state == "IDLE") sprite_index = spr_f_mario_idle_starpower
			else if (player_state == "DUCKING") sprite_index = spr_f_mario_duck_starpower
		}
		else {
			if (player_state == "JUMPING") sprite_index = spr_s_mario_jump_starpower
			else if (player_state == "IDLE") sprite_index = spr_s_mario_idle_starpower
		}
		if (global.starpower_timer < 146) image_speed = 0.25
		else image_speed = 1
	}
	else {
		if (global.powerup == 1) {
			if (player_state == "JUMPING") {
				if (duck_jump) sprite_index = spr_b_mario_duck
				else sprite_index = spr_b_mario_jump
			}
			else if (player_state == "IDLE") sprite_index = spr_b_mario_idle
			else if (player_state == "DUCKING") sprite_index = spr_b_mario_duck
		}
		else if (global.powerup == 2) {
			if (firing_sprite) player_animation_firing()
			else if (player_state == "JUMPING") {
				if (duck_jump) sprite_index = spr_f_mario_duck
				else sprite_index = spr_f_mario_jump
			}
			else if (player_state == "IDLE") sprite_index = spr_f_mario_idle
			else if (player_state == "DUCKING") sprite_index = spr_f_mario_duck
		}
		else {
			if (player_state == "JUMPING") sprite_index = spr_s_mario_jump
			else if (player_state == "IDLE") sprite_index = spr_s_mario_idle
		}
		image_speed = 0
	}
}