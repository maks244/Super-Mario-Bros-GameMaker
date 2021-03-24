// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) exit

// Collision
object_collision_and_movement(id)

// Gravity
if (vsp < 5) vsp += grav

//Bounce check
if (place_meeting(x, y+vsp, parent_solid)) {
    vsp = -3
}

// Wall hit check
if (place_meeting(x+hsp, y, parent_solid)) {
    instance_destroy()
	instance_create_depth(x, y, -3, obj_fireball_explosion)
}

// Make fireballs disappear off screen
if (!object_on_screen_check()) instance_destroy()