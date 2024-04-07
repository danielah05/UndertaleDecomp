myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_blookdiary_64")
if (x > 60)
{
    global.msg[0] = scr_gettext("obj_blookdiary_70")
    global.msg[1] = scr_gettext("obj_blookdiary_71")
    global.msg[2] = scr_gettext("obj_blookdiary_72")
    global.msg[3] = scr_gettext("obj_blookdiary_73")
    global.msg[4] = scr_gettext("obj_blookdiary_74")
    global.msg[5] = scr_gettext("obj_blookdiary_75")
}
if (x > 95)
{
    global.msg[0] = scr_gettext("obj_blookdiary_80")
    global.msg[1] = scr_gettext("obj_blookdiary_81")
}
if (x > 120)
{
    global.msg[0] = scr_gettext("obj_blookdiary_85")
    global.msg[1] = scr_gettext("obj_blookdiary_86")
    global.msg[2] = scr_gettext("obj_blookdiary_87")
    global.msg[3] = scr_gettext("obj_blookdiary_88")
    global.msg[4] = scr_gettext("obj_blookdiary_89")
    global.msg[5] = scr_gettext("obj_blookdiary_90")
    global.msg[6] = scr_gettext("obj_blookdiary_91")
}
if (x > 145)
{
    global.msg[0] = scr_gettext("obj_blookdiary_96")
    global.msg[1] = scr_gettext("obj_blookdiary_97")
    global.msg[2] = scr_gettext("obj_blookdiary_98")
    global.msg[3] = scr_gettext("obj_blookdiary_99")
    global.msg[4] = scr_gettext("obj_blookdiary_100")
    global.msg[5] = scr_gettext("obj_blookdiary_101")
    global.msg[6] = scr_gettext("obj_blookdiary_102")
}
if (x > 170)
{
    global.msg[0] = scr_gettext("obj_blookdiary_107")
    global.msg[1] = scr_gettext("obj_blookdiary_108")
}
if (x > 200)
{
    global.msg[0] = scr_gettext("obj_blookdiary_115")
    global.msg[1] = scr_gettext("obj_blookdiary_116")
    global.msg[2] = scr_gettext("obj_blookdiary_117")
    global.msg[3] = scr_gettext("obj_blookdiary_118")
    global.msg[4] = scr_gettext("obj_blookdiary_119")
    global.msg[5] = scr_gettext("obj_blookdiary_120")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
