function popup_score_draw_powerup(x, y, OneUP) {
	var instance = instance_create_depth(x, y-16, 0, draw_popup_score_powerup)
	if (OneUP) with (instance) add_score = ScoreOneUp
	else {
		with (instance) add_score = Score1000
		global.total_score += 1000
	}
}