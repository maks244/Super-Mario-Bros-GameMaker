// Stop if game is paused
if (global.game_paused || global.game_paused_on_timer) exit

// Check if the block has already been hit
if (sprite_index == spr_coin_block_hit && y == initial_y) {
	mask_index = spr_coin_block_hit
	exit
}

// Checks if you collide with the bottom of a brick
if (instance_position(x+4, y+17, obj_player) || instance_position(x+12, y+17, obj_player)) {
	if (instance_position(x+8, y+17, obj_follower) && obj_player.jumpTime < 19) {
		bouncing = true
		obj_player.vsp = 1.5
		obj_player.jumpTime = 30
		instance_create_depth(x, y-4, 2, obj_1up)
		sprite_index = spr_coin_block_hit
		visible = true
		// Play bumping sound
		audio_play_sound(BlockBump, 1, false)
	}
}
else mask_index = spr_no_collision

// Bouncing animation
if (bouncing) {
    y -= 1
    if (y == initial_y - 8) bouncing = false
}
if (!bouncing && y != initial_y) y += 1