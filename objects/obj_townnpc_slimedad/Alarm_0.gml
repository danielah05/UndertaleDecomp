myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_slimedad_70")
if (global.plot >= 122)
	global.msg[0] = scr_gettext("obj_townnpc_slimedad_74")
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_townnpc_slimedad_79")
	global.msg[1] = scr_gettext("obj_townnpc_slimedad_80")
	global.msg[2] = scr_gettext("obj_townnpc_slimedad_81")
}
if (scr_deaddog() == 1 || FL_PapyrusStatus == PapyrusStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_townnpc_slimedad_86")
	global.msg[1] = scr_gettext("obj_townnpc_slimedad_87")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
