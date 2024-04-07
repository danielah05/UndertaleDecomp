myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_snowdrakenpc_76")
global.msg[1] = scr_gettext("obj_snowdrakenpc_77")
global.msg[2] = scr_gettext("obj_snowdrakenpc_78")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_snowdrakenpc_82")
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_snowdrakenpc_87")
    global.msg[1] = scr_gettext("obj_snowdrakenpc_88")
    global.msg[2] = scr_gettext("obj_snowdrakenpc_89")
    global.msg[3] = scr_gettext("obj_snowdrakenpc_90")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
