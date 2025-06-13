if instance_exists(obj_greatdog)
{
	if (obj_greatdog.dogignore == 0)
	{
		image_xscale = 2
		image_yscale = 2
		x = xstart
		y = ystart
	}
	if (obj_greatdog.dogignore == 1)
	{
		image_xscale = 3
		image_yscale = 3
		x = (xstart - (0.2 * sprite_width))
		y = (ystart + 30)
	}
	if (obj_greatdog.dogignore == 2)
	{
		image_xscale = 4
		image_yscale = 4
		x = (xstart - (0.25 * sprite_width))
		y = (ystart + 70)
	}
	if (obj_greatdog.dogignore == 3)
	{
		image_xscale = 5
		image_yscale = 5
		x = (xstart - ((1/3) * sprite_width))
		y = (obj_uborder.y - 85)
	}
}
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
	if keyboard_check(vk_space)
		obj_greatdog.dogignore = 3
}
