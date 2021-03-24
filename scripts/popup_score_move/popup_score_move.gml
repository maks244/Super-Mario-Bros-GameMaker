function popup_score_move(hsp, divisor){
	if (instance_exists(draw_popup_score_block)) with (draw_popup_score_block) x += hsp/divisor
	if (instance_exists(draw_popup_score_enemy)) with (draw_popup_score_enemy) x += hsp/divisor
	if (instance_exists(draw_popup_score_powerup)) with (draw_popup_score_powerup) x += hsp/divisor
}