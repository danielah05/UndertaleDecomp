myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_spaghetti_98")
global.msg[1] = scr_gettext("obj_spaghetti_99")
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_spaghetti_102")
	global.msg[1] = scr_gettext("obj_spaghetti_103")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
