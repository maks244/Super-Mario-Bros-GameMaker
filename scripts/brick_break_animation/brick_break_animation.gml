function brick_break_animation(){
	var piece1 = instance_create_depth(x+4, y+4, 0, obj_brick_piece)
	with (piece1) piece = 1
	var piece2 = instance_create_depth(x+12, y+4, 0, obj_brick_piece)
	with (piece2) piece = 2
	var piece3 = instance_create_depth(x+4, y+12, 0, obj_brick_piece)
	with (piece3) piece = 3
	var piece4 = instance_create_depth(x+12, y+12, 0, obj_brick_piece)
	with (piece4) piece = 4
	instance_destroy()
}