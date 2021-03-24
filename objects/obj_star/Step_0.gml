switch (state) {
	case("WAIT"): {
		timer++
		if (timer = 16) {
			state = "APPEAR"
			vsp = -0.25
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
		hsp = dir
	}
}

// Gravity
if (vsp < 5) vsp += grav

// Collision
object_collision_and_movement(id)

// Turn around check
if (place_meeting(x+hsp, y, parent_solid_star)) {
    dir *= -1
}

//Bounce check
if (place_meeting(x, y+vsp, parent_solid_star)) {
    vsp = -3.25
}