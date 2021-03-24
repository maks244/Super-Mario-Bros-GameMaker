function popup_score_draw_flagpole(x, y) { 
	var instance = instance_create_depth(x+8, y, 0, draw_popup_score_flagpole)
	var enemy_score = 0
	switch (global.flagpole_score) {
		case 100: enemy_score = Score100; global.total_score += 100; break;
		case 400: enemy_score = Score400; global.total_score += 400; break;
		case 800: enemy_score = Score800; global.total_score += 800; break;
		case 2000: enemy_score = Score2000; global.total_score += 2000; break;
		case 5000: enemy_score = Score5000; global.total_score += 5000; break;
	}
	with (instance) add_score = enemy_score
}
