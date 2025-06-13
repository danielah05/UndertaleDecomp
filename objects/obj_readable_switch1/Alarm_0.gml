myinteract = 3
if (global.plot < 5)
{
	if instance_exists(obj_torinteractable2)
	{
		obj_torinteractable2.lsprite = spr_toriel_lt
		global.msc = 0
		global.typer = 4
		global.facechoice = 1
		global.faceemotion = 1
		global.msg[0] = scr_gettext("obj_readable_switch1_65")
		global.msg[1] = scr_gettext("obj_readable_switch1_66")
		global.msg[2] = scr_gettext("obj_readable_switch1_67")
		if (FL_Hardmode == true)
			global.msg[0] = scr_gettext("obj_readable_switch1_71")
	}
	else
	{
		global.msc = 0
		global.typer = 5
		global.facechoice = 0
		global.faceemotion = 0
		snd_play(snd_wrongvictory)
		global.msg[0] = scr_gettext("obj_readable_switch1_81")
	}
}
if (global.plot >= 5)
{
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_readable_switch1_91")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
