// Stop if game is paused
if (global.game_paused) {
	image_speed = 0
	exit
}
else image_speed = 1

// Checks if you collide with the bottom of a brick
if (place_meeting(x, y+1, obj_player)) {
	if (place_meeting(x, y+1, obj_follower)) {
		if (sprite_index = spr_coin_block) {
			global.total_coins++
			global.total_score += 200
		    bouncing = true
		    obj_player.vsp = 1
		    obj_player.jumpTime = 20
		    sprite_index = spr_coin_block_hit
		    instance_create_depth(x, y-20, -3, obj_block_coin)
		}
	}
	// This checks if you're at the side of the block and if you are slides you up
	else slide_move_player_check(x, y, obj_player.hsp)
}
// Check if player still needs to be moved
if (i != undefined) {
	if (i != 0) slide_move_player(i)
	else mask_index = spr_brick_block
}

// Bouncing animation
if (bouncing) {
    y -= 1
    if (y == initial_y - 8) bouncing = false
}
if (!bouncing) && (y != initial_y) y += 1