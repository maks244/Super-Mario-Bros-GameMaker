// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) exit

// Walking right into the pipe animation
if (walk_right_animation) {
	with (obj_player) {
		player_animation_walking(1, "RIGHT")
		image_speed = 0.2
	}
}

if (entered_pipe) {
	if (timer == 180) {
		room_goto(Level_1_1)
		global.exiting_bonus = true
	}
	timer++
	
	exit
}

if (position_meeting(x-3, y+30, obj_player) && obj_player.right) {
    audio_play_sound(Pipe, 1, false)
	global.state = "ENTERING_PIPE"
	with (obj_player) y -= 1
	walk_right_animation = true
    entered_pipe = true
}