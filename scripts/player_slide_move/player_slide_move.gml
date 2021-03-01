function player_slide_move(n) {
	mask_index = spr_no_collision
	if (n != 0) {
		if (n < 0) {
			with (obj_player) {
				x -= 1.4
				y -= 2
				hsp = 0.75
			}
			n += 1
		}
		if (n > 0) {
			with (obj_player) {
				x += 1.4
				y -= 2
				hsp = -0.75
			}
			n -= 1
		}
	}
	i = n
	return i
}