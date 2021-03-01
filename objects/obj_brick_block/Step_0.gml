// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) exit

// Checks if you collide with the bottom
if (place_meeting(x, y+1, obj_player)) {
	if (place_meeting(x, y+1, obj_follower)) {
	    bouncing = true
	    obj_player.vsp = 1
	    obj_player.jumpTime = 20
		// If there's an enemy above the block, kill it
		enemy = instance_place(x, y-16, obj_goomba)
		if (enemy != undefined) enemy_death_animation()
		// Play bumping sound
		audio_play_sound(BlockBump, 1, false)
	}
	// This checks if you're at the side of the block and if you are slides you up
	else player_slide_move_check(x, y, obj_player.hsp)
}
// Check if player still needs to be moved
if (i != undefined) {
	if (i != 0) player_slide_move(i)
	else mask_index = spr_brick_block
}

// Bouncing animation
if (bouncing) {
    y -= 1
    if (y == initial_y - 8) bouncing = false
}
if (!bouncing && y != initial_y) y += 1