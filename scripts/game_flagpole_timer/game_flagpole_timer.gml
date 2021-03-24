function game_flagpole_timer(){
	if (global.flagpole_win) {
		if (global.flagpole_timer = global.flagpole_win_end) room_goto(Main_Menu)
		global.flagpole_timer++
	}
}