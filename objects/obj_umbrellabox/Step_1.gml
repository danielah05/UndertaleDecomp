scr_depth(0, 0, 0, 0, 0)
if (con == 99999)
{
	global.interact = 1
	obj_mainchara.x = 66
	con = 1
	global.msg[0] = scr_gettext("obj_umbrellabox_135")
	scr_regulartext()
}
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 0
	con = 0
}
