/// @func	view_xview_set(view, x)
/// @desc	Wrapper for deprecated view_xview[], sets a view's camera X position
/// @param	{real}	view	The view whose camera to set the X position of
/// @param	{real}	x		The X position to set
function view_xview_set(_view, _value)
{
	var cam = view_camera[_view];
	camera_set_view_pos(cam, _value, camera_get_view_y(cam));
}