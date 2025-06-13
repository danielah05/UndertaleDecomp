draw_self_custom(0, 9999, 0, (ystart + 40))
if (yoff > 1)
	y -= 1
yoff -= 1
if (x > (view_xview_get(0) + view_wview_get(0)))
	instance_destroy()
if (x < (view_xview_get(0) - 10))
	instance_destroy()
if (y > ((view_yview_get(0) + view_hview_get(0)) + 30))
	instance_destroy()
if (y < view_yview_get(0))
	instance_destroy()
