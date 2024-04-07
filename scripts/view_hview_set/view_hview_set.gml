/// @func	view_hview_set(view, height)
/// @desc	Wrapper for deprecated view_hview[], sets a view's camera height
/// @param	{real}	view	The view whose camera to set the height of
/// @param	{real}	height	The height to set
function view_hview_set(_view, _value)
{
	var cam = view_camera[_view];
	camera_set_view_size(cam, camera_get_view_width(cam), _value);
}