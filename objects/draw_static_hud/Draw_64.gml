// Draw HUD
draw_sprite(spr_static_hud, image, 24, 7.5)

// Stop if game is paused
if (global.game_paused) {
	exit
}

// Change sprite
if (timer = 8) {
	image++
	timer = 0
}
timer++