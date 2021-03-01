function music_pause(){
	if (audio_is_playing(OverworldTheme)) audio_pause_sound(OverworldTheme)
	if (audio_is_playing(HurryOverworldTheme)) audio_pause_sound(HurryOverworldTheme)
	if (audio_is_playing(UndergroundTheme)) audio_pause_sound(UndergroundTheme)
	if (audio_is_playing(HurryUndergroundTheme)) audio_pause_sound(HurryUndergroundTheme)
	if (audio_is_playing(HurryUp)) audio_pause_sound(HurryUp)
	if (audio_is_playing(StarPower)) audio_pause_sound(StarPower)
	if (audio_is_playing(Death)) audio_pause_sound(Death)
	if (audio_is_playing(Flagpole)) audio_pause_sound(Flagpole)
	audio_group_stop_all(audiogroup_default)
}