if (broken == 0 && FL_TundraStickBroken == 0)
{
	broken = 1
	image_index = 1
	FL_TundraCreepyStatus = 2
	if (FL_TundraStickBroken < 1)
		FL_TundraStickBroken = 1
	caster_set_panning(snap, -0.8)
	caster_play(snap, 1, 0.9)
	alarm[2] = 80
}
