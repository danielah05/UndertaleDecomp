myinteract = 3
global.msc = 0
global.typer = 17
global.facechoice = 3
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_sans_interactable1_68")
global.msg[1] = scr_gettext("obj_sans_interactable1_69")
if (talkedto > 0)
{
    if (talkedto == 1)
    {
        global.msg[0] = scr_gettext("obj_sans_interactable1_74")
        global.msg[1] = scr_gettext("obj_sans_interactable1_75")
    }
    if (talkedto == 2)
        global.msg[0] = scr_gettext("obj_sans_interactable1_79")
}
if (scr_murderlv() >= 2)
    global.msg[0] = scr_gettext("obj_sans_interactable1_85")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
