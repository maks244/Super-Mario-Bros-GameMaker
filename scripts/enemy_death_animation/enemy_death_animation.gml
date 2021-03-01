function enemy_death_animation(){
	with(enemy) {
		audio_play_sound(KoopaKick, 1, false)
		popup_score_draw_enemy(x, y)
		mask_index = spr_no_collision
		image_yscale = -1
		depth = -100
		y += 16
		hsp = random_range(-2, 2)
		grav = 0.2
		vsp = -3
		animationSpeed = 0
	}
}