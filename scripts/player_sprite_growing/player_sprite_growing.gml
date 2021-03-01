function player_sprite_growing(){
	if (global.starpower_timer > 0) {
		sprite_index = spr_mario_growing_starpower
		if (global.starpower_timer < 146) image_speed = 0.25
		else image_speed = 1
	}
	else {
		sprite_index = spr_mario_growing
		image_speed = 0
	}
}