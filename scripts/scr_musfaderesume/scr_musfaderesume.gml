/// @func	scr_musfaderesume(fade_speed)
/// @desc	Unpauses music and fades it back in.
/// @param	{real}	fade_speed	Fading speed of the music.
function scr_musfaderesume(_fade_speed)
{
	if instance_exists(obj_musfadepause)
	{
	    obj_musfadepause.resume = 1
	    if (_fade_speed == 0)
	        _fade_speed = 0.05
	    obj_musfadepause.fadespeed = _fade_speed
	}
}
