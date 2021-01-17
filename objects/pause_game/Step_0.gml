//Input check
start = keyboard_check_pressed(vk_enter)

// Pause game
if (start)
{
	if (global.game_paused = false)
	{
		audio_play_sound(Pause, 1, false)
		global.game_paused = true
	}
	else 
	{
		audio_play_sound(Pause, 1, false)
		global.game_paused = false
	}
}