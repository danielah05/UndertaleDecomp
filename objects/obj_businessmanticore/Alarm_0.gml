myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_businessmanticore_70")
global.msg[1] = scr_gettext("obj_businessmanticore_71")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_businessmanticore_75")
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_businessmanticore_80")
    global.msg[1] = scr_gettext("obj_businessmanticore_81")
}
if (FL_KilledMettaton == 1)
{
    global.msg[0] = scr_gettext("obj_businessmanticore_86")
    global.msg[1] = scr_gettext("obj_businessmanticore_87")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
