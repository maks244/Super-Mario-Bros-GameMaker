// Check if the block has already been hit
if (sprite_index == spr_coin_block_hit) && (y == initial_y)
{
	mask_index = spr_coin_block_hit
	exit
}

// Checks if you collide with the bottom of a brick
if (instance_position(x+4, y+17, obj_player) or instance_position(x+12, y+17, obj_player))
{
	if (instance_position(x+8, y+17, obj_follower) && (obj_player.jumpTime < 15))
    {
		bouncing = true
	    obj_player.vsp = 1
	    obj_player.jumpTime = 20
	    sprite_index = spr_coin_block_hit
	    instance_create_depth(x, y-16, -1, obj_1up)
	    visible = true
	}
}
else mask_index = spr_no_collision

// Bouncing animation
if (bouncing)
{
    y -= 1
    if (y == initial_y - 8) bouncing = false
}
if (!bouncing)
{
    if (y != initial_y) y += 1
}