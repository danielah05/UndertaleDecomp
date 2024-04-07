/// @func	background_vspeed_set(background_index, vspeed)
/// @desc	Wrapper for deprecated background_vspeed, Sets the specified background's vspeed
/// @param	{real}	background_index	The background index to set the vspeed of
/// @param	{real}	vspeed				The vspeed to set
function background_vspeed_set(_background_index, _vspeed)
{
	__background_set(BG_PROP_VSPEED, _background_index, _vspeed);
}