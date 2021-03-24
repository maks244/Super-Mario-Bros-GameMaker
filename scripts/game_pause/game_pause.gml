function game_pause(){
	if (!global.game_paused && !global.game_paused_on_timer && global.pause_cooldown = 0) {
		global.game_paused = true
		global.pause_cooldown = 45
		music_pause()
		audio_play_sound(Pause, 1, false)
	}
	else if (!global.game_paused_on_timer && global.pause_cooldown = 0) {
		global.game_paused = false
		global.pause_cooldown = 45
		music_resume()
		audio_play_sound(Pause, 1, false)
	}
}