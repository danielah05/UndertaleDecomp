/// @func	view_target_set(view, object)
/// @desc	Wrapper for deprecated view_target[], sets a view's camera target
/// @param	{real}							view	The view whose camera to set the target of
/// @param	{Asset.GMObject OR Id.Instance}	object	The object or instance to target
function view_target_set(_view, _value)
{
	camera_set_view_target(view_camera[_view], _value);
}