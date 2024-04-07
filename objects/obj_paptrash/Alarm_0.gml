myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_paptrash_68")
if instance_exists(obj_papyrusparent)
{
    scr_papface(0, 0)
    global.msg[1] = scr_gettext("obj_paptrash_72")
    global.msg[2] = scr_gettext("obj_paptrash_73")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
