if (FL_GetDunkedOn == 0)
	caster_loop(gameoversong, 1, 1)
if (FL_GetDunkedOn == 1)
	caster_loop(gameoversong, 0.9, 1.25)
instance_create(0, 0, obj_gameoverbg)
alarm[3] = 80
