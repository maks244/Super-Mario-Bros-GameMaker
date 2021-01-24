if (global.game_paused = false)
{
	audio_play_sound(Pause, 1, false)
	audio_group_set_gain(backgroundMusic, 0.1, 500)
	global.game_paused = true
}
else 
{
	audio_play_sound(Pause, 1, false)
	audio_group_set_gain(backgroundMusic, 1, 500)
	global.game_paused = false
}
