if (basic == 1)
{
	cl = distance_to_object(obj_mainchara)
	if (cl > 40)
		cl = 40
	if (cl < 10)
		cl = 10
	image_alpha = (1 - ((cl - 10) / 30))
}
if (image_yscale > 1)
{
	for (i = 0; i < image_yscale; i += 1)
	{
		done = 0
		if (i == 0)
		{
			draw_sprite_ext(spr_forcefield_top, (siner / 3), x, (y + (i * 20)), 1, 1, 0, c_white, image_alpha)
			done = 1
		}
		if (i > 0 && done == 0)
		{
			if ((i + 1) >= image_yscale)
				draw_sprite_ext(spr_forcefield_top, (siner / 3), x, ((y + (i * 20)) + 20), 1, -1, 0, c_white, image_alpha)
			else
				draw_sprite_ext(spr_forcefield_middle, (siner / 3), x, (y + (i * 20)), 1, 1, 0, c_white, image_alpha)
			done = 1
		}
	}
}
if (image_xscale > 1)
{
	for (j = 0; j < image_xscale; j += 1)
	{
		done = 0
		if (j == 0)
		{
			draw_sprite_ext(spr_forcefield_right, (siner / 3), (x + (j * 20)), y, 1, 1, 0, c_white, image_alpha)
			done = 1
		}
		if (j > 0 && done == 0)
		{
			if ((j + 1) >= image_xscale)
				draw_sprite_ext(spr_forcefield_right, (siner / 3), ((x + (j * 20)) + 20), y, -1, 1, 0, c_white, image_alpha)
			else
				draw_sprite_ext(spr_forcefield_right_middle, (siner / 3), ((x + (j * 20)) + 20), y, -1, 1, 0, c_white, image_alpha)
			done = 1
		}
	}
}
siner += 1
