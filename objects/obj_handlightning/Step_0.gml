image_alpha += 0.3
timer += 1
siner += 1
if (timer > 5)
{
	image_alpha -= 0.5
	if (image_alpha < 0)
		instance_destroy()
}
image_blend = old_make_color_hsv(siner * 8, 150, 255)
if (type == 0)
{
	image_angle += 12
	image_xscale += 0.1
	image_yscale += 0.1
}
if (type == 1)
	image_xscale += 0.1
