function object_collision_and_movement(instance){
	// Quit script if player is going in or out a pipe
	if (instance.object_index = obj_player) {
		if (global.state = "ENTERING_PIPE" || global.state = "EXITING_PIPE") exit
	}
	
	// Position check
	sprite_bbox_top = bbox_top - y
	sprite_bbox_bottom = bbox_bottom - y
	sprite_bbox_right = bbox_right - x
	sprite_bbox_left = bbox_left - x
	
	// Screen stop check
	if (instance.object_index = obj_player) {
		if (x >= __view_get(e__VW.XView, 0)+8) x += hsp
		else {
			if (global.state = "RIGHT" && right && hsp > 0) x += hsp; hsp = -1
			if (hsp = -1 && !left) hsp = 0.5
			if (!right && !left && jumpTime == 0) hsp = 0
		}
	}
	else x += hsp
	// Horizontal
	var collides_with_parent_solid = false
	var collides_with_parent_solid_star = false
	if (instance.object_index != obj_star) var collides_with_parent_solid = place_meeting(x, y, parent_solid)
	else var collides_with_parent_solid_star = place_meeting(x, y, parent_solid_star)
	if (collides_with_parent_solid || collides_with_parent_solid_star) {
		var solid_object = instance_place(x+sign(hsp), y, parent_solid)
		if (hsp > 0 && solid_object != noone) x = (solid_object.bbox_left-1)-sprite_bbox_right
		else if (hsp < 0 && solid_object != noone) x = (solid_object.bbox_right+1)-sprite_bbox_left
		hsp = 0
	}

	// Vertical
	y += vsp
	var collides_with_parent_solid = false
	var collides_with_parent_solid_star = false
	if (instance.object_index != obj_star) var collides_with_parent_solid = place_meeting(x, y, parent_solid)
	else var collides_with_parent_solid_star = place_meeting(x, y, parent_solid_star)
	if (collides_with_parent_solid || collides_with_parent_solid_star) {
		var solid_object = instance_place(x, y, parent_solid)
		if (vsp > 0 && solid_object != noone) y = (solid_object.bbox_top-1) - sprite_bbox_bottom
		else if (vsp < 0 && solid_object != noone) y = (solid_object.bbox_bottom+1) - sprite_bbox_top
		vsp = 0
	}
}
