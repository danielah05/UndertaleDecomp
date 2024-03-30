myinteract = 3
global.msc = 0
global.typer = 17
global.facechoice = 3
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_sans_sentry2_127")
if (FL_SansDated == 0)
    global.msc = 567
if (FL_SansDated == 2)
    global.msg[0] = scr_gettext("obj_sans_sentry2_134")
if (scr_murderlv() >= 7)
{
    global.faceemotion = 3
    global.msc = 0
    global.msg[0] = scr_gettext("obj_sans_sentry2_141")
    global.msg[1] = scr_gettext("obj_sans_sentry2_142")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
