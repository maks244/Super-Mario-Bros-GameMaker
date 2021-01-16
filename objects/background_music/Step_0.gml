// If time left is 99 play the HurryUp sound else just play the fast music
if (global.time_left < 100) && (played_once = false)
{
    if (global.time_left = 99)
    {
        audio_stop_all()
        audio_play_sound(HurryUp, 1, false)
        alarm[0] = room_speed * 2.8
        played_once = true
    }
    else
    {
        audio_stop_all()
        alarm[0] = 1
        played_once = true
    }
}