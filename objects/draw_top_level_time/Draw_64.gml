// Score display
if (global.level_timer == 0 && draw_time_after_death == false) exit
if (new_time) {
	if (timer < 53)	{
		if (timer2 = 2) {
			draw_text_transformed(41, 115, global.new_time_string, 0.3, 0.45, 0)
			timer2 = 0
		}
	}
	else draw_text_transformed(41, 115, global.new_time_string, 0.3, 0.45, 0)
}
else if (draw_time_after_death == false) draw_text_transformed(41, 115, global.new_time_string, 0.3, 0.45, 0)
if (draw_current_time) draw_text_transformed(41, 123, global.current_time_string, 0.3, 0.45, 0)
else if (draw_time_after_death) draw_text_transformed(41, 115, global.current_time_string, 0.3, 0.45, 0)
timer++
timer2++