// Draw HUD
draw_sprite(spr_static_hud, image, __view_get( e__VW.XView, 0 )+24, __view_get( e__VW.YView, 0 )+7.5)

// Stop if game is paused
if (global.game_paused) exit

// Coin Animation
if (set_alarm)
{
	alarm[0] = room_speed * 0.14
	set_alarm = 0
}