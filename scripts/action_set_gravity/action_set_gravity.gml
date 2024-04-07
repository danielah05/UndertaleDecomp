/// @func			action_set_gravity(direction, value)
/// @desc			Sets the gravity and gravity_direction of the caller
/// @deprecated
/// @param	{real}	direction	The value to set gravit_direction to
/// @param	{real}	value		The value to set gravity to
function action_set_gravity(_direction, _value)
{
	var dir = _direction
	var val = _value
	if global.__argument_relative
	{
	    dir += gravity_direction
	    val += gravity
	}
	gravity = val
	gravity_direction = dir
}
