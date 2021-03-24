function brick_mushroom_bounce(){
	if (place_meeting(x, y-16, obj_mushroom)) {
		// Checks which direction the mushroom should bounce
		var mushroom = instance_place(x, y-16, obj_mushroom)
		x1 = mushroom.x - x
		if (x1 <= 0) with (mushroom) dir = -1
		else with (mushroom) dir = 1
		
		// Bounces the mushroom up
		with (mushroom) {
			vsp = -4
			y -= 2
		}
	}
}