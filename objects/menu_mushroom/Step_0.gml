// Input check
select = keyboard_check_pressed(ord("E"))
start = keyboard_check_pressed(vk_enter)

if (select)
{
    if (state = "UP")
    {
        state = "DOWN"
        y += 77
    }
    else
    {  
        state = "UP"
        y -= 77
    }
}

if (start)
{
    if (state = "UP")
    {
        room_goto(Level_Start)
    }
    else game_end()
}