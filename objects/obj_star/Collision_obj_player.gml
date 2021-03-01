audio_stop_all()
audio_play_sound(PowerupCollect, 1, false)
if (!audio_is_playing(StarPower)) audio_play_sound(StarPower, 1, true)
global.starpower_timer = 720
popup_score_draw_powerup(x, y, false)
instance_destroy()