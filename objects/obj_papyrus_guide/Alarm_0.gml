myinteract = 3
global.msc = 0
global.typer = 19
global.facechoice = 4
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_papyrus_guide_82")
global.msg[1] = scr_gettext("obj_papyrus_guide_83")
if (workout == 1)
    global.msg[0] = scr_gettext("obj_papyrus_guide_84")
if (workout == 2)
{
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_papyrus_guide_88")
    global.msg[1] = scr_gettext("obj_papyrus_guide_89")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
