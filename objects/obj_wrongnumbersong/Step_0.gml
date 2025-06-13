if (con == 1)
{
	con = 0.1
	alarm[4] = 30
	snd_play(snd_phone)
}
if (con == 1.1)
{
	global.facechoice = 0
	global.faceemotion = 0
	caster_pause(global.currentsong)
	snd_play(snd_phone)
	global.msc = 0
	global.typer = 5
	global.msg[0] = scr_gettext("obj_wrongnumbersong_96")
	global.msg[1] = scr_gettext("obj_wrongnumbersong_97")
	global.msg[2] = scr_gettext("obj_wrongnumbersong_98")
	global.msg[3] = scr_gettext("obj_wrongnumbersong_99")
	instance_create(0, 0, obj_dialoguer)
	con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
	wrns = caster_loop(mus_wrongnumbersong, 0.8, 1)
	global.msg[0] = scr_gettext("obj_wrongnumbersong_107")
	global.msg[1] = scr_gettext("obj_wrongnumbersong_108")
	global.msg[2] = scr_gettext("obj_wrongnumbersong_109")
	global.msg[3] = scr_gettext("obj_wrongnumbersong_110")
	instance_create(0, 0, obj_dialoguer)
	con = 3
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
	caster_stop(wrns)
	global.msg[0] = scr_gettext("obj_wrongnumbersong_118")
	instance_create(0, 0, obj_dialoguer)
	con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
	caster_resume(global.currentsong)
	con = 5
	FL_FunCallOccurred = 1
	global.interact = 0
	instance_destroy()
}
