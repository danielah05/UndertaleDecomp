/// @func	view_wview_get(view)
/// @desc	Wrapper for deprecated view_wview[], gets a view's camera width
/// @param	{real}	view	The view whose camera to get the width of
/// @returns	{real}
function view_wview_get(_view)
{
	return camera_get_view_width(view_camera[_view]);
}