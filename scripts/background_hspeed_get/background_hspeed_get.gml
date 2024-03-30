/// @func	background_hspeed_get(background_index)
/// @desc	Wrapper for deprecated background_hspeed, Gets the specified background's hspeed
/// @param	{real}	background_index	The background index to get the hspeed of
/// @returns	{real}
function background_hspeed_get(_background_index)
{
	return __background_get(BG_PROP_HSPEED, _background_index);
}