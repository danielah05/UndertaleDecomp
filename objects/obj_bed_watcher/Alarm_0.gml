myinteract = 3
global.msc = 782
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (obj_mainchara.x > x)
{
    global.msg[0] = scr_gettext("obj_bed_watcher_94")
    global.msg[1] = scr_gettext("obj_bed_watcher_95")
    global.msc = 0
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
