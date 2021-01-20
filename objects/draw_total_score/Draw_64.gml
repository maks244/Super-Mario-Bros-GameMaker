// Time management
if (global.total_score >= 50)
{
	if (global.total_score >= 100)
	{
		if (global.total_score >= 1000)
		{
		    if (global.total_score >= 10000)
			{
				if (global.total_score >= 100000) draw_text_transformed(24, 16, string(global.total_score), 0.5, 0.5, 0)
				else
				{
					draw_text_transformed(24, 16, "0", 0.5, 0.5, 0)
					draw_text_transformed(32, 16, string(global.total_score), 0.5, 0.5, 0)
				}
			}
			else
		    {
		        draw_text_transformed(24, 16, "0", 0.5, 0.5, 0)
				draw_text_transformed(32, 16, "0", 0.5, 0.5, 0)
				draw_text_transformed(40, 16, string(global.total_score), 0.5, 0.5, 0)
		    }
		}
		else
		{
			draw_text_transformed(24, 16, "0", 0.5, 0.5, 0)
			draw_text_transformed(32, 16, "0", 0.5, 0.5, 0)
			draw_text_transformed(40, 16, "0", 0.5, 0.5, 0)
			draw_text_transformed(48, 16, string(global.total_score), 0.5, 0.5, 0)
		}
	}
	else
	{
		draw_text_transformed(24, 16, "0", 0.5, 0.5, 0)
		draw_text_transformed(32, 16, "0", 0.5, 0.5, 0)
		draw_text_transformed(40, 16, "0", 0.5, 0.5, 0)
		draw_text_transformed(48, 16, "0", 0.5, 0.5, 0)
		draw_text_transformed(56, 16, string(global.total_score), 0.5, 0.5, 0)
	}
}
else
{
	draw_text_transformed(24, 16, "0", 0.5, 0.5, 0)
	draw_text_transformed(32, 16, "0", 0.5, 0.5, 0)
	draw_text_transformed(40, 16, "0", 0.5, 0.5, 0)
	draw_text_transformed(48, 16, "0", 0.5, 0.5, 0)
	draw_text_transformed(56, 16, "0", 0.5, 0.5, 0)
	draw_text_transformed(64, 16, string(global.total_score), 0.5, 0.5, 0)
}