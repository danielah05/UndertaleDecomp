myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_bunboy_70")
global.msg[1] = scr_gettext("obj_townnpc_bunboy_71")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_townnpc_bunboy_72")
if (global.plot >= 122)
{
	global.msg[0] = scr_gettext("obj_townnpc_bunboy_76")
	global.msg[1] = scr_gettext("obj_townnpc_bunboy_77")
	global.msg[2] = scr_gettext("obj_townnpc_bunboy_78")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_townnpc_bunboy_83")
	global.msg[1] = scr_gettext("obj_townnpc_bunboy_84")
	if (talkedto > 0)
		global.msg[0] = scr_gettext("obj_townnpc_bunboy_85")
}
if (scr_deaddog() || FL_PapyrusStatus == PapyrusStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_townnpc_bunboy_90")
	global.msg[1] = scr_gettext("obj_townnpc_bunboy_91")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
