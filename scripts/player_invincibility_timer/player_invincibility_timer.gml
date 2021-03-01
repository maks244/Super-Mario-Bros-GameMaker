function player_invincibility_timer(){
	if (global.invincibility_timer > 0) {
		if (global.invincibility_timer > 154) player_animation_damage()
		toggle_visibility()
		global.invincibility_timer--
		if (global.invincibility_timer == 0) visible = true
	}
}