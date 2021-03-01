function player_animation_stopping(){
	if (global.starpower_timer > 0) {
		if (global.powerup == 1) sprite_index = spr_b_mario_stop_starpower
		else if (global.powerup == 2) sprite_index = spr_f_mario_stop_starpower
		else sprite_index = spr_s_mario_stop_starpower
		if (global.starpower_timer < 146) image_speed = 0.25
		else image_speed = 1
	}
	else {
		if (global.powerup == 1) sprite_index = spr_b_mario_stop
		else if (global.powerup == 2) sprite_index = spr_f_mario_stop
		else sprite_index = spr_s_mario_stop
		image_speed = 0
	}
} 