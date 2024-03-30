/// @func	view_xview_get(view)
/// @desc	Wrapper for deprecated view_xview[], gets a view's camera X position
/// @param	{real}	view	The view whose camera to get the X position of
/// @returns	{real}
function view_xview_get(_view)
{
	return camera_get_view_x(view_camera[_view]);
}