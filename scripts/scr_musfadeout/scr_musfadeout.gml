/// @func	scr_musfadeout(fade_speed)
/// @desc	Fades out music.
/// @param	{real}	fade_speed	Fading speed of the music.
function scr_musfadeout(_fade_speed)
{
	g = instance_create(0, 0, obj_musfadeout)
	if (_fade_speed == 0)
		_fade_speed = 0.05
	g.fadespeed = _fade_speed
}
