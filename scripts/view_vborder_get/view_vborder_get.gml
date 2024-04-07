/// @func	view_vborder_get(view)
/// @desc	Wrapper for deprecated view_vborder[], gets a view's camera vertical border
/// @param		{real}	view	The view whose camera to get the vertical border of
/// @returns	{real}
function view_vborder_get(_view)
{
	return camera_get_view_border_y(view_camera[_view]);
}