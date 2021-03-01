// Handles the game pause timer for when Mario takes damage
game_pause_timer()

// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) exit

// Make timer invisible in bonus room for first 25 frames
if (entered_bonus) {
	draw_remaining_time.visible = false
	if (timer == 25) draw_remaining_time.visible = true
	else timer++
}