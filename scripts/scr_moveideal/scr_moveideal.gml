/// @func					scr_moveideal(value)
/// @desc					Moves the caller along both axis
/// @param	{real}	value	The amount to move
function scr_moveideal(_value)
{
	if (_value > 0)
	{
	    if (idealstep < _value)
	        idealstep += 1
	    idealxdist = ((idealxx2 - x) / _value)
	    idealydist = ((idealyy2 - y) / _value)
	    x += (idealxdist * idealstep)
	    y += (idealydist * idealstep)
	}
}
