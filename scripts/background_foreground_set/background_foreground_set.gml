/// @func	background_foreground_set(background_index, foreground)
/// @desc	Wrapper for deprecated background_foreground, Sets if a specified background is a foreground
/// @param	{real}	background_index	The background index to set the foreground status of
/// @param	{bool}	foreground			The foreground status to set
function background_foreground_set(_background_index, _foreground)
{
	__background_set(BG_PROP_FOREGROUND, _background_index, _foreground);
}