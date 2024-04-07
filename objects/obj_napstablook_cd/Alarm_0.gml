myinteract = 3
no = 0
if (id == instance_find(object_index, 1))
    no = 1
if (id == instance_find(object_index, 2))
    no = 2
global.msc = 606
if (no == 1)
    global.msc = 608
if (no == 2)
    global.msc = 610
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (buffer > 0)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_napstablook_cd_113")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
