/// @func			action_set_hspeed(value)
/// @desc			Sets the hspeed of the caller
/// @deprecated
/// @param	{real}	value	The value to set hspeed to
function action_set_hspeed(_value)
{
	var val = _value
	if global.__argument_relative
	    val += hspeed
	hspeed = val
}
