if (canttalk == 0)
{
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.msg[0] = scr_gettext("obj_kitchenforcefield_123")
	if (room == room_fire_newsreport)
		global.msg[0] = scr_gettext("obj_kitchenforcefield_124")
	if (room == room_fire10)
		global.msg[0] = scr_gettext("obj_kitchenforcefield_125")
	if (room == room_fire_core4 || room == room_fire_core_right)
		global.msg[0] = scr_gettext("obj_kitchenforcefield_126")
	if (room == room_fire_core_laserfun)
		global.msg[0] = scr_gettext("obj_kitchenforcefield_127")
	if (room == room_fire_prelab || room == room_fire_walkandbranch || room == room_fire_elevator_r3 || room == room_fire_elevator_l2 || room == room_fire_elevator_r2)
		global.msg[0] = scr_gettext("obj_kitchenforcefield_128")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	myinteract = 3
}
else
{
	global.interact = 0
	myinteract = 0
}
