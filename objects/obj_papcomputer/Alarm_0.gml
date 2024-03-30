myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if instance_exists(obj_papyrusparent)
{
    scr_papface(0, 0)
    global.msg[1] = scr_gettext("obj_papcomputer_63")
    global.msg[2] = scr_gettext("obj_papcomputer_64")
    global.msg[3] = scr_gettext("obj_papcomputer_65")
    global.msg[4] = scr_gettext("obj_papcomputer_66")
    global.msg[5] = scr_gettext("obj_papcomputer_67")
    global.msg[6] = scr_gettext("obj_papcomputer_68")
    if (read > 0)
        global.msg[0] = scr_gettext("obj_papcomputer_73")
}
else
    global.msg[0] = scr_gettext("obj_papcomputer_79")
if (room == room_water_blookhouse)
    global.msg[0] = scr_gettext("obj_papcomputer_84")
if (room == room_ice_dog)
{
    global.msg[0] = scr_gettext("obj_papcomputer_90")
    global.msg[1] = scr_gettext("obj_papcomputer_91")
    global.msg[2] = scr_gettext("obj_papcomputer_92")
    global.msg[3] = scr_gettext("obj_papcomputer_93")
    global.msg[4] = scr_gettext("obj_papcomputer_94")
    global.msg[5] = scr_gettext("obj_papcomputer_95")
}
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
