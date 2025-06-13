if (image_alpha < 1)
	image_alpha += 0.2
image_angle += ang
if (y > (view_yview_get(0) + 245))
	instance_destroy()
if (x < (view_xview_get(0) - 4))
	instance_destroy()
if (x > (view_xview_get(0) + 324))
	instance_destroy()
