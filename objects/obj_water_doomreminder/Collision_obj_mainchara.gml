if (global.interact == 0)
{
	global.interact = 1
	con = 1
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	pop = (18 - FL_WaterfallKillsCounter)
	if (pop < 0)
		pop = 0
	global.msg[0] = scr_gettext("obj_water_doomreminder_95", string(pop))
	instance_create(0, 0, obj_dialoguer)
}
