// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) {
	image_speed = 0
	exit
}

// States
switch (state) {
    case("DEACTIVATED"): {
        hsp = 0
		image_speed = 0
		
        break
    }
    case("WALK"): {
        // Sprite
        sprite_index = spr_koopa
        image_speed = 1
		
        // Movement
        hsp = dir * maxSpeed
		
        break
    }
    case("STOMPED"): {
        // Sprite
        if (wake_up_timer < 230) sprite_index = spr_koopa_stomped
		
        // Movement
        hsp = 0
		
		// Player kicking check
		if (place_meeting(x, y, obj_player) && global.starpower_timer == 0) {
			// Makes 400 score popup
			var instance = instance_create_depth(x, y-16, 0, draw_popup_score_enemy); var enemy_score = Score400; global.total_score += 400; with (instance) add_score = enemy_score
			state = "KICKED"
			if (enemy_collision_side_check() = "LEFT") dir = 1
			else dir = -1
			global.koopa_timer = 10
			audio_play_sound(KoopaKick, 1, false)
		}
		
		// Wake up koopa after 10.5 seconds
		wake_up_timer++
		if (wake_up_timer >= 230) {
			sprite_index = spr_koopa_waking_up
			image_speed = 1
		}
		if (wake_up_timer = 315) {
			state = "WALK"
			wake_up_timer = 0	
		}
		
        break
    }
	case("KICKED"): {
        // Sprite
        sprite_index = spr_koopa_stomped
		
        // Movement
        hsp = dir * 3
		
        break
    }
}
// Gravity
if (vsp < 5) vsp += grav

// Collision
object_collision_and_movement(id)

// Turn around check
if (place_meeting(x+hsp, y, parent_solid)) dir *= -1
else if (place_meeting(x+hsp, y, parent_enemy)) {
	if (state = "WALK" || state == "STOMPED") dir *= -1
}
if (dir) image_xscale = -1
else image_xscale = 1

// Fireball collision check
if (place_meeting(x, y, obj_fireball) && state != "DEACTIVATED") {
	fireball = instance_place(x, y, obj_fireball)
	enemy = self
	enemy_death_animation(false)
	with (fireball) {
		instance_create_depth(x, y, -2, obj_fireball_explosion)
		instance_destroy()
	}
}

// Checks position and activates when on screen
if (distance_to_object(obj_player) < 192 && state == "DEACTIVATED" && state != undefined) {
    state = "WALK"
	
    // Activate nearby goombas
    if (distance_to_object(obj_player) > 180) {
        near_enemy = instance_place(x+24, y, parent_enemy)
        if (near_enemy != noone) {
            with (near_enemy) state = "WALK"
        }
    }
}