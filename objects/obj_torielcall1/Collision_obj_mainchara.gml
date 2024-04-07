if (global.interact == 0)
{
    snd_play(snd_phone)
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    if (FL_WaitedOnTorielCall == 0)
    {
        global.msg[0] = scr_gettext("obj_torielcall1_90")
        global.msg[1] = scr_gettext("obj_torielcall1_91")
        global.msg[2] = scr_gettext("obj_torielcall1_92")
        global.msg[3] = scr_gettext("obj_torielcall1_93")
        global.msg[4] = scr_gettext("obj_torielcall1_94")
        global.msg[5] = scr_gettext("obj_torielcall1_95")
        global.msg[6] = scr_gettext("obj_torielcall1_96")
        global.msg[7] = scr_gettext("obj_torielcall1_97")
        global.msg[8] = scr_gettext("obj_torielcall1_98")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_torielcall1_102")
        global.msg[1] = scr_gettext("obj_torielcall1_103")
        global.msg[2] = scr_gettext("obj_torielcall1_104")
        global.msg[3] = scr_gettext("obj_torielcall1_105")
        global.msg[4] = scr_gettext("obj_torielcall1_106")
        global.msg[5] = scr_gettext("obj_torielcall1_107")
        global.msg[6] = scr_gettext("obj_torielcall1_108")
        global.msg[7] = scr_gettext("obj_torielcall1_109")
        global.msg[8] = scr_gettext("obj_torielcall1_110")
        global.msg[9] = scr_gettext("obj_torielcall1_111")
        global.msg[10] = scr_gettext("obj_torielcall1_112")
        global.msg[11] = scr_gettext("obj_torielcall1_113")
        global.msg[12] = scr_gettext("obj_torielcall1_114")
        FL_WaitedOnTorielCall = 2
    }
    scr_writetext(0, "x", 0, 0)
    global.interact = 1
}
