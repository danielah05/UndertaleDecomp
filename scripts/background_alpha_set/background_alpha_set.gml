/// @func	background_alpha_set(background_index, alpha)
/// @desc	Wrapper for deprecated background_alpha, Sets the specified background's alpha
/// @param	{real}	background_index	The background index to set the alpha of
/// @param	{real}	alpha				The alpha to set
function background_alpha_set(_background_index, _alpha)
{
	__background_set(BG_PROP_ALPHA, _background_index, _alpha);
}