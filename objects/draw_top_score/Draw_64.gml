// Top score display
if (global.top_score < 100000) {
	draw_text_transformed(136, 176.75, "0", 0.5, 0.5, 0)
	if (global.top_score < 10000) {
		draw_text_transformed(144, 176.75, "0", 0.5, 0.5, 0)
		if (global.top_score < 1000) {
			draw_text_transformed(152, 176.75, "0", 0.5, 0.5, 0)
			if (global.top_score < 100) {
				draw_text_transformed(160, 176.75, "0", 0.5, 0.5, 0)
				if (global.top_score < 50) {
					draw_text_transformed(168, 176.75, "0", 0.5, 0.5, 0)
					draw_text_transformed(176, 176.75, string(global.top_score), 0.5, 0.5, 0)
				}
				else draw_text_transformed(168, 176.75, string(global.top_score), 0.5, 0.5, 0)
			}
			else draw_text_transformed(160, 176.75, string(global.top_score), 0.5, 0.5, 0)
		}
		else draw_text_transformed(152, 176.75, string(global.top_score), 0.5, 0.5, 0)
	}
	else draw_text_transformed(144, 176.75, string(global.top_score), 0.5, 0.5, 0)
}
else draw_text_transformed(136, 176.75, string(global.top_score), 0.5, 0.5, 0)