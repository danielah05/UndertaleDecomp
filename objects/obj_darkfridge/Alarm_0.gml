myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_darkfridge_116")
if (x > 242)
{
    global.msg[0] = scr_gettext("obj_darkfridge_122")
    if (FL_EndogenyEvent == 0)
        global.msg[0] = scr_gettext("obj_darkfridge_126")
}
if (x > 340)
{
    global.msg[0] = scr_gettext("obj_darkfridge_133")
    if (FL_EndogenyEvent == 0)
        global.msg[0] = scr_gettext("obj_darkfridge_136")
}
if (x > 440)
{
    global.msg[0] = scr_gettext("obj_darkfridge_142")
    if (FL_EndogenyEvent == 0)
        global.msg[0] = scr_gettext("obj_darkfridge_145")
}
if (x > 530)
{
    global.msg[0] = scr_gettext("obj_darkfridge_151")
    if (FL_EndogenyEvent == 0)
        global.msg[0] = scr_gettext("obj_darkfridge_154")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
