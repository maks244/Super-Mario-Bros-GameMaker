function player_fireball_throw_check(){
	// Checks if player is in the right state and if he's thrown 2 fireballs already
	if (global.state = "IDLE" || global.state = "RIGHT" || global.state = "LEFT" || global.state = "JUMPING") {
		if (global.powerup = 2 && instance_number(obj_fireball) < 2) {
			b_pressed = keyboard_check_pressed(vk_shift)
			if (b_pressed) {
				instance_create_depth(x, y-8, 0, obj_fireball)
				sprite_before_shooting = sprite_index
				sprite_index = spr_f_mario_firing
				firing_sprite = true
			}
		}
	}
}