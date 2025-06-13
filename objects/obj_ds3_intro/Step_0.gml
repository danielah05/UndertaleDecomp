if (con == 20)
{
	aa = 68
	os[0] = spr_ds3_sign
	ox[0] = 45
	oy[0] = 57
	os[1] = spr_ds3_cashbox
	ox[1] = 75
	oy[1] = 56
	os[2] = spr_ds3_coinbox
	ox[2] = 106
	oy[2] = 56
	os[3] = spr_inuslot_pre
	ox[3] = 142
	oy[3] = 10
	for (i = 0; i < 4; i += 1)
	{
		oo[i] = instance_create(ox[i], (oy[i] - aa), obj_ds3_marker)
		oo[i].sprite_index = os[i]
		with (oo[i])
		{
			gravity = 0.5
			image_speed = 0
		}
	}
	timer = 0
	con = 21
}
if (con == 21)
{
	timer += 1
	if (timer >= 17)
	{
		con = 22
		for (i = 0; i < 4; i += 1)
		{
			with (oo[i])
			{
				gravity = 0
				vspeed = 0
			}
		}
		inuslot = instance_create(ox[3], oy[3], obj_inuslot)
		with (oo[3])
			instance_destroy()
	}
}
