scr_depth(0, 0, 0, 0, 0)
if (con == 2 && instance_exists(OBJ_WRITER) == false && FL_UnlockedNewHomeLatch == 1)
{
	con = 3
	global.interact = 0
	with (salad)
		instance_destroy()
	instance_destroy()
}
