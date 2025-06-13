myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_puzzlehater_76")
if (FL_SoSorryStatus == 1)
	global.msg[0] = scr_gettext("obj_puzzlehater_80")
if (FL_SoSorryStatus == 0 && FL_TruePacifist == false)
{
	global.msg[0] = scr_gettext("obj_puzzlehater_85")
	global.msg[1] = scr_gettext("obj_puzzlehater_86")
	global.msg[2] = scr_gettext("obj_puzzlehater_87")
	global.msg[3] = scr_gettext("obj_puzzlehater_88")
	global.msg[4] = scr_gettext("obj_puzzlehater_89")
	global.msg[5] = scr_gettext("obj_puzzlehater_90")
	global.msg[6] = scr_gettext("obj_puzzlehater_91")
	FL_SoSorryStatus = 1
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_puzzlehater_97")
	global.msg[1] = scr_gettext("obj_puzzlehater_98")
	if (FL_SoSorryStatus >= 1)
	{
		global.msg[0] = scr_gettext("obj_puzzlehater_102")
		global.msg[1] = scr_gettext("obj_puzzlehater_103")
		global.msg[2] = scr_gettext("obj_puzzlehater_104")
	}
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
