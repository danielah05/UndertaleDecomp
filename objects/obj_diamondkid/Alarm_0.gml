myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_diamondkid_73")
global.msg[1] = scr_gettext("obj_diamondkid_74")
if (talkedto > 0)
{
	global.msg[0] = scr_gettext("obj_diamondkid_78")
	global.msg[1] = scr_gettext("obj_diamondkid_79")
	global.msg[2] = scr_gettext("obj_diamondkid_80")
	global.msg[3] = scr_gettext("obj_diamondkid_81")
	global.msg[4] = scr_gettext("obj_diamondkid_82")
}
if (FL_KilledMettaton == 1)
{
	global.msg[0] = scr_gettext("obj_diamondkid_87")
	global.msg[1] = scr_gettext("obj_diamondkid_88")
}
if (FL_TruePacifist == true)
	global.msg[0] = scr_gettext("obj_diamondkid_93")
if (x > 160)
{
	global.msg[0] = scr_gettext("obj_diamondkid_98")
	global.msg[1] = scr_gettext("obj_diamondkid_99")
	if (talkedto > 0)
	{
		global.msg[0] = scr_gettext("obj_diamondkid_106")
		global.msg[1] = scr_gettext("obj_diamondkid_107")
	}
	if (FL_KilledMettaton == 1)
	{
		global.msg[0] = scr_gettext("obj_diamondkid_112")
		global.msg[1] = scr_gettext("obj_diamondkid_113")
	}
	if (FL_TruePacifist == true)
	{
		global.msg[0] = scr_gettext("obj_diamondkid_119")
		global.msg[1] = scr_gettext("obj_diamondkid_120")
	}
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
