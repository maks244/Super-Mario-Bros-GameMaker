// Stop if game is paused
if (global.game_paused)
{
	set_alarm = 1
	exit
}

// Time management
if (global.time_left >= 1) && (visible) && (obj_player.state != "DEAD") && (obj_player.state != "ENTERING_PIPE") && (obj_player.state != "EXITING_PIPE") global.time_left -= 1
set_alarm = 1






