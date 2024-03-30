/// @func	background_blend_get(background_index)
/// @desc	Wrapper for deprecated background_blend, Gets the specified background's blend color
/// @param	{real}	background_index	The background index to get the blend color of
/// @returns	{Constant.Color}
function background_blend_get(_background_index)
{
	return __background_get(BG_PROP_BLEND, _background_index);
}