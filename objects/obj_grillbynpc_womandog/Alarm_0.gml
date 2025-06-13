myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_womandog_76")
global.msg[1] = scr_gettext("obj_grillbynpc_womandog_77")
global.msg[2] = scr_gettext("obj_grillbynpc_womandog_78")
if (FL_PapyrusStatus == PapyrusStatus.Killed)
	global.msg[0] = scr_gettext("obj_grillbynpc_womandog_81")
if (global.plot >= 122)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_womandog_86")
	global.msg[1] = scr_gettext("obj_grillbynpc_womandog_87")
}
if (sansmode == 1)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_womandog_92")
	global.msg[1] = scr_gettext("obj_grillbynpc_womandog_93")
}
if (FL_DoggoStatus == DogStatus.Killed)
	global.msg[0] = scr_gettext("obj_grillbynpc_womandog_97")
if (FL_DoggoStatus == DogStatus.Killed && FL_GreaterDogStatus == DogStatus.Killed)
	global.msg[0] = scr_gettext("obj_grillbynpc_womandog_99")
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_grillbynpc_womandog_105")
	global.msg[1] = scr_gettext("obj_grillbynpc_womandog_106")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
