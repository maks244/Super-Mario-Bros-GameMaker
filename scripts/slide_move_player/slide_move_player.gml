function slide_move_player(n) {
	mask_index = spr_no_collision
	if (n != 0) {
		if (n < 0) {
			obj_player.x -= 1.4
			obj_player.y -= 2
			n += 1
		}
		if (n > 0) {
			obj_player.x += 1.4
			obj_player.y -= 2
			n -= 1
		}
	}
	i = n
	return i
}