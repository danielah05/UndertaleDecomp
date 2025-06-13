if (instance_exists(blconwriter) == false)
{
	if (FL_Hardmode == false)
		alarm[10] = 2
	else
	{
		destroyed = -1
		with (blcon)
			instance_destroy()
		tr = instance_create(x, y, obj_torboss_2ndtime)
		visible = false
		conversation = -20
	}
}
else
	alarm[9] = 2
