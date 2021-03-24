function player_animation_flagpole(){
	// Player climbing animation
	if (global.starpower_timer > 0) {
		if (global.starpower_timer < 146) {
			if (global.powerup >= 1) player_animation_climbing_starpower_big_slow()
			else player_animation_climbing_starpower_small_slow()
		}
		else {
			if (global.powerup >= 1) player_animation_climbing_starpower_big_fast()
			else player_animation_climbing_starpower_small_fast()
		}
		global.starpower_timer_timer++
	}
	else {
		if (global.powerup == 1) sprite_index = spr_b_mario_climbing
		else if (global.powerup == 2) sprite_index = spr_f_mario_climbing
		else sprite_index = spr_s_mario_climbing
	}
	// Player moves down
	if (!place_meeting(x, y+3, parent_solid)) {
		image_speed = 1
		y += 2.1
	}
	// Player stops after touching the flagpole block
	else {
		if (global.starpower_timer = 0) image_index = 0
		image_speed = 0
	}
}