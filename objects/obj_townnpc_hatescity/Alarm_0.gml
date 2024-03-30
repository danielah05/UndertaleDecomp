myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_hatescity_70")
global.msg[1] = scr_gettext("obj_townnpc_hatescity_71")
global.msg[2] = scr_gettext("obj_townnpc_hatescity_72")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_townnpc_hatescity_73")
if (global.plot > 121)
{
    global.msg[0] = scr_gettext("obj_townnpc_hatescity_77")
    global.msg[1] = scr_gettext("obj_townnpc_hatescity_78")
}
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_townnpc_hatescity_83")
    global.msg[1] = scr_gettext("obj_townnpc_hatescity_84")
    global.msg[2] = scr_gettext("obj_townnpc_hatescity_85")
    global.msg[3] = scr_gettext("obj_townnpc_hatescity_86")
}
if (scr_deaddog() == 1 || FL_PapyrusStatus == PapyrusStatus.Killed)
{
    global.msg[0] = scr_gettext("obj_townnpc_hatescity_91")
    global.msg[1] = scr_gettext("obj_townnpc_hatescity_92")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
