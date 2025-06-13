myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_reddemon_70")
global.msg[1] = scr_gettext("obj_townnpc_reddemon_71")
global.msg[2] = scr_gettext("obj_townnpc_reddemon_72")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_townnpc_reddemon_73")
if (global.plot >= 122)
{
	global.msg[0] = scr_gettext("obj_townnpc_reddemon_83")
	global.msg[1] = scr_gettext("obj_townnpc_reddemon_84")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_townnpc_reddemon_89")
	global.msg[1] = scr_gettext("obj_townnpc_reddemon_90")
}
if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_townnpc_reddemon_95")
	global.msg[1] = scr_gettext("obj_townnpc_reddemon_96")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
