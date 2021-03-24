// Stop if game is paused
if (global.game_paused || global.exiting_bonus) exit

if (entered_pipe) 
{
	if (timer == 72) room_goto(Level_1_1_Bonus)
	timer++
	exit
}

if (position_meeting(x+16, y-1, obj_player) && obj_player.down && obj_player.x >= 940 && obj_player.x <= 948) {
    audio_play_sound(Pipe, 1, false)
	with (obj_player) player_animation_static("DUCKING")
    global.state = "ENTERING_PIPE"
    entered_pipe = true
}