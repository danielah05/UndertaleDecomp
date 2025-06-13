draw_sprite_ext(sprite_index, floor(image_index), x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
if (con == 11 || con == 12)
{
	whited += 0.01
	if (whited >= 1 && con == 11)
	{
		con = 12
		view_xview_set(0, 0)
		view_yview_set(0, 0)
	}
	draw_set_alpha(whited)
	draw_set_color(c_white)
	ossafe_fill_rectangle(-10, -10, 999, 999)
	draw_set_alpha(1)
	if (whited >= 2)
	{
		instance_create(0, 0, obj_barriercut)
		con = 13
		with (obj_mhd)
			instance_destroy()
		alarm[5] = -1
	}
}
