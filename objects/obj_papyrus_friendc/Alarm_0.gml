myinteract = 3
global.msc = 0
global.typer = 18
global.facechoice = 4
global.faceemotion = 3
if (FL_PapyrusPacifistConvoCounter == 0)
{
	global.msg[0] = scr_gettext("obj_papyrus_friendc_76")
	global.msg[1] = scr_gettext("obj_papyrus_friendc_77")
	scr_asgface(2, 2)
	global.msg[3] = scr_gettext("obj_papyrus_friendc_79")
	global.msg[4] = scr_gettext("obj_papyrus_friendc_80")
	scr_papface(5, 7)
	global.msg[6] = scr_gettext("obj_papyrus_friendc_82")
	global.msg[7] = scr_gettext("obj_papyrus_friendc_83")
	global.msg[8] = scr_gettext("obj_papyrus_friendc_84")
	global.msg[9] = scr_gettext("obj_papyrus_friendc_85")
	global.msg[10] = scr_gettext("obj_papyrus_friendc_86")
}
if (FL_PapyrusPacifistConvoCounter == 1)
{
	global.msg[0] = scr_gettext("obj_papyrus_friendc_91")
	global.msg[1] = scr_gettext("obj_papyrus_friendc_92")
	global.msg[2] = scr_gettext("obj_papyrus_friendc_93")
	scr_sansface(3, 1)
	global.msg[4] = scr_gettext("obj_papyrus_friendc_95")
	scr_papface(5, 1)
	global.msg[6] = scr_gettext("obj_papyrus_friendc_97")
	global.msg[7] = scr_gettext("obj_papyrus_friendc_98")
}
if (FL_PapyrusPacifistConvoCounter == 2)
{
	global.msg[0] = scr_gettext("obj_papyrus_friendc_103")
	scr_sansface(1, 1)
	global.msg[2] = scr_gettext("obj_papyrus_friendc_105")
	scr_papface(3, 0)
	global.msg[4] = scr_gettext("obj_papyrus_friendc_107")
	scr_torface(5, 1)
	global.msg[6] = scr_gettext("obj_papyrus_friendc_109")
	scr_alface(7, 3)
	global.msg[8] = scr_gettext("obj_papyrus_friendc_111")
	scr_undface(9, 2)
	global.msg[10] = scr_gettext("obj_papyrus_friendc_113")
}
if (FL_PapyrusPacifistConvoCounter >= 3)
{
	global.msg[0] = scr_gettext("obj_papyrus_friendc_118")
	global.msg[1] = scr_gettext("obj_papyrus_friendc_119")
}
FL_PapyrusPacifistConvoCounter += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
