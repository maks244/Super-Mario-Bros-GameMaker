function player_sprite_big_mario(){
	if (global.starpower_timer > 0) {
		sprite_index = spr_b_mario_idle_starpower
		if (global.starpower_timer < 146) image_speed = 0.25
		else image_speed = 1
	}
	else {
		sprite_index = spr_b_mario_idle
		image_speed = 0
	}
}