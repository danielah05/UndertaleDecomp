myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_weirdfish_72")
global.msg[1] = scr_gettext("obj_townnpc_weirdfish_73")
global.msg[2] = scr_gettext("obj_townnpc_weirdfish_74")
global.msg[3] = scr_gettext("obj_townnpc_weirdfish_75")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_townnpc_weirdfish_76")
if (global.plot >= 122)
    global.msg[0] = scr_gettext("obj_townnpc_weirdfish_80")
if (sansmode == 1)
{
    global.msg[0] = scr_gettext("obj_townnpc_weirdfish_85")
    global.msg[1] = scr_gettext("obj_townnpc_weirdfish_86")
}
if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
    global.msg[0] = scr_gettext("obj_townnpc_weirdfish_91")
    global.msg[1] = scr_gettext("obj_townnpc_weirdfish_92")
    global.msg[2] = scr_gettext("obj_townnpc_weirdfish_93")
    global.msg[3] = scr_gettext("obj_townnpc_weirdfish_94")
}
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_townnpc_weirdfish_99")
    global.msg[1] = scr_gettext("obj_townnpc_weirdfish_100")
    global.msg[2] = scr_gettext("obj_townnpc_weirdfish_101")
    global.msg[3] = scr_gettext("obj_townnpc_weirdfish_102")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
