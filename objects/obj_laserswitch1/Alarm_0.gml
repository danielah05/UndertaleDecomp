myinteract = 3
global.msc = 682
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (global.plot > 184)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_laserswitch1_90")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
