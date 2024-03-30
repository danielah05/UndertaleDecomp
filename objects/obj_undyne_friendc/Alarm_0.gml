myinteract = 3
global.msc = 0
global.typer = 37
global.facechoice = 5
global.faceemotion = 0
if (FL_TruePacifist == false)
{
    global.msg[0] = scr_gettext("obj_undyne_friendc_76")
    global.msg[1] = scr_gettext("obj_undyne_friendc_77")
    global.msg[2] = scr_gettext("obj_undyne_friendc_78")
    scr_papface(3, 0)
    global.msg[4] = scr_gettext("obj_undyne_friendc_80")
    scr_undface(5, 9)
    global.msg[6] = scr_gettext("obj_undyne_friendc_82")
    scr_papface(7, 3)
    global.msg[8] = scr_gettext("obj_undyne_friendc_84")
    scr_undface(9, 2)
    global.msg[10] = scr_gettext("obj_undyne_friendc_86")
    scr_papface(11, 0)
    global.msg[12] = scr_gettext("obj_undyne_friendc_88")
    if (talkedto > 0)
    {
        global.msg[0] = scr_gettext("obj_undyne_friendc_92")
        global.msg[1] = scr_gettext("obj_undyne_friendc_93")
        scr_papface(2, 0)
        global.msg[3] = scr_gettext("obj_undyne_friendc_95")
        scr_undface(4, 9)
        global.msg[5] = scr_gettext("obj_undyne_friendc_97")
        scr_papface(6, 0)
        global.msg[7] = scr_gettext("obj_undyne_friendc_99")
        scr_undface(8, 2)
        global.msg[9] = scr_gettext("obj_undyne_friendc_101")
        scr_papface(10, 3)
        global.msg[11] = scr_gettext("obj_undyne_friendc_103")
        global.msg[12] = scr_gettext("obj_undyne_friendc_104")
    }
    if (FL_DatedAlphys == 9)
    {
        global.faceemotion = 1
        global.msg[0] = scr_gettext("obj_undyne_friendc_112")
        global.msg[1] = scr_gettext("obj_undyne_friendc_113")
        if (FL_UndynesLetterStatus == 1 || FL_UndynesLetterStatus == 2)
        {
            scr_itemget(Items.UndynesLetterEX)
            if (noroom == 1)
            {
                global.faceemotion = 1
                global.msg[0] = scr_gettext("obj_undyne_friendc_121")
                global.msg[1] = scr_gettext("obj_undyne_friendc_122")
            }
            else
            {
                global.faceemotion = 1
                global.msg[0] = scr_gettext("obj_undyne_friendc_127")
                global.msg[1] = scr_gettext("obj_undyne_friendc_128")
                global.msg[2] = scr_gettext("obj_undyne_friendc_129")
                global.msg[3] = scr_gettext("obj_undyne_friendc_130")
                global.msg[4] = scr_gettext("obj_undyne_friendc_131")
                global.msg[5] = scr_gettext("obj_undyne_friendc_132")
                global.msg[6] = scr_gettext("obj_undyne_friendc_133")
                global.msg[7] = scr_gettext("obj_undyne_friendc_134")
                global.msg[8] = scr_gettext("obj_undyne_friendc_135")
                global.msg[9] = scr_gettext("obj_undyne_friendc_136")
                FL_UndynesLetterStatus = 3
            }
        }
    }
    if (FL_DatedAlphys == 8)
    {
        scr_itemget(Items.UndynesLetter)
        if (noroom == 1)
        {
            global.faceemotion = 9
            global.msg[0] = scr_gettext("obj_undyne_friendc_149")
            global.msg[1] = scr_gettext("obj_undyne_friendc_150")
        }
        else
        {
            global.faceemotion = 9
            global.msg[0] = scr_gettext("obj_undyne_friendc_155")
            global.msg[1] = scr_gettext("obj_undyne_friendc_156")
            global.msg[2] = scr_gettext("obj_undyne_friendc_157")
            global.msg[3] = scr_gettext("obj_undyne_friendc_158")
            global.msg[4] = scr_gettext("obj_undyne_friendc_159")
            global.msg[5] = scr_gettext("obj_undyne_friendc_160")
            global.msg[6] = scr_gettext("obj_undyne_friendc_161")
            global.msg[7] = scr_gettext("obj_undyne_friendc_162")
            global.msg[8] = scr_gettext("obj_undyne_friendc_163")
            global.msg[9] = scr_gettext("obj_undyne_friendc_164")
            global.msg[10] = scr_gettext("obj_undyne_friendc_165")
            scr_undface(11, 9)
            global.msg[12] = scr_gettext("obj_undyne_friendc_167")
            global.msg[13] = scr_gettext("obj_undyne_friendc_168")
            global.msg[14] = scr_gettext("obj_undyne_friendc_169")
            FL_DatedAlphys = 9
            FL_DisableRandomEncounters = true
        }
    }
}
if (FL_TruePacifist == true)
{
    if (FL_UndynePacifistConvoCounter == 0)
        global.msc = 806
    if (FL_UndynePacifistConvoCounter == 1)
    {
        global.msg[0] = scr_gettext("obj_undyne_friendc_187")
        global.msg[1] = scr_gettext("obj_undyne_friendc_188")
        global.msg[2] = scr_gettext("obj_undyne_friendc_189")
        global.msg[3] = scr_gettext("obj_undyne_friendc_190")
        scr_alface(4, 5)
        global.msg[5] = scr_gettext("obj_undyne_friendc_192")
        scr_undface(6, 6)
        global.msg[7] = scr_gettext("obj_undyne_friendc_194")
    }
    if (FL_UndynePacifistConvoCounter >= 2)
    {
        global.msg[0] = scr_gettext("obj_undyne_friendc_199")
        global.msg[1] = scr_gettext("obj_undyne_friendc_200")
        if (FL_NapstablookPacifistUnlock == 0)
            FL_NapstablookPacifistUnlock = 1
    }
    FL_UndynePacifistConvoCounter += 1
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
