myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_stick_95")
if (broken == 1)
	global.msg[0] = scr_gettext("obj_stick_99")
mydialoguer = instance_create(0, 0, obj_dialoguer)
