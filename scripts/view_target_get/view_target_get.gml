/// @func	view_target_get(view)
/// @desc	Wrapper for deprecated view_target[], gets a view's camera target
/// @param	{real}	view	The view whose camera to get the target of
/// @returns	{Asset.GMObject OR Id.Instance}
function view_target_get(_view)
{
	return camera_get_view_target(view_camera[_view]);
}