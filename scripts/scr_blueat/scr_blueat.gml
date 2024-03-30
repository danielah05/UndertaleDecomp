/// @func	scr_blueat()
/// @desc	This function detects if the heart has moved since the last frame
function scr_blueat()
{
	if (abs((obj_heart.xprevious - obj_heart.x)) > 0.01 || abs((obj_heart.yprevious - obj_heart.y)) > 0.01)
	    return true;
	else
	    return false;
}
