/// @func	scr_musfadein(fade_speed)
/// @desc	Fades in music.
/// @param	{real}	fade_speed	Fading speed of the music.
function scr_musfadein(_fade_speed)
{
	g = instance_create(0, 0, obj_musfadein)
	if (_fade_speed == 0)
	    _fade_speed = 0.05
	g.fadespeed = _fade_speed
}
