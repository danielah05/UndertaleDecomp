myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if instance_exists(obj_papyrusparent)
{
    scr_papface(0, 0)
    global.msg[1] = scr_gettext("obj_actiontable_63")
    global.msg[2] = scr_gettext("obj_actiontable_64")
    global.msg[3] = scr_gettext("obj_actiontable_66")
    global.msg[4] = scr_gettext("obj_actiontable_67")
    global.msg[5] = scr_gettext("obj_actiontable_68")
    global.msg[6] = scr_gettext("obj_actiontable_69")
    global.msg[7] = scr_gettext("obj_actiontable_70")
    if (read > 0)
        global.msg[0] = scr_gettext("obj_actiontable_72")
}
else
    global.msg[0] = scr_gettext("obj_actiontable_76")
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
