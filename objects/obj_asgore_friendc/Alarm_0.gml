myinteract = 3
global.msc = 0
global.typer = 60
global.facechoice = 7
global.faceemotion = 0
if (FL_AsgorePacifistConvoCounter == 0)
{
	global.msg[0] = scr_gettext("obj_asgore_friendc_76")
	global.msg[1] = scr_gettext("obj_asgore_friendc_77")
	global.msg[2] = scr_gettext("obj_asgore_friendc_78")
	global.msg[3] = scr_gettext("obj_asgore_friendc_79")
	scr_undface(4, 0)
	global.msg[5] = scr_gettext("obj_asgore_friendc_81")
	global.msg[6] = scr_gettext("obj_asgore_friendc_82")
	scr_asgface(7, 2)
	global.msg[8] = scr_gettext("obj_asgore_friendc_84")
	global.msg[9] = scr_gettext("obj_asgore_friendc_85")
	scr_undface(10, 6)
	global.msg[11] = scr_gettext("obj_asgore_friendc_87")
}
if (FL_AsgorePacifistConvoCounter == 1)
	global.msc = 810
if (FL_AsgorePacifistConvoCounter >= 2)
{
	global.msg[0] = scr_gettext("obj_asgore_friendc_97")
	global.msg[1] = scr_gettext("obj_asgore_friendc_98")
	global.msg[2] = scr_gettext("obj_asgore_friendc_99")
}
FL_AsgorePacifistConvoCounter += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
