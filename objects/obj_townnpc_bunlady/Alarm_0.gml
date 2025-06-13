myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_bunlady_70")
global.msg[1] = scr_gettext("obj_townnpc_bunlady_71")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_townnpc_bunlady_73")
if (global.plot > 121)
{
	global.msg[0] = scr_gettext("obj_townnpc_bunlady_77")
	global.msg[1] = scr_gettext("obj_townnpc_bunlady_78")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_townnpc_bunlady_83")
	global.msg[1] = scr_gettext("obj_townnpc_bunlady_84")
	global.msg[2] = scr_gettext("obj_townnpc_bunlady_85")
	global.msg[3] = scr_gettext("obj_townnpc_bunlady_86")
}
if (scr_deaddog() == 1)
{
	global.msg[0] = scr_gettext("obj_townnpc_bunlady_91")
	global.msg[1] = scr_gettext("obj_townnpc_bunlady_92")
}
if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_townnpc_bunlady_97")
	global.msg[1] = scr_gettext("obj_townnpc_bunlady_98")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
