myinteract = 3
global.msc = 0
global.typer = 28
global.facechoice = 0
global.faceemotion = 0
if (FL_TalkedToAllergyTem == 1)
	global.msg[0] = scr_gettext("obj_hivestem_99")
else
{
	global.msg[0] = scr_gettext("obj_hivestem_103")
	global.msg[1] = scr_gettext("obj_hivestem_104")
	global.msg[2] = scr_gettext("obj_hivestem_105")
	con = 2
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
