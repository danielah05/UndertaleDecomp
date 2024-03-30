/// @func	background_width_get(background_index)
/// @desc	Wrapper for deprecated background_width, Gets the specified background's width
/// @param	{real}	background_index	The background index to get the width of
/// @returns	{Any}
function background_width_get(_background_index)
{
	return __background_get(BG_PROP_WIDTH, _background_index);
}