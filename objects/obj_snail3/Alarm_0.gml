myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_snail3_70")
if (FL_TruePacifist == true)
	global.msg[0] = scr_gettext("obj_snail3_73")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
