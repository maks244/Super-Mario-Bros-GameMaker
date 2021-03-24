// Check if Mario should transform into Super Mario or Fire Mario
if (transform != undefined) {
	player_powerup_transformation(transform, global.state)
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
switch (global.state) {
    case("IDLE"): {
		duck_jump = false
		last_state = "IDLE"
		player_allow_movement()
		player_animation_static(global.state)
		player_switch_states(global.state)
		
        break
    }
    case("RIGHT"): {
		duck_jump = false
        last_state = "RIGHT"
		player_allow_movement()
        player_animation_walking(hsp, global.state)
		player_switch_states(global.state)
		
        break
    }
    case("LEFT"): {
		duck_jump = false
        last_state = "LEFT"
		player_allow_movement()
        player_animation_walking(hsp, global.state)
		player_switch_states(global.state)
		
        break
    }
    case("JUMPING"): {
		jump_sound_timer = 0
		player_allow_movement()
		player_animation_static(global.state)
		player_jump_physics()
		
        break
    }
	case("DUCKING"): {
		duck_jump = true
		player_allow_movement()
		player_animation_static(global.state)
		player_switch_states(global.state)
		
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
            global.state = "IDLE"
            draw_remaining_time.visible = true
        }
		pipe_timer++
		
        break
    }
	case ("FLAGPOLE_WIN"): {
		player_win_sequence()
		
		break
	}
}

// Fallen out of level check
if (y >= 264) {
	global.state = "DEAD"
	visible = false
}

//Gravity
if (vsp < 3.9 && global.state != "FLAGPOLE_WIN") vsp += global.grav

//Check if player has acquired checkpoint
if (x > 1344) global.checkpoint_acquired = true

// Set this sprite when Mario spawns in while falling
if (falling_sprite) {
	if (place_meeting(x, y+1, parent_solid)) falling_sprite = false
	else {
		player_animation_walking(0, "RIGHT")
		image_index = 0
	}
}

// Enemy Collision check
enemy_collision_check(x, y)

// Block collision and movement
object_collision_and_movement(id)

// Starpower control
player_starpower_control()

// Koopa invisibility timer
enemy_koopa_timer()

// Check if player is throwing fireball
player_fireball_throw_check()

// Room view and score text control
game_room_view_control(x, hsp)