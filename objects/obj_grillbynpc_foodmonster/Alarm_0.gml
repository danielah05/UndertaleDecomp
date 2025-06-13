myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_foodmonster_73")
global.msg[1] = scr_gettext("obj_grillbynpc_foodmonster_74")
global.msg[2] = scr_gettext("obj_grillbynpc_foodmonster_75")
global.msg[3] = scr_gettext("obj_grillbynpc_foodmonster_76")
global.msg[4] = scr_gettext("obj_grillbynpc_foodmonster_77")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_grillbynpc_foodmonster_80")
if (global.plot >= 122)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_foodmonster_84")
	global.msg[1] = scr_gettext("obj_grillbynpc_foodmonster_85")
	global.msg[2] = scr_gettext("obj_grillbynpc_foodmonster_86")
	global.msg[3] = scr_gettext("obj_grillbynpc_foodmonster_87")
	if (talkedto > 0)
	{
		global.msg[0] = scr_gettext("obj_grillbynpc_foodmonster_90")
		global.msg[1] = scr_gettext("obj_grillbynpc_foodmonster_91")
	}
}
if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_foodmonster_97")
	global.msg[1] = scr_gettext("obj_grillbynpc_foodmonster_98")
	global.msg[2] = scr_gettext("obj_grillbynpc_foodmonster_99")
	global.msg[3] = scr_gettext("obj_grillbynpc_foodmonster_100")
	global.msg[4] = scr_gettext("obj_grillbynpc_foodmonster_101")
	global.msg[5] = scr_gettext("obj_grillbynpc_foodmonster_102")
	if (talkedto > 0)
		global.msg[0] = scr_gettext("obj_grillbynpc_foodmonster_104")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_foodmonster_109")
	global.msg[1] = scr_gettext("obj_grillbynpc_foodmonster_110")
}
if (sansmode == 1)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_foodmonster_115")
	global.msg[1] = scr_gettext("obj_grillbynpc_foodmonster_116")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
