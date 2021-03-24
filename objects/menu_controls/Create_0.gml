display_set_gui_size(256, 224)
instance_create_depth(x, y, 0, draw_static_hud)
instance_create_depth(x, y, -10, draw_total_coins)
instance_create_depth(x, y, -10, draw_total_score)

global.game_paused = false
global.game_paused_on_timer = false
global.level_timer = 0
global.top_level_timer = undefined
global.total_coins = 0
global.total_score = 0
global.top_score = 0