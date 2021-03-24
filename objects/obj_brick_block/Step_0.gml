// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) exit

// Checks if you collide with the bottom
if (place_meeting(x, y+1, obj_player)) {
	if (place_meeting(x, y+1, obj_follower)) {
		// Play bumping sound
		if (!audio_is_playing(BlockBump)) audio_play_sound(BlockBump, 1, false)
		
	    bouncing = true
	    obj_player.vsp = 1.5
	    obj_player.jumpTime = 20
		
		// If there's an enemy above the block, kill it
		enemy = instance_place(x, y-16, obj_goomba)
		if (enemy != undefined) enemy_death_animation(false)
		
		// If there's a mushroom above the block, bounce it
		brick_mushroom_bounce()
		
		// Break the block if you're Super Mario or Fire Mario
		if (global.powerup >= 1) {
			audio_play_sound(BlockBreak, 1, false)
			brick_break_animation()
		}
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