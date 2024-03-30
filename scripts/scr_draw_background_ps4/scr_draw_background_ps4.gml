function scr_draw_background_ps4()
{
	var bg = argument0
	var xx = argument1
	var yy = argument2
	if (os_type == os_ps4 || os_type == os_switch)
	{
	    var scale = (window_get_width() / 1920)
	    draw_background_stretched(bg, (xx * scale), (yy * scale), (background_get_width(bg) * scale), (background_get_height(bg) * scale))
	}
	else
	    draw_background(bg, xx, yy)
}
