audio_stop_all()
play_delayed_hurry_up_music = false
played_once = false
timer = 0

// Background music
if (global.starpower_timer > 67) audio_play_sound(StarPower, 1, false)
else if (room == Level_1_1) audio_play_sound(OverworldTheme, 1, true)
else if (room == Level_1_1_Bonus) audio_play_sound(UndergroundTheme, 1, true)
