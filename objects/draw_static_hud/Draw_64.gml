// Draw HUD
if (room = Level_1_1_Bonus) draw_sprite(spr_static_hud_underground, image, 24, 8)
else draw_sprite(spr_static_hud, image, 24, 8)

// Stop if game is paused or if select screens are displayed
if (global.game_paused) or (room = Level_Start) or (room = Game_Over) or (room = Time_Up) {
	exit
}

// Change sprite
if (timer = 8) {
	image++
	timer = 0
}
timer++