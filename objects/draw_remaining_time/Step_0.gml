// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer || global.flagpole_win) exit

// Decrease time every 24 frames
if (timer == 24) {
	if (global.time_left >= 1 && global.state != "DEAD" && global.state != "ENTERING_PIPE" && global.state != "EXITING_PIPE") global.time_left -= 1
    timer = 0
}
if (visible) timer++

// Time up check
if (global.time_left < 1) global.state = "DEAD"