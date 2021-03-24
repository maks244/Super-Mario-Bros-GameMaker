function player_animation_walking(hsp, player_state){
	if (player_state == "RIGHT") {
		if (hsp < -0.4) {
			player_animation_stopping()
			obj_player.hsp += 0.05
		} 
		else {
			if (global.starpower_timer > 0) player_animation_walking_starpower()
			else {
				if (global.powerup == 2) sprite_index = spr_f_mario_walk
				else if (global.powerup == 1) sprite_index = spr_b_mario_walk
				else sprite_index = spr_s_mario_walk
			}
		}
		image_xscale = 1
	}
	if (player_state == "LEFT") {
		if (hsp > 0.4) {
			player_animation_stopping()
			obj_player.hsp -= 0.05
		}
		else {
			if (global.starpower_timer > 0) player_animation_walking_starpower()
			else {
				if (global.powerup == 2) sprite_index = spr_f_mario_walk
				else if (global.powerup == 1) sprite_index = spr_b_mario_walk
				else sprite_index = spr_s_mario_walk
			}
		}
		image_xscale = -1
	}
	if (sprite_index != spr_s_mario_stop_starpower && sprite_index != spr_b_mario_stop_starpower && sprite_index != spr_f_mario_stop_starpower) image_speed = abs(hsp)/2.75*animationSpeed
	if (global.enemy_combo > 0 || vsp != 0) image_speed = 0
}