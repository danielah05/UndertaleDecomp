myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_clamguy_73")
global.msg[1] = scr_gettext("obj_clamguy_74")
if (FL_PouredWaterCounter > 7)
{
	global.msg[0] = scr_gettext("obj_clamguy_78")
	global.msg[1] = scr_gettext("obj_clamguy_79")
}
if (FL_PouredWaterCounter > 15)
{
	global.msg[0] = scr_gettext("obj_clamguy_83")
	global.msg[1] = scr_gettext("obj_clamguy_84")
}
if (FL_HaveWater == 1)
{
	global.msg[0] = scr_gettext("obj_clamguy_89")
	global.msg[1] = scr_gettext("obj_clamguy_90")
	global.msg[2] = scr_gettext("obj_clamguy_91")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_clamguy_98")
	global.msg[1] = scr_gettext("obj_clamguy_99")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
