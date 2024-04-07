function scr_waver_lava()
{
	b = argument0
	c = argument1
	a += 1
	for (i = room_height; i > 0; i -= 1)
	{
	    a += 1
	    draw_background_part_ext(background_index_get(0), 0, i, background_width_get(0), 1, (x + (sin((a / b)) * c)), (y + i), 1, 1, c_white, image_alpha)
	}
}
