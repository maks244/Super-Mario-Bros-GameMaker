// Stop if game is paused
if (global.game_paused)
{
	image_speed = 0
	exit
}
// Main actions
switch(state)
{
    case("IDLE"):
    {
        if (last_direction = "RIGHT") sprite_index = spr_s_mario_idle_r
        if (last_direction = "LEFT") sprite_index = spr_s_mario_idle_l
        image_speed = 0
        last_state = "IDLE"
        jump_sound_played = 2
		
        allow_player_movement()
		
        //Check inputs
        if (a) state = "JUMPING"
        if (right) state = "RIGHT"
		
        // Screen scroll stop check
        if (x >= (__view_get( e__VW.XView, 0 ) + 8) && left) state = "LEFT"
		
        break
    }
    case("RIGHT"):
    {
        last_state = "RIGHT"
        last_direction = "RIGHT"
        if (hsp < -0.4) sprite_index = spr_s_mario_stop_r
        else sprite_index = spr_s_mario_walk_r
        image_speed = (abs(hsp))/4 * animationSpeed
        jump_sound_played = 2
		
        allow_player_movement()
		
        //Check inputs
        if (b) maxSpeed = 3 else maxSpeed = 2
        if (a) state = "JUMPING"
        if (left) state = "LEFT"
        if (hsp = 0) state = "IDLE"
		
        break
    }
    case("LEFT"):
    {
        last_state = "LEFT"
        last_direction = "LEFT"
        if (hsp > 0.4) sprite_index = spr_s_mario_stop_l
        else sprite_index = spr_s_mario_walk_l
        image_speed = (abs(hsp))/4 * animationSpeed
        jump_sound_played = 2
		
        allow_player_movement()
		
        //Check inputs
        if (b) maxSpeed = 3 else maxSpeed = 2
        if (a) state = "JUMPING"
        if (right) state = "RIGHT"
        if (hsp = 0) state = "IDLE"
		
        break
    }
    case("JUMPING"):
    {
        if (last_direction = "LEFT") sprite_index = spr_s_mario_jump_l
        if (last_direction = "RIGHT") sprite_index = spr_s_mario_jump_r
        image_speed = 0
        jump_sound_played -= 1
		
        allow_player_movement()
		
        if (a)
        {
            jumpTime += 1
            if (jumpTime < 12) vsp = -jumpSpeed
        }
        else jumpTime = 20

        if (place_meeting(x, y+1, parent_solid))
        {
            jumpTime = 0
            state = last_state
        }
		
        // Jump sound
        if (jump_sound_played = 0)
        {
            audio_play_sound(Jump, 1, false)
        }
		
        break
    }
    case("DEAD"):
    {
        if (death_timer == 0)
        {
            global.grav = 0
            global.mario_lives -= 1
			global.exiting_bonus = false
            hsp = 0
            vsp = 0
            sprite_index = spr_mario_dead
			depth = -100
            audio_stop_all()
            audio_play_sound(Death, 1, false)
        }
		
        death_timer += 1
		
        if (death_timer == room_speed/3)
        {
            // Death animation
            global.grav = 0.2
            vsp = -4.5
        }
		
        if (death_timer == room_speed*3.5)
        {
            if (global.time_left < 1) room_goto(Time_Up)
            else
            {
                if (global.mario_lives < 1) room_goto(Game_Over)
                else room_goto(Level_Start)
            }
        }
		
        break
    }
    case ("ENTERING_PIPE"):
    {
        pipe_timer += 1
		
        if (place_meeting(x, y+1, obj_pipe))
        {
            if (pipe_timer < 18) y += 1
        }
        else if (pipe_timer < 18) x += 1
		
        break
    }
    case ("EXITING_PIPE"):
    {
        pipe_timer += 1
		
        if (place_meeting(x, y, obj_pipe)) && (pipe_timer > 0) && (pipe_timer < 18) y -= 1
        if (pipe_timer > 18)
        {
            state = "IDLE"
            draw_remaining_time.visible = true
        }
		
        break
    }
}

//Gravity
if (vsp < 3.9) vsp += global.grav

// Block collision check
block_collision_and_movement()

// Enemy Collision check
if (place_meeting(x, y, parent_enemy))
{
    enemy = instance_place(x, y, parent_enemy)
	
    // Collision from the top
    if (y < enemy.y+4) && (enemy.state != "DEAD")
    {
        audio_play_sound(EnemyStomp, 1, false)
		global.total_score += 100
		vsp = -3
		
        with(enemy)
        {
            state = "DEAD"
            alarm[0] = room_speed * 0.5
        }
    }
	
    // Collision from the sides
    else
    {
        global.powerup_state -= 1
        if (global.powerup_state < 0) state = "DEAD"
    }
}

//Check if player has acquired checkpoint
if (x > 1344) global.checkpoint_acquired = true

// Room and HUD view control
if (room = Level_1_1)
{
	if (x < 3228) && (x > (__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) * 0.475))) && (sign(hsp) = 1)
	{
		__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0)+(hsp))
	}
	else if (x < 3228) && (x > (__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) * 0.45))) && (sign(hsp) = 1)
    {
        __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0)+(hsp/1.125))
    }
	else if (x < 3228) && (x > (__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) * 0.42))) && (sign(hsp) = 1)
    {
        __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0)+(hsp/1.25))
    }
	else if (x < 3228) && (x > (__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) * 0.39))) && (sign(hsp) = 1)
    {
        __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0)+(hsp/1.375))
    }
    else if (x < 3228) && (x > (__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) * 0.36))) && (sign(hsp) = 1)
    {
        __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0)+(hsp/1.5))
    }
    if (x <= (__view_get( e__VW.XView, 0 ) + 8) && (sign(hsp) = -1)) hsp = 0
}