myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_icewolf_71")
global.msg[1] = scr_gettext("obj_townnpc_icewolf_72")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_townnpc_icewolf_74")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
