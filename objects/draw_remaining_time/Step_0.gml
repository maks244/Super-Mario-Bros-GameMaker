// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) exit

// Decrease time every 24 frames
if (timer == 24) {
	if (global.time_left >= 1 && obj_player.state != "DEAD" && obj_player.state != "ENTERING_PIPE" && obj_player.state != "EXITING_PIPE") global.time_left -= 1
    timer = 0
}
if (visible) timer++

// Time up check
if (global.time_left < 1) obj_player.state = "DEAD"