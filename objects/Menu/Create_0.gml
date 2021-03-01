instance_create_depth(414, 682, -1, menu_mushroom)
instance_create_depth(x, y, 0, draw_static_hud)
instance_create_depth(x, y, -10, draw_total_coins)
instance_create_depth(x, y, -10, draw_total_score)
instance_create_depth(x, y, -10, draw_top_score)
audio_group_load(backgroundMusic)
audio_group_load(ImportantSounds)

global.checkpoint_acquired = false
global.invincibility_timer = 0
global.starpower_timer = 0
global.starpower_timer_timer = 0
global.pause_game_timer = 0
global.mario_lives = 3