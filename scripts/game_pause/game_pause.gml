function game_pause(cooldown){
	if (!global.game_paused && !global.game_paused_on_timer && cooldown = 0) {
		global.game_paused = true
		cooldown = 45
		music_pause()
		audio_play_sound(Pause, 1, false)
	}
	else if (!global.game_paused_on_timer && cooldown = 0) {
		global.game_paused = false
		cooldown = 45
		music_resume()
		audio_play_sound(Pause, 1, false)
	}
}