function player_starpower_control(){
	if (global.starpower_timer > 0 && global.state != "ENTERING_PIPE" && global.state != "EXITING_PIPE") {
		if (global.starpower_timer = 67) {
			audio_stop_all()
			music_resume()
		}
		global.starpower_timer--
		if (global.starpower_timer = 0) global.starpower_timer_timer = 0
	}
}