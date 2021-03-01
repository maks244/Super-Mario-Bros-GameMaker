// Check if Mario should transform into Super Mario or Fire Mario
if (transform != undefined) {
	player_powerup_transformation(transform, state)
	if (global.invincibility_timer > 0) toggle_visibility()
	exit
}

// Handles the invincibility timer for when Mario takes damage
player_invincibility_timer()

// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) {
	image_speed = 0
	exit
}

// Main actions
switch (state) {
    case("IDLE"): {
		last_state = "IDLE"
		player_allow_movement()
		player_animation_static(state)
		player_switch_states(state)
		
        break
    }
    case("RIGHT"): {
        last_state = "RIGHT"
		player_allow_movement()
        player_animation_walking(hsp, state)
		player_switch_states(state)
		
        break
    }
    case("LEFT"): {
        last_state = "LEFT"
		player_allow_movement()
        player_animation_walking(hsp, state)
		player_switch_states(state)
		
        break
    }
    case("JUMPING"): {
		jump_sound_timer = 0
		player_allow_movement()
		player_animation_static(state)
		player_jump_physics()
		
        break
    }
    case("DEAD"): {
        player_death_sequence()
		
        break
    }
    case ("ENTERING_PIPE"): {
        if (place_meeting(x, y+1, obj_pipe) && pipe_timer < 34) y += 1
        else if (pipe_timer < 18) x += 1
		pipe_timer++
		
        break
    }
    case ("EXITING_PIPE"): {
		if (place_meeting(x, y, obj_pipe) && pipe_timer < 18) {
			if (global.powerup = 0 && pipe_timer > 0) y -= 1
			if (global.powerup >= 1 && pipe_timer > -14) y -= 1
		}
        player_animation_static("IDLE")
		if (pipe_timer > 18) {
            state = "IDLE"
            draw_remaining_time.visible = true
        }
		pipe_timer++
		
        break
    }
}

// Fallen out of level check
if (y >= 264) {
	state = "DEAD"
	visible = false
}

//Gravity
if (vsp < 3.9) vsp += global.grav

//Check if player has acquired checkpoint
if (x > 1344) global.checkpoint_acquired = true

// Enemy Collision check
enemy_collision_check(x, y)

// Block collision and movement
object_collision_and_movement()

// Starpower control
player_starpower_control()

// Room view and score text control
game_room_view_control(x, hsp)