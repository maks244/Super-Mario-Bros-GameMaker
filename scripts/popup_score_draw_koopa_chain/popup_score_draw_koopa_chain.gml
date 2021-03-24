function popup_score_draw_koopa_chain(x, y){
	var instance = instance_create_depth(x, y-16, 0, draw_popup_score_enemy)
	var chain_score = 0
	switch (global.koopa_combo) {
		case 0: chain_score = Score500; global.total_score += 500; break;
		case 1: chain_score = Score800; global.total_score += 800; break;
		case 2: chain_score = Score1000; global.total_score += 1000; break;
		case 3: chain_score = Score2000; global.total_score += 2000; break;
		case 4: chain_score = Score4000; global.total_score += 4000; break;
		case 5: chain_score = Score5000; global.total_score += 5000; break;
		case 6: chain_score = Score8000; global.total_score += 8000; break;
		default: chain_score = ScoreOneUp; audio_play_sound(OneUp, 1, false); global.mario_lives++; break;
	}
	with (instance) add_score = chain_score
}