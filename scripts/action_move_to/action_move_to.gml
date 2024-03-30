/// @func			action_move_to(x, y)
/// @desc			Moves the calling object/instance to a specified position
/// @param	{real}	x	The X position to move to
/// @param	{real}	y	The Y position to move to
/// @deprecated
function action_move_to(_x, _y)
{
	var xx = _x
	var yy = _y
	if global.__argument_relative
	{
	    xx += x
	    yy += y
	}
	x = xx
	y = yy
}
