if (t == 1 && instance_exists(OBJ_WRITER) == false)
{
	instance_destroy()
	global.interact = 0
	if (donotcall == 0)
	{
		if instance_exists(mb)
		{
			with (mb)
				instance_destroy()
		}
	}
}
