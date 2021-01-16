// Check if the block has already been hit
if (sprite_index == spr_coin_block_hit) && (y == initial_y) exit

// Checks if you collide with the bottom of a brick
if (place_meeting(x, y+1, obj_player) && place_meeting(x, y+1, obj_follower))
{
    bouncing = true
    obj_player.vsp = 1
    obj_player.jumpTime = 20
    sprite_index = spr_coin_block_hit
    instance_create_depth(x, y-16, -1, obj_1up)
    visible = true
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