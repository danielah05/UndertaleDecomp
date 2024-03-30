/// @func			action_move_point(x, y, speed)
/// @desc			Moves the calling object/instance to a specified point at a specified speed
/// @deprecated
/// @param	{real}	x		The X position to target
/// @param	{real}	y		The Y position to target
///	@param	{real}	speed	The speed (per step) to move towards the target
function action_move_point(_x, _y, _speed)
{
	var xx = _x
	var yy = _y
	if global.__argument_relative
	{
	    xx += x
	    yy += y
	}
	move_towards_point(xx, yy, _speed)
}
