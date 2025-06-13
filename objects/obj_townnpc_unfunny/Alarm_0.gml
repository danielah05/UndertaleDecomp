myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_unfunny_70")
global.msg[1] = scr_gettext("obj_townnpc_unfunny_71")
global.msg[2] = scr_gettext("obj_townnpc_unfunny_72")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_townnpc_unfunny_73")
if (global.plot >= 122)
{
	global.msg[0] = scr_gettext("obj_townnpc_unfunny_77")
	global.msg[1] = scr_gettext("obj_townnpc_unfunny_78")
	global.msg[2] = scr_gettext("obj_townnpc_unfunny_79")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_townnpc_unfunny_85")
	global.msg[1] = scr_gettext("obj_townnpc_unfunny_86")
	global.msg[2] = scr_gettext("obj_townnpc_unfunny_87")
}
if (FL_PapyrusStatus == PapyrusStatus.Killed || scr_deaddog() == 1)
	global.msg[0] = scr_gettext("obj_townnpc_unfunny_92")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
