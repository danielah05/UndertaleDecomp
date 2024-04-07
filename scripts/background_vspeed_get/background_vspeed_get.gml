/// @func	background_vspeed_get(background_index)
/// @desc	Wrapper for deprecated background_vspeed, Gets the specified background's vspeed
/// @param	{real}	background_index	The background index to get the vspeed of
/// @returns	{real}
function background_vspeed_get(_background_index)
{
	return __background_get(BG_PROP_VSPEED, _background_index);
}