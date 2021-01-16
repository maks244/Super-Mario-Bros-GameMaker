/// @description Static HUD

draw_sprite(spr_static_hud, image, __view_get( e__VW.XView, 0 )+24, __view_get( e__VW.YView, 0 )+7.5)

if (set_alarm)
{
	alarm[0] = room_speed * 0.14
	set_alarm = 0
}