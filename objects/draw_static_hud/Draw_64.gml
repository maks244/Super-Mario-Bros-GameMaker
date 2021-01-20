// Draw HUD
draw_sprite(spr_static_hud, image, 24, 7.5)

// Stop if game is paused
if (global.game_paused) exit

// Coin Animation
if (set_alarm)
{
	alarm[0] = room_speed * 0.14
	set_alarm = 0
}