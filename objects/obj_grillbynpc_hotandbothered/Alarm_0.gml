myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_hotandbothered_73")
global.msg[1] = scr_gettext("obj_grillbynpc_hotandbothered_74")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_grillbynpc_hotandbothered_75")
if (global.plot >= 122)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_hotandbothered_79")
    global.msg[1] = scr_gettext("obj_grillbynpc_hotandbothered_80")
}
if (sansmode == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_hotandbothered_84")
    global.msg[1] = scr_gettext("obj_grillbynpc_hotandbothered_85")
}
if scr_deaddog()
{
    global.msg[0] = scr_gettext("obj_grillbynpc_hotandbothered_90")
    global.msg[1] = scr_gettext("obj_grillbynpc_hotandbothered_91")
}
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_hotandbothered_98")
    global.msg[1] = scr_gettext("obj_grillbynpc_hotandbothered_99")
    global.msg[2] = scr_gettext("obj_grillbynpc_hotandbothered_100")
}
if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_hotandbothered_105")
    global.msg[1] = scr_gettext("obj_grillbynpc_hotandbothered_106")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
