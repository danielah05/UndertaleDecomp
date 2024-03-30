myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (FL_ShyrenStatus == ShyrenStatus.Encouraged)
    global.msg[0] = scr_gettext("obj_shyrenstrewn_60")
else
    global.msg[0] = scr_gettext("obj_shyrenstrewn_61")
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
