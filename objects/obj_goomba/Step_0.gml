// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) {
	image_speed = 0
	exit
}

// Delayed remove
if (delayed_remove) {
	if (timer == 30) instance_destroy()
	timer++
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
        sprite_index = spr_goomba
        image_speed = animationSpeed
        // Movement
        hsp = dir * maxSpeed
		
        break
    }
    case("DEAD"): {
        // Sprite
        sprite_index = spr_goomba_death
        // Movement
        hsp = 0
		
        exit
    }
}
// Gravity
if (vsp < 5) vsp += grav

// Collision
object_collision_and_movement()

// Turn around check
if (place_meeting(x+hsp, y, parent_solid) || place_meeting(x+hsp, y, parent_enemy)) {
    dir *= -1
}

// Checks position and activates when on screen
if (distance_to_object(obj_player) < 192) {
    state = "WALK"
    // Activate nearby goombas
    if (distance_to_object(obj_player) > 180) {
        near_enemy = instance_place(x+24, y, parent_enemy)
        if (near_enemy != noone) {
            with (near_enemy) state = "WALK"
        }
    }
}