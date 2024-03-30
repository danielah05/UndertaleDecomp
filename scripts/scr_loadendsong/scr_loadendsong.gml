/// @func	scr_loadendsong()
/// @desc	Loads the ending songs if they haven't been already
function scr_loadendsong()
{
	if (!global.endsong_loaded)
	{
	    global.endsong_loaded = true
	    global.endsong[0] = caster_load("music/end/cast_1.ogg")
	    global.endsong[1] = caster_load("music/end/cast_2.ogg")
	    global.endsong[2] = caster_load("music/end/cast_3.ogg")
	    global.endsong[3] = caster_load("music/end/cast_4.ogg")
	    global.endsong[5] = caster_load("music/end/cast_5.ogg")
	    global.endsong[6] = caster_load("music/end/cast_5.ogg")
	    global.endsong[7] = caster_load("music/end/cast_6.ogg")
	    global.endsong[8] = caster_load("music/end/cast_7.ogg")
	}
}
