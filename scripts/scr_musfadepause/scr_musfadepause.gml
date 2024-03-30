/// @func	scr_musfadepause(fade_speed)
/// @desc	Fades out music and then pauses it.
/// @param	{real}	fade_speed	Fading speed of the music.
function scr_musfadepause(_fade_speed)
{
	g = instance_create(0, 0, obj_musfadepause)
	if (_fade_speed == 0)
	    _fade_speed = 0.05
	g.fadespeed = _fade_speed
}
