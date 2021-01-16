// Check if the block has already been hit
if (sprite_index == spr_coin_block_hit) && (y == initial_y) exit

// Checks if you collide with the bottom of a brick
if (place_meeting(x, y+1, obj_player) && place_meeting(x, y+1, obj_follower))
{
    bouncing = true
    obj_player.vsp = 1
    obj_player.jumpTime = 20
    if (coins == 0) sprite_index = spr_coin_block_hit
    if (y = initial_y) coins -= 1
    instance_create_depth(x, y-16, -3, obj_block_coin)
}

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