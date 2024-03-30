/// @func	background_x_get(background_index)
/// @desc	Wrapper for deprecated background_x, Gets the specified background's X position
/// @param	{real}	background_index	The background index to get the X position of
/// @returns	{Any}
function background_x_get(_background_index)
{
	//var info = layer_get_legacy_background_info(_background_index);
	//return layer_get_x(info[0]);
	return __background_get(BG_PROP_X, _background_index);
}