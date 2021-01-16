// the x offset
x_offset = __view_get(e__VW.XView, 0)

// Time management
if (set_alarm)
{
    alarm[0] = room_speed * 0.4
    set_alarm = 0
}

// Time up check
if (global.time_left < 1) obj_player.state = "DEAD"