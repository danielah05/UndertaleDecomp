myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if instance_exists(obj_papyrusparent)
{
    scr_papface(0, 0)
    global.msg[1] = scr_gettext("obj_carbed_63")
    global.msg[2] = scr_gettext("obj_carbed_64")
    global.msg[3] = scr_gettext("obj_carbed_65")
    global.msg[4] = scr_gettext("obj_carbed_66")
    global.msg[5] = scr_gettext("obj_carbed_67")
    global.msg[6] = scr_gettext("obj_carbed_68")
    global.msg[7] = scr_gettext("obj_carbed_69")
    if (read > 0)
    {
        global.msg[1] = scr_gettext("obj_carbed_72")
        global.msg[2] = scr_gettext("obj_carbed_73")
    }
}
else
    global.msg[0] = scr_gettext("obj_carbed_78")
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
