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
        image_speed = 1
		
        // Movement
        hsp = dir * maxSpeed
		
		// Koopa collision check
		if (place_meeting(x, y, parent_enemy)) {
			enemy = instance_place(x, y, parent_enemy)
			if (enemy.object_index = obj_koopa && enemy.state = "KICKED") {
				enemy = self
				enemy_death_animation(true)
				global.koopa_combo++
			}
		}
		
		// Fireball collision check
		if (place_meeting(x, y, obj_fireball)) {
			fireball = instance_place(x, y, obj_fireball)
			enemy = self
			enemy_death_animation(false)
			with (fireball) {
				instance_create_depth(x, y, -3, obj_fireball_explosion)
				instance_destroy()
			}
		}
		
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
object_collision_and_movement(id)

// Turn around check
if (place_meeting(x+hsp, y, parent_solid) || place_meeting(x+hsp, y, parent_enemy)) {
    dir *= -1
}

// Checks position and activates when on screen
if (distance_to_object(obj_player) < 192 && state != undefined) {
    state = "WALK"
    // Activate nearby goombas
    if (distance_to_object(obj_player) > 180) {
        near_enemy = instance_place(x+24, y, parent_enemy)
        if (near_enemy != noone && near_enemy.object_index != obj_koopa) with (near_enemy) state = "WALK"
    }
}