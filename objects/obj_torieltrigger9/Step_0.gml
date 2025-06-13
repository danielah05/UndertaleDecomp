dingus += 1
if (global.plot == 21 && dingus == 2)
	instance_create(370, 90, obj_toroverworld3)
if (conversation == 2 && instance_exists(obj_dialoguer) == false)
{
	with (obj_toroverworld3)
		path_start(path_walkright, 4, path_action_stop, 0)
	global.plot = 22
	global.interact = 0
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
		global.faceemotion = 2
		global.msc = 0
		global.msg[0] = scr_gettext("obj_torieltrigger9_77")
		global.msg[1] = scr_gettext("obj_torieltrigger9_78")
		global.msg[2] = scr_gettext("obj_torieltrigger9_79")
		global.msg[3] = scr_gettext("obj_torieltrigger9_80")
		global.msg[4] = scr_gettext("obj_torieltrigger9_81")
		global.msg[5] = scr_gettext("obj_torieltrigger9_82")
		mydialoguer = instance_create(0, 0, obj_dialoguer)
		conversation = 2
	}
}
