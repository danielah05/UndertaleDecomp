myinteract = 3
global.msc = 0
if (FL_TorielPacifistConvoCounter == 0)
{
	global.msg[0] = scr_gettext("obj_toriel_friendc_70")
	global.msg[1] = scr_gettext("obj_toriel_friendc_71")
	global.msg[2] = scr_gettext("obj_toriel_friendc_72")
	scr_sansface(3, 0)
	global.msg[4] = scr_gettext("obj_toriel_friendc_74")
	global.msg[5] = scr_gettext("obj_toriel_friendc_75")
	scr_papface(6, 0)
	global.msg[7] = scr_gettext("obj_toriel_friendc_77")
	global.msg[8] = scr_gettext("obj_toriel_friendc_78")
	global.msg[9] = scr_gettext("obj_toriel_friendc_79")
	global.msg[10] = scr_gettext("obj_toriel_friendc_80")
	scr_torface(11, 0)
	global.msg[12] = scr_gettext("obj_toriel_friendc_82")
	scr_papface(13, 3)
	global.msg[14] = scr_gettext("obj_toriel_friendc_84")
	scr_sansface(15, 0)
	global.msg[16] = scr_gettext("obj_toriel_friendc_86")
	global.msg[17] = scr_gettext("obj_toriel_friendc_87")
	scr_torface(18, 1)
	global.msg[19] = scr_gettext("obj_toriel_friendc_89")
	global.msg[20] = scr_gettext("obj_toriel_friendc_90")
	global.msg[21] = scr_gettext("obj_toriel_friendc_91")
	scr_papface(22, 0)
	global.msg[23] = scr_gettext("obj_toriel_friendc_93")
	global.msg[24] = scr_gettext("obj_toriel_friendc_94")
	scr_sansface(25, 1)
	global.msg[26] = scr_gettext("obj_toriel_friendc_96")
	scr_papface(27, 4)
	global.msg[28] = scr_gettext("obj_toriel_friendc_98")
}
if (FL_TorielPacifistConvoCounter == 1)
{
	global.msg[0] = scr_gettext("obj_toriel_friendc_103")
	global.msg[1] = scr_gettext("obj_toriel_friendc_104")
	global.msg[2] = scr_gettext("obj_toriel_friendc_105")
	global.msg[3] = scr_gettext("obj_toriel_friendc_106")
}
if (FL_TorielPacifistConvoCounter >= 2)
{
	global.msg[0] = scr_gettext("obj_toriel_friendc_111")
	global.msg[1] = scr_gettext("obj_toriel_friendc_112")
	global.msg[2] = scr_gettext("obj_toriel_friendc_113")
}
FL_TorielPacifistConvoCounter += 1
global.typer = 4
global.facechoice = 1
global.faceemotion = 0
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
