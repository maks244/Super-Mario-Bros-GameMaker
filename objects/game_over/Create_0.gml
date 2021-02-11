instance_create_depth(x, y, 0, draw_static_hud)
instance_create_depth(x, y, -10, draw_total_coins)
instance_create_depth(x, y, -10, draw_total_score)
audio_play_sound(GameOver, 1, false)
alarm[0] = room_speed * 6