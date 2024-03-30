if (conversation == 2 && instance_exists(obj_dialoguer) == false)
{
    global.interact = 0
    FL_WrongSwitchesPressedCount += 1
    instance_destroy()
}
if (conversation == 1)
{
    global.interact = 1
    myinteract = 3
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_switchhelptrigger_69")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 2
}
