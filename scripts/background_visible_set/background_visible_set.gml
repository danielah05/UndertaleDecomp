/// @func	background_visible_set(background_index, _visible)
/// @desc	Wrapper for deprecated background_visible, Sets the specified background's visibility
/// @param	{real}	background_index	The background index to set the visibility of
/// @param	{bool}	visible				The value to set visibility to
function background_visible_set(_background_index, _visible)
{
	//var info = layer_get_legacy_background_info(_background_index);
	//layer_set_visible(info[0], _visible);
	__background_set(BG_PROP_VISIBLE, _background_index, _visible);
}