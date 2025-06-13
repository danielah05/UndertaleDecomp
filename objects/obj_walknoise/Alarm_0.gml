if instance_exists(obj_mainchara)
{
	if (obj_mainchara.xprevious < obj_mainchara.x || global.facing == Direction.Right || obj_time.right)
	{
		if (obj_mainchara.x > x)
			caster_set_volume(mynoise, 1)
	}
	else
		caster_set_volume(mynoise, 0)
	alarm[0] = 6
}
else
	caster_set_volume(mynoise, 0)
FL_TundraCreepyStatus += 1
