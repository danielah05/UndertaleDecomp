function scr_fx_waver()
{
	b = argument0
	c = argument1
	a += 1
	for (i = 0; i < sprite_height; i += 1)
	{
	    a += 1
	    draw_sprite_part_ext(sprite_index, image_index, 0, i, sprite_width, 1, (x + (sin((a / b)) * c)), (y + i), 1, 1, c_white, image_alpha)
	}
}
