if (FL_SeenCast == 0)
{
	global.cast_type = 0
	FL_SeenCast = 1
	splitter = 0
	if (splitter == 1)
	{
		ts = instance_create(0, 0, obj_timersplits)
		with (ts)
		{
			for (i = 0; i < 99; i += 1)
				split[i] = 0
			splitno = 0
		}
	}
	scr_loadendsong()
	caster_play(global.endsong[0], 1, 1)
}
timer = 0
alarm[0] = 2
active = false
vol = 0.9
do_room_goto = false
col1_x = 210
col2_x = 430
if (global.language == "ja")
{
	col1_x -= 15
	col2_x += 15
}
