/// @func	view_hborder_get(view)
/// @desc	Wrapper for deprecated view_hborder[], gets a view's camera horizontal border
/// @param		{real}	view	The view whose camera to get the horizontal border of
/// @returns	{real}
function view_hborder_get(_view)
{
	return camera_get_view_border_x(view_camera[_view]);
}