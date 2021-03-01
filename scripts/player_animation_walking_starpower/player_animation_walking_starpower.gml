function player_animation_walking_starpower(){
	if (global.starpower_timer < 146) {
		if (global.powerup >= 1) player_animation_walking_starpower_big_slow()
		else player_animation_walking_starpower_small_slow()
	}
	else {
		if (global.powerup >= 1) player_animation_walking_starpower_big_fast()
		else player_animation_walking_starpower_small_fast()
	}
	global.starpower_timer_timer++
}