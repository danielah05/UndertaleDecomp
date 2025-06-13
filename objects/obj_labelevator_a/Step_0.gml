if (blacktime == 0)
{
	if (w > 1.5)
	{
		if (hyperboys == 0)
		{
			caster_stop(sfx)
			caster_play(expl, 1, 1)
			blacktime = 1
		}
		if (hyperboys == 1)
		{
			caster_free(all)
			global.entrance = 24
			global.interact = 0
			FL_CompletedTrueLab = 0
			instance_create(0, 0, obj_persistentfader)
			room_goto(room_castle_elevatorout)
		}
	}
}
if (blacktime == 1)
{
	if (w > 2.6)
	{
		caster_free(all)
		global.entrance = 24
		room_goto(room_truelab_elevatorinside)
	}
}
