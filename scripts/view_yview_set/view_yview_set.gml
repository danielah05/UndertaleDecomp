/// @func	view_yview_set(view, y)
/// @desc	Wrapper for deprecated view_yview[], sets a view's camera Y position
/// @param	{real}	view	The view whose camera to set the Y position of
/// @param	{real}	y		The Y position to set
function view_yview_set(_view, _value)
{
	var cam = view_camera[_view];
	camera_set_view_pos(cam, camera_get_view_x(cam), _value);
}