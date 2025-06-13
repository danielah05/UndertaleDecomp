myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_slimeson_75")
if (global.plot >= 122)
	global.msg[0] = scr_gettext("obj_townnpc_slimeson_79")
if (FL_TruePacifist == true)
	global.msg[0] = scr_gettext("obj_townnpc_slimeson_84")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
