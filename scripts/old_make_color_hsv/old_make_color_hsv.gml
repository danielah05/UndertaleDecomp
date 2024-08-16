function old_make_color_hsv()
{
	var hue = argument0
	if (hue < 0)
	    hue = (256 - ((-hue) % 256))
	else
	    hue %= 256
	return make_color_hsv(hue, argument1, argument2);
}
