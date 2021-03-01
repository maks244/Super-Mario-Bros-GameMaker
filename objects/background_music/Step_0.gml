// Play hurry up music on a delay waiting for the Hurry Up sound effect
// to finish while the game isn't paused
if (play_delayed_hurry_up_music && !global.game_paused) {
	if (timer = 165) {
		event_user(0)
		play_delayed_hurry_up_music = false
	}
	timer++
}

if (played_once) exit
// If time left is 99 play the HurryUp sound else just play the fast music
if (global.time_left < 100) {
    if (global.time_left == 99) {
        audio_stop_all()
        audio_play_sound(HurryUp, 1, false)
		play_delayed_hurry_up_music = true
        played_once = true
    }
    else {
        audio_stop_all()
		event_user(0)
        played_once = true
    }
}