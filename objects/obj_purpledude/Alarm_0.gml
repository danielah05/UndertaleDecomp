myinteract = 3
global.msc = 680
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (FL_HaveUmbrella == 1)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_purpledude_111")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
