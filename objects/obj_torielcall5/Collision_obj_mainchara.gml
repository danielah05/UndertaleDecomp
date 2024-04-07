if (global.interact == 0)
{
    touch = 1
    snd_play(snd_phone)
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_torielcall5_90")
    global.msg[1] = scr_gettext("obj_torielcall5_91")
    global.msg[2] = scr_gettext("obj_torielcall5_92")
    global.msg[3] = scr_gettext("obj_torielcall5_93")
    global.msg[4] = scr_gettext("obj_torielcall5_94")
    global.msg[5] = scr_gettext("obj_torielcall5_95")
    global.msg[6] = scr_gettext("obj_torielcall5_96")
    global.msg[7] = scr_gettext("obj_torielcall5_97")
    global.msg[8] = scr_gettext("obj_torielcall5_98")
    global.msg[9] = scr_gettext("obj_torielcall5_99")
    global.msg[10] = scr_gettext("obj_torielcall5_100")
    if (FL_Hardmode == true)
    {
        global.msg[0] = scr_gettext("obj_torielcall5_104")
        global.msg[1] = scr_gettext("obj_torielcall5_105")
        global.msg[2] = scr_gettext("obj_torielcall5_106")
        global.msg[3] = scr_gettext("obj_torielcall5_107")
        global.msg[4] = scr_gettext("obj_torielcall5_108")
        global.msg[5] = scr_gettext("obj_torielcall5_109")
        global.msg[6] = scr_gettext("obj_torielcall5_110")
        global.msg[7] = scr_gettext("obj_torielcall5_111")
        global.msg[8] = scr_gettext("obj_torielcall5_112")
        global.msg[9] = scr_gettext("obj_torielcall5_113")
    }
    instance_create(140, 200, obj_stalkerflowey)
    scr_writetext(0, "x", 0, 0)
    global.interact = 1
}
