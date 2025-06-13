dingus += 1
if (global.plot == 24 && dingus == 2)
{
	instance_create(140, 50, obj_toroverworld3)
	obj_toroverworld3.facing = Direction.Up
	obj_toroverworld3.direction = 90
}
if (conversation == 2 && instance_exists(obj_dialoguer) == false)
{
	alarm[1] = 20
	FL_TorielStatus = TorielStatus.Fight
	conversation = 3
}
if (conversation == 9 && instance_exists(obj_dialoguer) == false)
{
	global.interact = 0
	conversation = 10
}
if (conversation == 6 && instance_exists(obj_dialoguer) == false)
{
	obj_toroverworld3.y += 10
	obj_toroverworld3.image_index = 0
	obj_toroverworld3.dsprite = spr_toriel_hug
	obj_toroverworld3.sprite_index = spr_toriel_hug
	obj_mainchara.visible = false
	obj_toroverworld3.image_speed = 0.2
	alarm[3] = 120
	conversation = 7
}
if instance_exists(obj_toroverworld3)
{
	if (conversation == 7.6 && obj_toroverworld3.path_position == 1)
	{
		alarm[5] = 30
		conversation = 7.7
	}
}
if (conversation == 7.5 && instance_exists(obj_dialoguer) == false)
{
	with (obj_toroverworld3)
		path_start(path_torielwalkbasement3, 3, path_action_stop, 0)
	conversation = 7.6
}
if (conversation == 8 && instance_exists(obj_dialoguer) == false)
{
	global.seriousbattle = 0
	global.interact = 0
	with (obj_toroverworld3)
		instance_destroy()
	global.plot = 25
	instance_destroy()
}
if instance_exists(obj_toroverworld3)
{
	if (conversation == 1)
	{
		global.interact = 1
		myinteract = 3
		global.typer = 4
		global.facechoice = 1
		global.faceemotion = 7
		global.msc = 0
		global.msg[0] = scr_gettext("obj_torieltrigger12_325")
		global.msg[1] = scr_gettext("obj_torieltrigger12_326")
		global.msg[2] = scr_gettext("obj_torieltrigger12_327")
		global.msg[3] = scr_gettext("obj_torieltrigger12_328")
		global.msg[4] = scr_gettext("obj_torieltrigger12_329")
		global.msg[5] = scr_gettext("obj_torieltrigger12_330")
		ossafe_ini_open("undertale.ini")
		TK = ini_read_real("Toriel", "TK", 0)
		ossafe_ini_close()
		if (TK > 0)
		{
			global.msg[5] = scr_gettext("obj_torieltrigger12_336")
			global.msg[6] = scr_gettext("obj_torieltrigger12_337")
			global.msg[7] = scr_gettext("obj_torieltrigger12_338")
			global.msg[8] = scr_gettext("obj_torieltrigger12_339")
			global.msg[9] = scr_gettext("obj_torieltrigger12_340")
			global.msg[10] = scr_gettext("obj_torieltrigger12_341")
		}
		if (FL_RuinsKillsCounter > 11 && FL_TundraKillsCounter > 11)
		{
			global.msg[5] = scr_gettext("obj_torieltrigger12_346")
			global.msg[6] = scr_gettext("obj_torieltrigger12_347")
		}
		if (FL_TorielStatus == TorielStatus.Fight)
		{
			global.msg[0] = scr_gettext("obj_torieltrigger12_353")
			global.msg[1] = scr_gettext("obj_torieltrigger12_354")
		}
		mydialoguer = instance_create(0, 0, obj_dialoguer)
		conversation = 2
	}
}
