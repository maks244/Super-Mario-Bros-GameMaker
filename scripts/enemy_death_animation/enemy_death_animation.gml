function enemy_death_animation(koopa_kill){
	with(enemy) {
		audio_play_sound(KoopaKick, 1, false)
		if (koopa_kill) popup_score_draw_koopa_chain(x, y)
		else popup_score_draw_enemy(x, y)
		if (enemy_collision_side_check() = "LEFT") hsp = 1
		else hsp = -1
		if (object_index = obj_koopa) {
			y += 48
			sprite_index = spr_koopa_stomped
		}
		else y += 16
		mask_index = spr_no_collision
		image_yscale = -1
		depth = -100
		animationSpeed = 0
		state = undefined
		grav = 0.2
		vsp = -3
	}
}