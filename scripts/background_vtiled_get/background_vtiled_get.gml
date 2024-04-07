/// @func	background_vtiled_get(background_index)
/// @desc	Wrapper for deprecated background_vtiled, Gets the specified background's vtiled
/// @param	{real}	background_index	The background index to get the vtiled of
/// @returns	{real}
function background_vtiled_get(_background_index)
{
	return __background_get(BG_PROP_VTILED, _background_index);
}