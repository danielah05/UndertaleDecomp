/// @func	background_foreground_get(background_index)
/// @desc	Wrapper for deprecated background_foreground, Gets if a specified background is a foreground
/// @param	{real}	background_index	The background index to get the foreground status of
/// @returns	{bool}
function background_foreground_get(_background_index)
{
	return __background_get(BG_PROP_FOREGROUND, _background_index);
}