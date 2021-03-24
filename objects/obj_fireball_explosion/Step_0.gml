// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) image_speed = 0
else {
	if (place_meeting(x, y, parent_solid)) image_speed = 1
	else image_speed = 0.3
}