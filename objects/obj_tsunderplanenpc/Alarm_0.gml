myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_tsunderplanenpc_75")
global.msg[1] = scr_gettext("obj_tsunderplanenpc_76")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_tsunderplanenpc_79")
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_tsunderplanenpc_83")
    global.msg[1] = scr_gettext("obj_tsunderplanenpc_84")
    global.msg[2] = scr_gettext("obj_tsunderplanenpc_85")
    global.msg[3] = scr_gettext("obj_tsunderplanenpc_86")
    global.msg[4] = scr_gettext("obj_tsunderplanenpc_87")
    global.msg[5] = scr_gettext("obj_tsunderplanenpc_88")
    global.msg[6] = scr_gettext("obj_tsunderplanenpc_89")
    global.msg[7] = scr_gettext("obj_tsunderplanenpc_90")
    global.msg[8] = scr_gettext("obj_tsunderplanenpc_91")
    global.msg[9] = scr_gettext("obj_tsunderplanenpc_92")
    global.msg[10] = scr_gettext("obj_tsunderplanenpc_93")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_tsunderplanenpc_96")
}
if (room == room_fire_conveyorlaser)
{
    global.msg[0] = scr_gettext("obj_tsunderplanenpc_103")
    global.msg[1] = scr_gettext("obj_tsunderplanenpc_104")
    global.msg[2] = scr_gettext("obj_tsunderplanenpc_105")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_tsunderplanenpc_107")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_tsunderplanenpc_111")
        global.msg[1] = scr_gettext("obj_tsunderplanenpc_112")
        global.msg[2] = scr_gettext("obj_tsunderplanenpc_113")
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
