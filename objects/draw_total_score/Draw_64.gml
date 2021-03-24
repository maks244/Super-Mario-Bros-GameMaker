// Score display
if (global.total_score < 100000) {
	draw_text_transformed(24, 16.5, "0", 0.5, 0.5, 0)
	if (global.total_score < 10000) {
		draw_text_transformed(32, 16.5, "0", 0.5, 0.5, 0)
		if (global.total_score < 1000) {
			draw_text_transformed(40, 16.5, "0", 0.5, 0.5, 0)
			if (global.total_score < 100) {
				draw_text_transformed(48, 16.5, "0", 0.5, 0.5, 0)
				if (global.total_score < 50) {
					draw_text_transformed(56, 16.5, "0", 0.5, 0.5, 0)
					draw_text_transformed(64, 16.5, string(global.total_score), 0.5, 0.5, 0)
				}
				else draw_text_transformed(56, 16.5, string(global.total_score), 0.5, 0.5, 0)
			}
			else draw_text_transformed(48, 16.5, string(global.total_score), 0.5, 0.5, 0)
		}
		else draw_text_transformed(40, 16.5, string(global.total_score), 0.5, 0.5, 0)
	}
	else draw_text_transformed(32, 16.5, string(global.total_score), 0.5, 0.5, 0)
}
else draw_text_transformed(24, 16.5, string(global.total_score), 0.5, 0.5, 0)