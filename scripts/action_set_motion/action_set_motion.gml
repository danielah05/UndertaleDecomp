/// @func			action_set_motion(direction, speed)
/// @desc			Sets the direction and speed of the caller
/// @deprecated
/// @param	{real}	direction	The value to set direction to
/// @param	{real}	speed		The value to set speed to
function action_set_motion(_direction, _speed)
{
	var dir = _direction
	var spd = _speed
	if global.__argument_relative
	{
	    dir += direction
	    spd += speed
	}
	direction = dir
	speed = spd
}
