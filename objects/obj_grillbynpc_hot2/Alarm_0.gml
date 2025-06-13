myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_hot2_73")
global.msg[1] = scr_gettext("obj_grillbynpc_hot2_74")
global.msg[2] = scr_gettext("obj_grillbynpc_hot2_75")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_grillbynpc_hot2_77")
if (sansmode == 1)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_hot2_81")
	global.msg[1] = scr_gettext("obj_grillbynpc_hot2_82")
}
if (global.plot >= 122)
	global.msg[0] = scr_gettext("obj_grillbynpc_hot2_87")
if scr_deaddog()
{
	global.msg[0] = scr_gettext("obj_grillbynpc_hot2_92")
	global.msg[1] = scr_gettext("obj_grillbynpc_hot2_93")
	global.msg[2] = scr_gettext("obj_grillbynpc_hot2_94")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_hot2_101")
	global.msg[1] = scr_gettext("obj_grillbynpc_hot2_102")
	global.msg[2] = scr_gettext("obj_grillbynpc_hot2_103")
}
if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_hot2_109")
	global.msg[1] = scr_gettext("obj_grillbynpc_hot2_110")
}
if (FL_UndyneStatus == UndyneStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_hot2_115")
	global.msg[1] = scr_gettext("obj_grillbynpc_hot2_116")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
