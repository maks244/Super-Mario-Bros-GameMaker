if (entered_once = true) exit
if (position_meeting(x-3, y+30, obj_player) && (obj_player.right))
{
    audio_play_sound(Pipe, 1, false)
    obj_player.state = "ENTERING_PIPE"
    obj_player.sprite_index = spr_s_mario_walk_r
    obj_player.image_speed = 0.2
    obj_player.y -= 0.5
    alarm[0] = room_speed * 3
    entered_once = true
}


