if (on == 1)
{
	image_index = 1
	if control_check_pressed(InteractButton)
	{
		if (con == 0)
		{
			con = 1
			with (obj_sansb_body)
				death_c = 1
			with (obj_heart)
				movement = -1
		}
	}
}
else
	image_index = 0
on = 0
