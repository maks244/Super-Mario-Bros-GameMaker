switch (state) {
	case("WAIT"): {
		timer++
		if (timer = 16) {
			state = "APPEAR"
			timer = 0
		}
		exit
	}
	case("APPEAR"): {
		visible = true
		if (timer = 48) state = "RUN"
		else y -= 0.25
		timer++
		exit
	}
	case("RUN"): {
		hsp = dir * maxSpeed
	}
}

// Gravity
if (vsp < 5) vsp += grav

// Collision
object_collision_and_movement()

// Turn around check
if (place_meeting(x+hsp, y, parent_solid) || place_meeting(x+hsp, y, parent_enemy)) {
    dir *= -1
}