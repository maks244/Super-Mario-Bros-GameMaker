function block_collision_and_movement()
{
	// Horizontal
	if (place_meeting(x+hsp, y, parent_solid))
	{
	    while (!place_meeting(x+sign(hsp), y, parent_solid))
	    {
	        x += sign(hsp)
	    }
	    hsp = 0
	}
	x += hsp 
	
	// Vertical
	if (place_meeting(x, y+vsp, parent_solid))
	{
	    while (!place_meeting(x, y+sign(vsp), parent_solid))
	    {
	        y += sign(vsp)
	    }
	    vsp = 0
	}
	y += vsp
}
