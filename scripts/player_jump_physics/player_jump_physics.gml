function player_jump_physics(){
	if (jump_timer < 2) {
			jumpTime += 1
			vsp = -jumpSpeed
		}
	else {
		if (a) {
		    jumpTime += 1
		    if (jumpTime < 13) vsp = -jumpSpeed
		}
		else jumpTime = 20
		if (place_meeting(x, y+1, parent_solid)) {
		    jumpTime = 0
			jump_timer = 0
		    if (down && duck_jump) global.state = "DUCKING"
			else global.state = last_state
		}
	}
	jump_timer++
}