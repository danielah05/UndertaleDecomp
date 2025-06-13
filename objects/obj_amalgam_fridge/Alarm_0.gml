myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (FL_EndogenyEvent == 1)
{
	global.msg[0] = scr_gettext("obj_amalgam_fridge_99")
	con = 1
}
else
	global.msg[0] = scr_gettext("obj_amalgam_fridge_103")
if (FL_SnowyAmalgamEvent == 1)
{
	global.msg[0] = scr_gettext("obj_amalgam_fridge_107")
	con = 10
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
