function scr_fx_waver_scanline()
{
	b = argument0
	c = argument1
	d = argument2
	a += 1
	for (i = 0; i < sprite_height; i += 1)
	{
		a += 1
		draw_sprite_part_ext(sprite_index, image_index, 0, i, sprite_width, ((1 * sin(a)) * d), (x + (sin((a / b)) * c)), (y + (i * 2)), 2, 2, c_white, image_alpha)
	}
}
