function popup_score_move(hsp, divisor){
	if (instance_exists(draw_popup_score_block)) draw_popup_score_block.x += hsp/divisor
	if (instance_exists(draw_popup_score_enemy)) draw_popup_score_enemy.x += hsp/divisor
	if (instance_exists(draw_popup_score_powerup)) draw_popup_score_powerup.x += hsp/divisor
}