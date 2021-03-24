// Time display
if (global.time_left < 100) {
	draw_text_transformed(208, 16.5, "0", 0.5, 0.5, 0)
	if (global.time_left < 10) {
		draw_text_transformed(216, 16.5, "0", 0.5, 0.5, 0)
		draw_text_transformed(224, 16.5, string(global.time_left), 0.5, 0.5, 0)
	}
	else draw_text_transformed(216, 16.5, string(global.time_left), 0.5, 0.5, 0)
}
else draw_text_transformed(208, 16.5, string(global.time_left), 0.5, 0.5, 0)