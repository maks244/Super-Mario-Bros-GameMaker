function game_pause_timer(){
	if (global.pause_game_timer > 0) {
		global.game_paused_on_timer = true
		global.pause_game_timer--
		if (global.pause_game_timer == 0) global.game_paused_on_timer = false
	}
}