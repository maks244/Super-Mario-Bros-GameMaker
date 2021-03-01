// Stop if game is paused
if (global.game_paused) {
	image_speed = 0
	exit
} 
else image_speed = 1

if (timer == 15) vsp = 0
if (timer == 18) vsp = 2.75
if (timer == 31) {
	popup_score_draw_block(x, y)
	instance_destroy()
}
y += vsp
timer++