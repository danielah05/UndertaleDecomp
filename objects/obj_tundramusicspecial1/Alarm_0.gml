if (FL_TundraCreepyStatus == -1)
{
	caster_free(global.currentsong2)
	return;
}
if (FL_TundraCreepyStatus > 0 && played == 0 && obj_mainchara.x > 660)
{
	caster_loop(global.currentsong2, 0.2, 1.58)
	played = 1
}
if (FL_TundraCreepyStatus > 0 && played == 1 && obj_mainchara.x > 1350)
{
	caster_loop(global.currentsong2, 0.2, 1.68)
	played = 2
}
if (FL_TundraCreepyStatus > 2 && played == 2 && obj_mainchara.x > 1600)
{
	ex2 = caster_loop(global.currentsong2, 0.1, 2.12)
	played = 3
}
alarm[0] = 5
if (FL_TundraCreepyStatus > 2 && played == 3 && obj_mainchara.x > 1610)
{
	alarm[0] = 3
	caster_set_volume(global.currentsong2, (0.2 + ((obj_mainchara.x - 1610) / 860)))
	caster_set_volume(ex2, (0.1 + ((obj_mainchara.x - 1610) / 860)))
}
