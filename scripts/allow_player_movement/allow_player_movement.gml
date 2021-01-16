function allow_player_movement() 
{
	// Input check
	up = keyboard_check(ord("W"))
	down = keyboard_check(ord("S"))
	right = keyboard_check(ord("D"))
	left = keyboard_check(ord("A"))
	select = keyboard_check(ord("E"))
	start = keyboard_check(vk_enter)
	b = keyboard_check(vk_shift)
	a = keyboard_check(vk_space)

	// Deceleration
	if ((!right) && (!left))
	{
	    hsp = (hsp/2)*(acceleration*37.5)
	    if (hsp < 0.9) && (hsp > -0.9)
	    {
	        hsp = 0
	    }
	}
	
	// Disable being able to go left and right at the same time
	if ((right) && (left) && (jumpTime = 0))
	{
	    left = 0
	    right = 0
	    hsp = (hsp/2)*(acceleration*37.5)
	    if (hsp < 0.9) && (hsp > -0.9)
	    {
	        hsp = 0
	    }
	}

	// Disable bunnyhopping
	if (vsp > 0) && (a)
	{
	    a = 0
	}

	// Move right
	if (right)
	{
	    hsp += acceleration
	    if (hsp >= maxSpeed)
	    {
	        hsp = maxSpeed
	    }
	}
        
	// Move left
	if (left)
	{
	    if (x >= (__view_get( e__VW.XView, 0 ) + 8)) hsp -= acceleration
	    if (hsp <= -maxSpeed)
	    {
	        hsp = -maxSpeed
	    }
	}
}
