/// @func	background_htiled_get(background_index)
/// @desc	Wrapper for deprecated background_htiled, Gets the specified background's htiled
/// @param	{real}	background_index	The background index to get the htiled of
/// @returns	{real}
function background_htiled_get(_background_index)
{
	return __background_get(BG_PROP_HTILED, _background_index);
}