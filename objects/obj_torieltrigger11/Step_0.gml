dingus += 1
if (global.plot == 23 && dingus == 2)
{
	instance_create(140, 90, obj_toroverworld3)
	obj_toroverworld3.facing = Direction.Up
	obj_toroverworld3.direction = 90
}
if (conversation == 2 && instance_exists(obj_dialoguer) == false)
{
	with (obj_toroverworld3)
		path_start(path_walkup, 4, path_action_stop, 0)
	global.plot = 24
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
		global.faceemotion = 6
		global.msc = 0
		global.msg[0] = scr_gettext("obj_torieltrigger11_79")
		global.msg[1] = scr_gettext("obj_torieltrigger11_80")
		mydialoguer = instance_create(0, 0, obj_dialoguer)
		conversation = 2
	}
}
