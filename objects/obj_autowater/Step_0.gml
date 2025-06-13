if (global.interact == 0 && con == 1)
{
	global.msc = 0
	if (room == room_fire1)
		global.msg[0] = scr_gettext("obj_autowater_81")
	if (room == room_fire2)
		global.msg[0] = scr_gettext("obj_autowater_85")
	if (room == room_fire_prelab)
	{
		global.msg[0] = scr_gettext("obj_autowater_89")
		global.msg[1] = scr_gettext("obj_autowater_90")
	}
	with (obj_mainchara)
	{
		dsprite = spr_maincharad
		rsprite = spr_maincharar
		usprite = spr_maincharau
		lsprite = spr_maincharal
	}
	con = 2
	scr_regulartext()
	global.interact = 1
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
	FL_HaveWater = 0
	global.interact = 0
	instance_destroy()
}
