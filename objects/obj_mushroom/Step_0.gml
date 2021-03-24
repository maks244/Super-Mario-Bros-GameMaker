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
		if (timer = 48) state = "MOVE"
		else y -= 0.25
		timer++
		exit
	}
	case("MOVE"): {
		depth = -2
		hsp = dir * maxSpeed
	}
}

// Gravity
if (vsp < 5) vsp += grav

// Collision
object_collision_and_movement(id)

// Turn around check
if (place_meeting(x+hsp, y, parent_solid)) {
    dir *= -1
}