/// @func	view_angle_set(view, angle)
/// @desc	Wrapper for deprecated view_angle[], sets a view's camera angle
/// @param	{real}	view	The view whose camera to set the angle of
/// @param	{real}	angle	The angle to set
function view_angle_set(_view, _value)
{
	camera_set_view_angle(view_camera[_view], _value);
}