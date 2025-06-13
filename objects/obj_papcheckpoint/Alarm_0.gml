myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_papcheckpoint_98")
global.msg[1] = scr_gettext("obj_papcheckpoint_99")
global.msg[2] = scr_gettext("obj_papcheckpoint_100")
global.msg[3] = scr_gettext("obj_papcheckpoint_101")
global.msg[4] = scr_gettext("obj_papcheckpoint_102")
global.msg[5] = scr_gettext("obj_papcheckpoint_103")
if (FL_TruePacifist == true)
{
	global.msg[5] = scr_gettext("obj_papcheckpoint_107")
	global.msg[6] = scr_gettext("obj_papcheckpoint_108")
}
if (room == room_tundra_randoblock)
	global.msg[0] = scr_gettext("obj_papcheckpoint_112")
mydialoguer = instance_create(0, 0, obj_dialoguer)
