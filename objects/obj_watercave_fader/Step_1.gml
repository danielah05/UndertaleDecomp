if (view_xview_get(0) > 0)
{
	a = (oalpha - (view_xview_get(0) / top))
	if (a > 0)
		image_alpha = a
	else
		image_alpha = 0
}
