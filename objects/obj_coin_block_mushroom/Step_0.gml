// Stop if game is paused
if (global.game_paused) {
	image_speed = 0
	exit
}
else image_speed = 1

// Checks if you collide with the bottom of a brick
if (place_meeting(x, y+1, obj_player)) {
	if (place_meeting(x, y+1, obj_follower)) {
		// Play bumping sound
		if (!audio_is_playing(BlockBump)) audio_play_sound(BlockBump, 1, false)
		
		if (sprite_index == spr_coin_block) {
		    bouncing = true
		    obj_player.vsp = 2
		    obj_player.jumpTime = 30
		    sprite_index = spr_coin_block_hit
		    
			// Create a mushroom or fireflower depending on the powerup
			if (global.powerup >= 1) instance_create_depth(x, y-4, 2, obj_fire_flower)
			else instance_create_depth(x, y-4, 2, obj_mushroom)
			
			// If there's an enemy above the block, kill it
			enemy = instance_place(x, y-16, obj_goomba)
			if (enemy != undefined) enemy_death_animation(false)
		}
		else obj_player.vsp = 1.5
	}
	// This checks if you're at the side of the block and if you are slides you up
	else player_slide_move_check(x, y, obj_player.hsp)
}

// Check if player still needs to be moved
if (i != undefined) {
	if (i != 0) player_slide_move(i)
	else mask_index = spr_brick_block
}

// Stop if game is paused
if (global.game_paused_on_timer) exit

// Bouncing animation
if (bouncing) {
    y -= 1
    if (y == initial_y - 8) bouncing = false
}
if (!bouncing && y != initial_y) y += 1