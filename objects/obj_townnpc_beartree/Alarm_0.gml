myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_beartree_70")
global.msg[1] = scr_gettext("obj_townnpc_beartree_71")
global.msg[2] = scr_gettext("obj_townnpc_beartree_72")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_townnpc_beartree_74")
if (global.plot >= 122)
{
	global.msg[0] = scr_gettext("obj_townnpc_beartree_78")
	global.msg[1] = scr_gettext("obj_townnpc_beartree_79")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_townnpc_beartree_84")
	global.msg[1] = scr_gettext("obj_townnpc_beartree_85")
}
if (scr_deaddog() == 1)
{
	global.msg[0] = scr_gettext("obj_townnpc_beartree_90")
	global.msg[1] = scr_gettext("obj_townnpc_beartree_91")
	global.msg[2] = scr_gettext("obj_townnpc_beartree_92")
	global.msg[3] = scr_gettext("obj_townnpc_beartree_93")
	global.msg[4] = scr_gettext("obj_townnpc_beartree_94")
	global.msg[5] = scr_gettext("obj_townnpc_beartree_95")
}
if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_townnpc_beartree_100")
	global.msg[1] = scr_gettext("obj_townnpc_beartree_101")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
