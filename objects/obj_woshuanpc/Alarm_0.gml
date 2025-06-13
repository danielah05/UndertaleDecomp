myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_woshuanpc_72")
global.msg[1] = scr_gettext("obj_woshuanpc_73")
global.msg[2] = scr_gettext("obj_woshuanpc_74")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_woshuanpc_77")
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_woshuanpc_81")
	global.msg[1] = scr_gettext("obj_woshuanpc_82")
}
if (room == room_water_trashzone1)
{
	global.msg[0] = scr_gettext("obj_woshuanpc_88")
	global.msg[1] = scr_gettext("obj_woshuanpc_89")
	if (FL_TruePacifist == true)
		global.msg[0] = scr_gettext("obj_woshuanpc_93")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
