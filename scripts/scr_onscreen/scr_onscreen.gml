/// @func	scr_onscreen(x_border, y_border)
/// @desc	Detect if object is on screen with X and Y Border sizes.
/// @arg	{real}	x_border	How close to the X Border of the screen
/// @arg	{real}	y_border	How close to the Y Border of the screen
function scr_onscreen(_x_border, _y_border)
{
	onscreen = false
	if (x > (view_xview_get(view_current) - _x_border) && x < ((view_xview_get(view_current) + view_wview_get(view_current)) + _x_border))
	{
		if (y < ((view_hview_get(view_current) + view_yview_get(view_current)) + _y_border) && y > (view_yview_get(view_current) - _y_border))
			onscreen = true
	}
}
