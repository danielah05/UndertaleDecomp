myinteract = 3
global.msc = 0
global.typer = 47
global.facechoice = 6
global.faceemotion = 0
if (FL_AlphysPacifistConvoCounter == 0)
    global.msc = 808
if (FL_AlphysPacifistConvoCounter == 1)
{
    global.msg[0] = scr_gettext("obj_alphys_friendc_81")
    global.msg[1] = scr_gettext("obj_alphys_friendc_82")
    global.msg[2] = scr_gettext("obj_alphys_friendc_83")
    global.msg[3] = scr_gettext("obj_alphys_friendc_84")
    global.msg[4] = scr_gettext("obj_alphys_friendc_85")
}
if (FL_AlphysPacifistConvoCounter == 2)
{
    global.msg[0] = scr_gettext("obj_alphys_friendc_90")
    global.msg[1] = scr_gettext("obj_alphys_friendc_91")
    scr_undface(2, 6)
    global.msg[3] = scr_gettext("obj_alphys_friendc_93")
    global.msg[4] = scr_gettext("obj_alphys_friendc_94")
    scr_alface(5, 7)
    global.msg[6] = scr_gettext("obj_alphys_friendc_96")
    global.msg[7] = scr_gettext("obj_alphys_friendc_97")
    scr_sansface(8, 2)
    global.msg[9] = scr_gettext("obj_alphys_friendc_99")
    global.msg[10] = scr_gettext("obj_alphys_friendc_100")
    scr_alface(11, 1)
    global.msg[12] = scr_gettext("obj_alphys_friendc_102")
    scr_papface(13, 3)
    global.msg[14] = scr_gettext("obj_alphys_friendc_104")
    scr_alface(15, 5)
    global.msg[16] = scr_gettext("obj_alphys_friendc_106")
    scr_sansface(17, 2)
    global.msg[18] = scr_gettext("obj_alphys_friendc_108")
    scr_torface(19, 0)
    global.msg[20] = scr_gettext("obj_alphys_friendc_110")
    global.msg[21] = scr_gettext("obj_alphys_friendc_111")
    global.msg[22] = scr_gettext("obj_alphys_friendc_112")
    scr_alface(23, 1)
    global.msg[24] = scr_gettext("obj_alphys_friendc_114")
}
if (FL_AlphysPacifistConvoCounter >= 3)
{
    global.msg[0] = scr_gettext("obj_alphys_friendc_119")
    global.msg[1] = scr_gettext("obj_alphys_friendc_120")
    global.msg[2] = scr_gettext("obj_alphys_friendc_121")
}
FL_AlphysPacifistConvoCounter += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
