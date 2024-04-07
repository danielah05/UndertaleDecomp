/// @func	background_visible_get(background_index)
/// @desc	Wrapper for deprecated background_visible, Gets the specified background's visibility
/// @param	{real}	background_index	The background index to get the visibility of
/// @returns	{Any}
function background_visible_get(_background_index)
{
	//var info = layer_get_legacy_background_info(_background_index);
	//return layer_get_visible(info[0]);
	return __background_get(BG_PROP_VISIBLE, _background_index);
}