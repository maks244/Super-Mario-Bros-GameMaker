function background_animation_fireworks(){
	if (global.fireworks >= 1) {
		if (global.flagpole_timer == (195+global.time_left_after_win)) {
			with (obj_flagpole_5000) instance_create_depth(x+72, y+6, -10, obj_fireball_explosion)
			if (!audio_is_playing(Firework)) audio_play_sound(Firework, 1, false)
		}
		if (global.fireworks >= 3) {
			if (global.flagpole_timer == (228+global.time_left_after_win)) with (obj_flagpole_5000) {
				instance_create_depth(x+40, y+52, -10, obj_fireball_explosion)
				if (!audio_is_playing(Firework)) audio_play_sound(Firework, 1, false)
			}
			if (global.flagpole_timer == (259+global.time_left_after_win)) with (obj_flagpole_5000) {
				instance_create_depth(x+136, y+22, -10, obj_fireball_explosion)
				if (!audio_is_playing(Firework)) audio_play_sound(Firework, 1, false)
			}
		}
		if (global.fireworks == 6) {
			if (global.flagpole_timer == (292+global.time_left_after_win)) with (obj_flagpole_5000) {
				instance_create_depth(x+136, y+69, -10, obj_fireball_explosion)
				if (!audio_is_playing(Firework)) audio_play_sound(Firework, 1, false)
			}
			if (global.flagpole_timer == (323+global.time_left_after_win)) with (obj_flagpole_5000) {
				instance_create_depth(x+88, y+22, -10, obj_fireball_explosion)
				if (!audio_is_playing(Firework)) audio_play_sound(Firework, 1, false)
			}
			if (global.flagpole_timer == (356+global.time_left_after_win)) with (obj_flagpole_5000) {
				instance_create_depth(x+40, y+52, -10, obj_fireball_explosion)
				if (!audio_is_playing(Firework)) audio_play_sound(Firework, 1, false)
			}
		}
	}
}