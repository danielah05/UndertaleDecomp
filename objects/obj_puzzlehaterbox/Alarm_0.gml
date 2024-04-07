myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_puzzlehaterbox_78")
if (FL_SoSorryStatus == 2)
{
    with (obj_puzzlehater)
        spec = 1
    global.facing = Direction.Left
    global.msg[0] = scr_gettext("obj_puzzlehaterbox_84")
}
if (FL_SoSorryStatus == 2)
{
    with (obj_puzzlehater)
        spec = 1
    global.facing = Direction.Left
    global.msg[0] = scr_gettext("obj_puzzlehaterbox_91")
    global.msg[1] = scr_gettext("obj_puzzlehaterbox_92")
    FL_SoSorryStatus = 2
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
