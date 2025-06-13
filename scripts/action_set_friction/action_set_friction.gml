/// @func			action_set_friction(value)
/// @desc			Sets the friction of the caller
/// @deprecated
/// @param	{real}	value	The value to set friction to
function action_set_friction(_value)
{
	var val = _value
	if global.__argument_relative
		val += friction
	friction = val
}
