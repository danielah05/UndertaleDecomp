scr_depth(0, 0, 0, 0, 0)
if (global.kills > 16)
	instance_destroy()
if (room == room_ruins17 && global.kills > 10)
	instance_destroy()
if (room == room_ruins7 && global.kills > 2)
	instance_destroy()
if (instance_exists(OBJ_WRITER) && myinteract != 0)
{
	var skipbutton = control_check(CancelButton)
	var skipped = (skipbutton && (!last_skipbutton))
	last_skipbutton = skipbutton
	if (skipped && OBJ_WRITER.stringno > 1)
		xed = 1
	if (xed > 0)
	{
		OBJ_WRITER.mystring[4] = scr_gettext("obj_smallfrog_xadvice_150")
		if (FL_TruePacifist == true)
			OBJ_WRITER.mystring[4] = scr_gettext("obj_smallfrog_xadvice_153")
		xed = 0
	}
}
