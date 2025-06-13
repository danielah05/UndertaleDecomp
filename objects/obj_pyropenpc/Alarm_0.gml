myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_pyropenpc_72")
global.msg[1] = scr_gettext("obj_pyropenpc_73")
global.msg[2] = scr_gettext("obj_pyropenpc_74")
if (FL_TruePacifist == true)
	global.msg[0] = scr_gettext("obj_pyropenpc_78")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_pyropenpc_82")
if (room == room_fire_boysnightout)
{
	global.msg[0] = scr_gettext("obj_pyropenpc_87")
	global.msg[1] = scr_gettext("obj_pyropenpc_88")
	global.msg[2] = scr_gettext("obj_pyropenpc_89")
	if (FL_TruePacifist == true)
	{
		global.msg[0] = scr_gettext("obj_pyropenpc_93")
		global.msg[1] = scr_gettext("obj_pyropenpc_94")
	}
	if (talkedto > 0)
		global.msg[0] = scr_gettext("obj_pyropenpc_97")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
