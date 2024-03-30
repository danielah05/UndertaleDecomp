/// @func	view_hview_get(view)
/// @desc	Wrapper for deprecated view_hview[], gets a view's camera height
/// @param	{real}	view	The view whose camera to get the height of
/// @returns	{real}
function view_hview_get(_view)
{
	return camera_get_view_height(view_camera[_view]);
}