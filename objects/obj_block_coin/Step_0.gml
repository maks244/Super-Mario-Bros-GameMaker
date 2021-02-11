if (timer = 15) vsp = 0
if (timer = 18) vsp = 2.75
if (timer = 31) {
	draw_score_popup_block(x, y)
	instance_destroy()
}
y += vsp
timer++