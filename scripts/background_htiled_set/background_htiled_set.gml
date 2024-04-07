/// @func	background_htiled_set(background_index, htiled)
/// @desc	Wrapper for deprecated background_htiled, Sets the specified background's htiled
/// @param	{real}	background_index	The background index to set the htiled of
/// @param	{real}	htiled				The htiled to set
function background_htiled_set(_background_index, _htiled)
{
	__background_set(BG_PROP_HTILED, _background_index, _htiled);
}