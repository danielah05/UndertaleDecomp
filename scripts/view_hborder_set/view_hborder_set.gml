/// @func	view_hborder_set(view, x_border)
/// @desc	Wrapper for deprecated view_hborder[], sets a view's camera horizontal border
/// @param	{real}	view		The view whose camera to set the horizontal border of
/// @param	{real}	x_border	The horizontal border to set
function view_hborder_set(_view, _value)
{
	var cam = view_camera[_view];
	camera_set_view_border(cam, _value, camera_get_view_border_y(cam));
}