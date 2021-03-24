function popup_score_draw_enemy(x, y) { 
	var instance = instance_create_depth(x, y-16, 0, draw_popup_score_enemy)
	var enemy_score = 0
	switch (global.enemy_combo) {
		case 0: enemy_score = Score100; global.total_score += 100; break;
		case 1: enemy_score = Score200; global.total_score += 200; break;
		case 2: enemy_score = Score400; global.total_score += 400; break;
		case 3: enemy_score = Score500; global.total_score += 500; break;
		case 4: enemy_score = Score800; global.total_score += 800; break;
		case 5: enemy_score = Score1000; global.total_score += 1000; break;
		case 6: enemy_score = Score2000; global.total_score += 2000; break;
		case 7: enemy_score = Score4000; global.total_score += 4000; break;
		case 8: enemy_score = Score5000; global.total_score += 5000; break;
		case 9: enemy_score = Score8000; global.total_score += 8000; break;
		default: enemy_score = ScoreOneUp; audio_play_sound(OneUp, 1, false); global.mario_lives++; break;
	}
	with (instance) add_score = enemy_score
}
