/// @func	view_yview_get(view)
/// @desc	Wrapper for deprecated view_yview[], gets a view's camera Y position
/// @param	{real}	view	The view whose camera to get the Y position of
/// @returns	{real}
function view_yview_get(_view)
{
	return camera_get_view_y(view_camera[_view]);
}