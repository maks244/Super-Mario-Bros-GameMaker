function object_collision_and_movement(){
	if (state != "ENTERING_PIPE" && state != "EXITING_PIPE") {
		// Position check
		sprite_bbox_top = bbox_top - y
		sprite_bbox_bottom = bbox_bottom - y
		sprite_bbox_right = bbox_right - x
		sprite_bbox_left = bbox_left - x
	
		// Horizontal
		x += hsp
		if (place_meeting(x, y, parent_solid)) {
		    var solid_object = instance_place(x+sign(hsp), y, parent_solid)
		    if (hsp > 0 && solid_object != noone) x = (solid_object.bbox_left-1)-sprite_bbox_right
			else if (hsp < 0 && solid_object != noone) x = (solid_object.bbox_right+1)-sprite_bbox_left
		    hsp = 0
		}

		// Vertical
		y += vsp
		if (place_meeting(x, y, parent_solid)) {
		    var solid_object = instance_place(x, y, parent_solid)
		    if (vsp > 0 && solid_object != noone) y = (solid_object.bbox_top-1) - sprite_bbox_bottom
			else if (vsp < 0 && solid_object != noone) y = (solid_object.bbox_bottom+1) - sprite_bbox_top
		    vsp = 0
		}
	}
}