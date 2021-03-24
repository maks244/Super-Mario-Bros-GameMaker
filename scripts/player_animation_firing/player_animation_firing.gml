function player_animation_firing(){
	if (global.firing_sprite_timer != 8) {
		sprite_index = spr_f_mario_firing
		global.firing_sprite_timer++
	}
	else {
		sprite_index = sprite_before_shooting
		global.firing_sprite_timer = 0
		firing_sprite = false
	}
}