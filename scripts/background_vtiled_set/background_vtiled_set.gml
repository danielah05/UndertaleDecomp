/// @func	background_vtiled_set(background_index, vtiled)
/// @desc	Wrapper for deprecated background_vtiled, Sets the specified background's vtiled
/// @param	{real}	background_index	The background index to set the vtiled of
/// @param	{real}	vtiled				The vtiled to set
function background_vtiled_set(_background_index, _vtiled)
{
	__background_set(BG_PROP_VTILED, _background_index, _vtiled);
}