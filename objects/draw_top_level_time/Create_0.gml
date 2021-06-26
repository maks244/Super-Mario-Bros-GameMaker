draw_set_color(c_white)
draw_set_font(SMB)

// Set default variables
draw_time_after_death = false
draw_current_time = false
new_time = false
timer = 0
timer2 = 0

// Check if Mario has a set time after dying and show it
if (global.top_level_timer != undefined && global.level_timer = 0) {
	game_calculate_time_passed("AFTER_DEATH")
	draw_time_after_death = true
}

// Check if game is started for the first time
if (global.level_timer = 0) exit
// Show new time after improving the old time
else if (global.level_timer < global.top_level_timer || global.top_level_timer = undefined) {
	// Animation and sound
	audio_play_sound(PowerupCollect, 1, false)
	global.top_level_timer = global.level_timer
	global.new_time_string = "NEW TIME! "
	new_time = true
	
	// Calculate new time and round to 3 decimals
	game_calculate_time_passed("NEW")
}
// Show old record time with current time
else {
	global.new_time_string = "BEST TIME: "
	global.current_time_string = "TIME:      "
	draw_current_time = true
	// Calculate current time and round to 3 decimals
	game_calculate_time_passed("CURRENT")
}

