myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if instance_exists(obj_papyrusparent)
{
    scr_papface(0, 0)
    global.msg[1] = scr_gettext("obj_papfridge_71")
    global.msg[2] = scr_gettext("obj_papfridge_72")
    global.msg[3] = scr_gettext("obj_papfridge_73")
    global.msg[4] = scr_gettext("obj_papfridge_74")
    global.msg[5] = scr_gettext("obj_papfridge_75")
    if (talkedto > 0)
        global.msg[1] = scr_gettext("obj_papfridge_77")
}
else
{
    global.msg[0] = scr_gettext("obj_papfridge_81")
    global.msg[1] = scr_gettext("obj_papfridge_82")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
