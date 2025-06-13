myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_snowdrakedad_75")
global.msg[1] = scr_gettext("obj_snowdrakedad_76")
global.msg[2] = scr_gettext("obj_snowdrakedad_77")
global.msg[3] = scr_gettext("obj_snowdrakedad_78")
global.msg[4] = scr_gettext("obj_snowdrakedad_79")
global.msg[5] = scr_gettext("obj_snowdrakedad_80")
global.msg[6] = scr_gettext("obj_snowdrakedad_81")
global.msg[7] = scr_gettext("obj_snowdrakedad_82")
global.msg[8] = scr_gettext("obj_snowdrakedad_83")
global.msg[9] = scr_gettext("obj_snowdrakedad_84")
if (talkedto > 0)
{
	global.msg[0] = scr_gettext("obj_snowdrakedad_87")
	global.msg[1] = scr_gettext("obj_snowdrakedad_88")
	global.msg[2] = scr_gettext("obj_snowdrakedad_89")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_snowdrakedad_94")
	global.msg[1] = scr_gettext("obj_snowdrakedad_95")
	global.msg[2] = scr_gettext("obj_snowdrakedad_96")
	global.msg[3] = scr_gettext("obj_snowdrakedad_97")
}
if (FL_KilledMettaton == 1)
{
	global.msg[0] = scr_gettext("obj_snowdrakedad_102")
	global.msg[1] = scr_gettext("obj_snowdrakedad_103")
	global.msg[2] = scr_gettext("obj_snowdrakedad_104")
	global.msg[3] = scr_gettext("obj_snowdrakedad_105")
}
if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_snowdrakedad_110")
	global.msg[1] = scr_gettext("obj_snowdrakedad_111")
	global.msg[2] = scr_gettext("obj_snowdrakedad_112")
	global.msg[3] = scr_gettext("obj_snowdrakedad_113")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
