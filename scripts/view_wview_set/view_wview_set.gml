/// @func	view_wview_set(view, width)
/// @desc	Wrapper for deprecated view_hview[], sets a view's camera width
/// @param	{real}	view	The view whose camera to set the width of
/// @param	{real}	width	The width to set
function view_wview_set(_view, _value)
{
	var cam = view_camera[_view];
	camera_set_view_size(cam, _value, camera_get_view_height(cam));
}