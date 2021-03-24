function game_flagpole_win(object){
	// Setting default variables
	global.state = "FLAGPOLE_WIN"
	obj_player.x -= 4
	global.flagpole_win = true
	global.flagpole_win_end = 300
	global.time_left_after_win = global.time_left
	
	// Flagpole music
	audio_stop_all()
	audio_play_sound(Flagpole, 1, false)
	
	// Checks how many fireworks are supposed to go off
	last_digit = global.time_left mod 10
	if (last_digit = 1) global.fireworks = 1
	if (last_digit = 3) global.fireworks = 3
	if (last_digit = 6) global.fireworks = 6

	// Adds extra time for fireworks
	global.flagpole_win_end += 30 * global.fireworks
	
	// Makes score popup
	flagpole_object = object_get_name(object)
	global.flagpole_score = real(string_copy(flagpole_object, 14, string_length(flagpole_object) - 13))
	if (object = obj_flagpole_100) popup_score_draw_flagpole(x, y+1)
	if (object = obj_flagpole_400) popup_score_draw_flagpole(x, y+33)
	if (object = obj_flagpole_800) popup_score_draw_flagpole(x, y+65)
	if (object = obj_flagpole_2000) popup_score_draw_flagpole(x, y+107)
	if (object = obj_flagpole_5000) popup_score_draw_flagpole(x, y+136)
}