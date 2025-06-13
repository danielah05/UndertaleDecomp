if (speed == 0)
	image_index = 0
if (speed > 0)
	image_speed = 0.25
if (hspeed > 0)
	sprite_index = spr_darkman_r
if (hspeed < 0)
	sprite_index = spr_darkman_l
if (vspeed != 0)
	sprite_index = spr_darkman_d
if (mov == 1)
{
	vspeed = -2
	mov = 2
}
if (mov == 2)
{
	if (y < (view_yview_get(0) - 50))
		instance_destroy()
}
