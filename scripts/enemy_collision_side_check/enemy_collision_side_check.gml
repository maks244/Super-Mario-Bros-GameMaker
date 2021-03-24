function enemy_collision_side_check(){
	if (object_index = obj_koopa) offset = 8
	else offset = 0
	x1 = (obj_player.x-8)-(x-offset)
	if (x1 <= 0) side = "LEFT"
	else side = "RIGHT"
	return side
}