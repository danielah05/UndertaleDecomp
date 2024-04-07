/// @func	view_vborder_set(view, y_border)
/// @desc	Wrapper for deprecated view_vborder[], sets a view's camera vertical border
/// @param	{real}	view		The view whose camera to set the vertical border of
/// @param	{real}	y_border	The vertical border to set
function view_vborder_set(_view, _value)
{
	var cam = view_camera[_view];
	camera_set_view_border(cam, camera_get_view_border_x(cam), _value);
}