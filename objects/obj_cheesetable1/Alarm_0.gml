myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_cheesetable1_58")
global.msg[1] = scr_gettext("obj_cheesetable1_59")
if (FL_TruePacifist == true)
	global.msg[0] = scr_gettext("obj_cheesetable1_62")
mydialoguer = instance_create(0, 0, obj_dialoguer)
