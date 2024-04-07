/// @func	background_y_get(background_index)
/// @desc	Wrapper for deprecated background_y, Gets the specified background's Y position
/// @param	{real}	background_index	The background index to get the Y position of
/// @returns	{Any}
function background_y_get(_background_index)
{
	//var info = layer_get_legacy_background_info(_background_index);
	//return layer_get_y(info[0]);
	return __background_get(BG_PROP_Y, _background_index);
}