myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_bear1_70")
global.msg[1] = scr_gettext("obj_townnpc_bear1_71")
global.msg[2] = scr_gettext("obj_townnpc_bear1_72")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_townnpc_bear1_73")
if (global.plot >= 122)
{
	global.msg[0] = scr_gettext("obj_townnpc_bear1_77")
	global.msg[1] = scr_gettext("obj_townnpc_bear1_78")
	global.msg[2] = scr_gettext("obj_townnpc_bear1_79")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_townnpc_bear1_85")
	global.msg[1] = scr_gettext("obj_townnpc_bear1_86")
	global.msg[2] = scr_gettext("obj_townnpc_bear1_87")
	global.msg[3] = scr_gettext("obj_townnpc_bear1_88")
	global.msg[4] = scr_gettext("obj_townnpc_bear1_89")
	if (talkedto > 0)
		global.msg[0] = scr_gettext("obj_townnpc_bear1_93")
}
if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_townnpc_bear1_99")
	global.msg[1] = scr_gettext("obj_townnpc_bear1_100")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
