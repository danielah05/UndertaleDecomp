scr_depth(0, 0, 0, 0, 0)
if (instance_exists(OBJ_WRITER) == false && myinteract == 4)
{
	if (global.plot < 2)
		global.plot = 2
	global.interact = 5
	global.menuno = 4
	myinteract = 5
}
