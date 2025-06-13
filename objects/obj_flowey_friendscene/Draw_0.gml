if (laugh == 0)
{
	if (neut == 0)
		draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, image_alpha)
	if (neut == 1)
		draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, image_alpha)
	if (drawface == 1)
		draw_sprite_ext(spr_floweyface_end, global.faceemotion, x, y, 2, 2, 0, c_white, image_alpha)
	if (con == 0 && image_index >= 8)
	{
		image_speed = 0
		drawface = 1
	}
	if (con == 6)
	{
		if (neut == 0)
			sprite_index = spr_flowey_riseanim
		if (neut == 1)
			sprite_index = spr_flowey_riseanim2
		drawface = 0
		image_speed = -0.5
		if (image_index < 1)
		{
			if (spec == 0)
			{
				y += 80
				x += 180
			}
			if (spec == 1)
				x = 100
			if (spec == 2)
			{
				y = (ystart + 40)
				x = (xstart + 110)
			}
			con = 0
			image_speed = 0.5
		}
	}
}
if (laugh == 1)
{
	li += 1
	draw_sprite_ext(spr_floweylaugh, floor((li / 2)), x, y, 2, 2, 0, c_white, image_alpha)
}
if (laugh == 2)
{
	li += 1
	draw_sprite_ext(spr_floweylaugh, 0, x, y, 2, 2, 0, c_white, image_alpha)
}
