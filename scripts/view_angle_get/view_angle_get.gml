/// @func	view_angle_get(view)
/// @desc	Wrapper for deprecated view_angle[], gets a view's camera angle
/// @param	{real}	view	The view whose camera to get the angle of
/// @returns {real}
function view_angle_get(_view)
{
	return camera_get_view_angle(view_camera[_view]);
}