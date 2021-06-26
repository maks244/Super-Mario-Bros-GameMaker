function player_allow_movement() 
{
	// Input check
	down = keyboard_check(ord("S"))
	right = keyboard_check(ord("D"))
	left = keyboard_check(ord("A"))
	select = keyboard_check_pressed(ord("E"))
	start = keyboard_check_pressed(vk_enter)
	b = keyboard_check(vk_shift)
	a = keyboard_check(vk_space)
	a_pressed = keyboard_check_pressed(vk_space)
	
	// Deceleration
	if (!right && !left && jumpTime == 0) {
		if (hsp > 1.5 || hsp < -1.5) hsp = lerp(hsp, 0, acceleration*0.5)
		if (hsp < 1.5 && hsp > -1.5) hsp = lerp(hsp, 0, acceleration*1.25)
		if (hsp < 1 && hsp > -1) hsp = lerp(hsp, 0, acceleration*2.5)
		if (hsp < 0.5 && hsp > -0.5) hsp = lerp(hsp, 0, acceleration*5)
		if (hsp < 0.09 && hsp > -0.09) hsp = 0
	}
	
	// Make stopping faster
	if (global.state = "RIGHT" && hsp < 0) hsp += 0.05
	if (global.state = "LEFT" && hsp > 0) hsp -= 0.05
	
	// Ducking deceleration
	if (global.state = "DUCKING") {
		if (hsp < 0) hsp += 0.05
		if (hsp > 0) hsp -= 0.05
	}
	
	// Disable being able to go left and right at the same time
	if (right && left && jumpTime == 0) {
	    left = 0
	    right = 0
	    hsp = lerp(hsp, 0, acceleration)
		if (hsp < 0.09 && hsp > -0.09) hsp = 0
	}
	
	// In-air deceleration
	if (right || left) {
		if (hsp < 1 && hsp > -1) {
			if (!place_meeting(x, y+1, parent_solid) && jumpTime = 0) hsp = lerp(hsp, 0, acceleration*1.5)
			if (jumpTime > 0) hsp = lerp(hsp, 0, acceleration*0.6)
		}
	}
	
	// Move right
	if (right && global.state != "DUCKING") {
		hsp += acceleration
		if (hsp >= maxSpeed) hsp = maxSpeed
	}
        
	// Move left
	if (left && global.state != "DUCKING") {
		hsp -= acceleration
		if (hsp <= -maxSpeed) hsp = -maxSpeed
	}
}
