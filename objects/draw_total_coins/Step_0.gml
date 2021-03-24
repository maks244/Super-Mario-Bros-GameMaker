// 100 coin check
if (global.total_coins >= 100) {
	audio_play_sound(OneUp, 1, false)
	global.total_coins -= 100
	global.mario_lives++
}