if (entered_once = true) exit
if (position_meeting(x+16, y-1, obj_player)) && (obj_player.down) && (obj_player.x >= 940) && (obj_player.x <= 948)
{
    audio_play_sound(Pipe, 1, false)
    obj_player.state = "ENTERING_PIPE"
    alarm[0] = room_speed * 1.2
    entered_once = true
}