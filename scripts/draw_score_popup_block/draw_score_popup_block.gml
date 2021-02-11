function draw_score_popup_block(x, y) {
	var instance = instance_create_depth(x+4, y, 0, draw_popup_score_block)
	with (instance) add_score = Score200
}