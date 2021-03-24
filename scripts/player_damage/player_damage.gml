function player_damage(){
	if (global.invincibility_timer == 0) {
		if (enemy.object_index == obj_koopa && global.koopa_timer > 0) exit
		else {
			if (global.powerup >= 1) {
				global.pause_game_timer = 55
				global.invincibility_timer = 210
				global.powerup = 0
				audio_play_sound(Pipe, 1, false)
			}
			else global.state = "DEAD"
		}
	}
}
