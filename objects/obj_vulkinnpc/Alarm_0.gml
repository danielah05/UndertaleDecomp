myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_vulkinnpc_72")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_vulkinnpc_73")
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_vulkinnpc_77")
	global.msg[1] = scr_gettext("obj_vulkinnpc_78")
}
if (room == room_fire_multitile)
{
	global.msg[0] = scr_gettext("obj_vulkinnpc_83")
	if (talkedto > 0)
		global.msg[0] = scr_gettext("obj_vulkinnpc_84")
	if (FL_TruePacifist == true)
	{
		global.msg[0] = scr_gettext("obj_vulkinnpc_88")
		global.msg[1] = scr_gettext("obj_vulkinnpc_89")
	}
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
