// Check if player is exiting the bonus world and teleport them to the right spot
allow_player_movement()
if (room = Level_1_1)
{
	if (global.exiting_bonus)
	{
		x = 2640
	    y = 185
		__view_set( e__VW.XView, 0, 2576)
	    draw_remaining_time.visible = false
	    pipe_timer = -80
	    state = "EXITING_PIPE"
	}
	else if (global.checkpoint_acquired)
	{
		x = 1344
		y = 200
		__view_set( e__VW.XView, 0, 1296)
	}
}

if (room = Level_1_1_Bonus)
{
    draw_remaining_time.visible = false
    alarm[0] = 25
}