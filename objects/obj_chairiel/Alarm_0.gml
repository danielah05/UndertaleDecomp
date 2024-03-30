myinteract = 3
if (chair == 0)
{
    global.msc = 527
    if (FL_GotBScotchPie > 0)
        global.msc = 528
    if (global.plot == 19.1)
        global.msc = 528
    if (global.plot == 19.2)
        global.msc = 529
    if (global.plot == 19.3)
        global.msc = 530
    if (global.plot == 19.4)
        global.msc = 531
    global.choice = -1
    global.typer = 4
    global.facechoice = 1
    global.faceemotion = 99
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    talkedto += 1
}
else
{
    myinteract = 3
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    if (chair != 9)
    {
        global.msg[0] = scr_gettext("obj_chairiel_118")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
    else
    {
        global.msg[0] = scr_gettext("obj_chairiel_123")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
}
