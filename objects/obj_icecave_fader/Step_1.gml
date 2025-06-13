if (view_yview_get(0) <= 0)
{
	image_alpha = 0
	oalpha = 0
}
if (view_yview_get(0) > 0)
{
	a = (oalpha - ((top / view_yview_get(0)) * oalpha))
	if (a > 0)
		image_alpha = a
	else
		image_alpha = 0
}
