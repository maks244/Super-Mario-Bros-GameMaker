function music_resume(){
	// Death Sound
	if (audio_is_paused(Death)) audio_resume_sound(Death)
	// Coin Counting sound
	if (audio_is_paused(CoinCount)) audio_resume_sound(CoinCount)
	// Flagpole Sound
	if (audio_is_paused(Flagpole)) audio_resume_sound(Flagpole)
	// Checks if the win sequence is playing
	else if (!global.flagpole_win) { 
		// Star theme
		if (global.starpower_timer > 67) {
			if (audio_is_paused(StarPower)) audio_resume_sound(StarPower)
			else if (!audio_is_playing(StarPower)) audio_play_sound(StarPower, 1, true)
		}
		// Hurry up theme
		else if (global.time_left < 100 && global.state != "DEAD" && !background_music.play_delayed_hurry_up_music) {
			if (room == Level_1_1) {
				if (audio_is_paused(HurryOverworldTheme)) audio_resume_sound(HurryOverworldTheme)
				else if (!audio_is_playing(HurryOverworldTheme)) audio_play_sound(HurryOverworldTheme, 1, true)
			}
			else if (room == Level_1_1_Bonus) {
				if (audio_is_paused(HurryUndergroundTheme)) audio_resume_sound(HurryUndergroundTheme)
				else if (!audio_is_playing(HurryUndergroundTheme)) audio_play_sound(HurryUndergroundTheme, 1, true)
			}
		}
		// Hurry Up sound
		else if (audio_is_paused(HurryUp)) audio_resume_sound(HurryUp)
		// Normal themes
		else if (global.state != "DEAD" && !background_music.play_delayed_hurry_up_music) {
			if (room == Level_1_1) {
				if (audio_is_paused(OverworldTheme)) audio_resume_sound(OverworldTheme)
				else if (!audio_is_playing(OverworldTheme)) audio_play_sound(OverworldTheme, 1, true)
			}
			else if (room == Level_1_1_Bonus) {
				if (audio_is_paused(UndergroundTheme)) audio_resume_sound(UndergroundTheme)
				else if (!audio_is_playing(UndergroundTheme)) audio_play_sound(UndergroundTheme, 1, true)
			}
		}
	}
}
