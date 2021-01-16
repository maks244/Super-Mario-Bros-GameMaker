// Time management
if (global.time_left >= 10)
{
    if (global.time_left >= 100) draw_text_transformed(208+x_offset, 24, string(global.time_left), 0.5, 0.5, 0)
    else
    {
        draw_text_transformed(208+x_offset, 24, "0", 0.5, 0.5, 0)
        draw_text_transformed(216+x_offset, 24, string(global.time_left), 0.5, 0.5, 0)
    }
}
else
{
    draw_text_transformed(208+x_offset, 24, "0", 0.5, 0.5, 0)
    draw_text_transformed(216+x_offset, 24, "0", 0.5, 0.5, 0)
    draw_text_transformed(224+x_offset, 24, string(global.time_left), 0.5, 0.5, 0)
}