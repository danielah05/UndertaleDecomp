myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_longsnail_64")
global.msg[1] = scr_gettext("obj_longsnail_65")
global.msg[2] = scr_gettext("obj_longsnail_66")
if (talkedto > 0)
{
    global.msg[0] = scr_gettext("obj_longsnail_70")
    global.msg[1] = scr_gettext("obj_longsnail_71")
}
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_longsnail_76")
    global.msg[1] = scr_gettext("obj_longsnail_77")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
