// Time management
if (global.total_coins < 10) 
{
	draw_text_transformed(104, 16.5, "0", 0.5, 0.5, 0)
    draw_text_transformed(112, 16.5, string(global.total_coins), 0.5, 0.5, 0)
}
else draw_text_transformed(104, 16.5, string(global.total_coins), 0.5, 0.5, 0)