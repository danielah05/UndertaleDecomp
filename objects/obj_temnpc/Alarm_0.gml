myinteract = 3
global.msc = 0
global.typer = 28
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_temnpc_72")
global.msg[1] = scr_gettext("obj_temnpc_73")
if (FL_TruePacifist == true)
	global.msg[0] = scr_gettext("obj_temnpc_77")
if (x > 190)
{
	global.msg[0] = scr_gettext("obj_temnpc_82")
	global.msg[1] = scr_gettext("obj_temnpc_83")
	if (FL_TruePacifist == true)
		global.msg[0] = scr_gettext("obj_temnpc_87")
}
if (x > 220)
{
	global.msg[0] = scr_gettext("obj_temnpc_93")
	global.msg[1] = scr_gettext("obj_temnpc_94")
	if (FL_TruePacifist == true)
		global.msg[0] = scr_gettext("obj_temnpc_98")
}
if (x > 360)
{
	global.msg[0] = scr_gettext("obj_temnpc_103")
	global.msg[1] = scr_gettext("obj_temnpc_104")
	global.msg[2] = scr_gettext("obj_temnpc_105")
	if (FL_TruePacifist == true)
	{
		global.msg[0] = scr_gettext("obj_temnpc_109")
		global.msg[1] = scr_gettext("obj_temnpc_110")
	}
}
if (x > 440)
{
	global.msg[0] = scr_gettext("obj_temnpc_116")
	global.msg[1] = scr_gettext("obj_temnpc_117")
	global.msg[2] = scr_gettext("obj_temnpc_118")
	if (FL_TruePacifist == true)
	{
		global.msg[0] = scr_gettext("obj_temnpc_122")
		global.msg[1] = scr_gettext("obj_temnpc_123")
		global.msg[2] = scr_gettext("obj_temnpc_124")
	}
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
