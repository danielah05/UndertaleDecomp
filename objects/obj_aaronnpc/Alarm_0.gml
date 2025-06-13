myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_aaronnpc_70")
global.msg[1] = scr_gettext("obj_aaronnpc_71")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_aaronnpc_75")
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_aaronnpc_80")
	global.msg[1] = scr_gettext("obj_aaronnpc_81")
}
if (FL_AaronWoshuaEvent == 1)
{
	global.msg[0] = scr_gettext("obj_aaronnpc_86")
	global.msg[1] = scr_gettext("obj_aaronnpc_87")
	global.msg[2] = scr_gettext("obj_aaronnpc_88")
	if (FL_TruePacifist == true)
		global.msg[0] = scr_gettext("obj_aaronnpc_92")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
