instance_create_depth(x, y, 0, draw_static_hud)
instance_create_depth(x, y, -10, draw_total_coins)
instance_create_depth(x, y, -10, draw_total_score)
instance_create_depth(720, 523, -1, draw_remaining_lives)
alarm[0] = room_speed * 2.5

// Variables
global.time_left = 401
global.exiting_bonus = false
