/// @func	background_blend_set(background_index, blend)
/// @desc	Wrapper for deprecated background_blend, Sets the specified background's blend color
/// @param	{real}				background_index	The background index to set the blend color of
/// @param	{Constant.Color}	blend				The blend color to set
function background_blend_set(_background_index, _blend)
{
	__background_set(BG_PROP_BLEND, _background_index, _blend);
}