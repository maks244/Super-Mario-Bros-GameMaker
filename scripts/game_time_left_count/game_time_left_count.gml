function game_time_left_count(){
	if (!audio_is_playing(CoinCount) && global.flagpole_timer < 170) audio_play_sound(CoinCount, 1, true)
	if (global.time_left > 0) {
		global.time_left--
		global.flagpole_win_end++
		global.total_score += 50
		if (global.time_left = 0) audio_stop_sound(CoinCount)
	}
}