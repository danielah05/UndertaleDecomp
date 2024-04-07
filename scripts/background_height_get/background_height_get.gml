/// @func	background_height_get(background_index)
/// @desc	Wrapper for deprecated background_height, Gets the specified background's height
/// @param	{real}	background_index	The background index to get the height of
/// @returns	{Any}
function background_height_get(_background_index)
{
	return __background_get(BG_PROP_HEIGHT, _background_index);
}