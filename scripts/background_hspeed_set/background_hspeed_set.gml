/// @func	background_hspeed_set(background_index, hspeed)
/// @desc	Wrapper for deprecated background_hspeed, Sets the specified background's hspeed
/// @param	{real}	background_index	The background index to set the hspeed of
/// @param	{real}	hspeed				The hspeed to set
function background_hspeed_set(_background_index, _hspeed)
{
	__background_set(BG_PROP_HSPEED, _background_index, _hspeed);
}