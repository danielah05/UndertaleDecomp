/// @func	background_alpha_get(background_index)
/// @desc	Wrapper for deprecated background_alpha, Gets the specified background's alpha
/// @param	{real}	background_index	The background index to get the alpha of
/// @returns	{real}
function background_alpha_get(_background_index)
{
	return __background_get(BG_PROP_ALPHA, _background_index);
}