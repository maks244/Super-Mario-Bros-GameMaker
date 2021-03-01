function player_animation_walking_starpower_big_slow(){
	if (global.starpower_timer_timer = 0) {
		if (global.powerup = 2) {
			last_image = image_index
			sprite_index = spr_f_mario_walk_starpower_0
			image_index = last_image
		}
		else {
			last_image = image_index
			sprite_index = spr_b_mario_walk_starpower_0
			image_index = last_image
		}
	}
	if (global.starpower_timer_timer = 8) {
		last_image = image_index
		sprite_index = spr_b_mario_walk_starpower_1
		image_index = last_image
	}
	if (global.starpower_timer_timer = 16) {
		last_image = image_index
		sprite_index = spr_b_mario_walk_starpower_2
		image_index = last_image
	}
	if (global.starpower_timer_timer = 24) {
		last_image = image_index
		sprite_index = spr_b_mario_walk_starpower_3
		image_index = last_image
		global.starpower_timer_timer = -8
	}
}