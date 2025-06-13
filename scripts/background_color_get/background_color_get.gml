///@func	background_color_get()
///@desc	Wrapper for deprecated background_color, gets the blend for the "Color" background layer
///@returns	{Constant.Color}
function background_color_get()
{
	var __colinfo = __background_get_colour_element()
	if (__colinfo[0] == -1)
		return 0;
	var __col = layer_background_get_blend(__colinfo[0])
	return __col;
}
