if instance_exists(obj_musicstatue)
{
	if (FL_MusicStatueOn == 1 && obj_musicstatue.boxactive == 1)
	{
		statuetimer += 1
		if (statuetimer >= 450)
		{
			alpha_x += 0.005
			max_alpha = alpha_x
			if (max_alpha > 1)
				max_alpha = 1
			image_alpha = (((abs(sin((statuetimer / 60))) * max_alpha) * 0.8) * ((100 - obj_musicstatue.disto) / 100))
			x = (xstart + (sin((statuetimer / 20)) * 3))
			y = (ystart + (cos((statuetimer / 33)) * 2))
			image_speed = 0.06
		}
	}
}
