function player_animation_transformation_fireflower(player_state){
	if (player_state == "JUMPING") {
		sprite_index = spr_f_mario_jump_starpower
		image_speed = 0.5
	}
	if (player_state == "IDLE") {
		sprite_index = spr_f_mario_idle_starpower
		image_speed = 0.5
	}
	if (player_state == "RIGHT" || player_state == "LEFT") {
		if (global.starpower_timer_timer = 0) {
			last_image = image_index
			sprite_index = spr_f_mario_walk_starpower_0
			image_index = last_image
		}
		if (global.starpower_timer_timer = 4) {
			last_image = image_index
			sprite_index = spr_b_mario_walk_starpower_1
			image_index = last_image
		}
		if (global.starpower_timer_timer = 8) {
			last_image = image_index
			sprite_index = spr_b_mario_walk_starpower_2
			image_index = last_image
		}
		if (global.starpower_timer_timer = 12) {
			last_image = image_index
			sprite_index = spr_b_mario_walk_starpower_3
			image_index = last_image
			global.starpower_timer_timer = -4
		}
		global.starpower_timer_timer++
		image_speed = 0
	}
}