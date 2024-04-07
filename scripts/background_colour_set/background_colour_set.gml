///@func	background_color_set(color)
///@desc	Wrapper for deprecated background_color, sets the blend for the "Color" background layer
///@param	{Constant.Color}	color	The color to set the background to
///@returns	{Constant.Color}
function background_colour_set(_color)
{
	var __newcol = _color
	var __colinfo = __background_get_colour_element()
	if (__colinfo[0] == -1)
	    return 0;
	layer_background_blend(__colinfo[0], __newcol)
	return __newcol;
}
