if (type == 0 || type == 3)
{
	image_speed = 0
	image_alpha = 1
	image_xscale = 2
	image_yscale = 2
	if (type == 0)
	{
		if (set == 0)
			sprite_index = spr_tv_floweyface_seta
		if (set == 1)
			sprite_index = spr_tv_floweyface_setb
		if (set == 2)
			sprite_index = spr_tv_floweyface_setc
		image_index = global.faceemotion
	}
	if (type == 3)
	{
		image_speed = 0.5
		sprite_index = spr_tv_floweyface_everyone
	}
	if (moved != 2)
	{
		if caster_is_playing(ns)
			caster_stop(ns)
	}
	if (moved == 2)
	{
		image_xscale = (1.98 + random(0.02))
		image_yscale = (1.98 + random(0.02))
		x = (xx + random(1))
		y = (yy + random(1))
		helltimer += 1
		if (helltimer < 50)
		{
			if caster_is_playing(ns)
				caster_stop(ns)
		}
		if (helltimer == 50)
		{
			if (!caster_is_playing(ns))
				caster_loop(ns, 1, 1)
		}
		if (helltimer >= 50)
		{
			sprite_index = spr_noise
			image_index = random(99)
			image_xscale = 0.86
			image_yscale = 0.58
		}
		if (helltimer >= 56)
		{
			helltimer = (-100 - floor(random(320)))
			if caster_is_playing(ns)
				caster_stop(ns)
		}
	}
}
if (type == 1)
{
	image_alpha = 1
	sprite_index = spr_noise
	image_xscale = 0.86
	image_yscale = 0.58
	image_speed = 1
	if (!caster_is_playing(ns))
		caster_loop(ns, 1, 1)
}
if (type == 2)
{
	if caster_is_playing(ns)
		caster_stop(ns)
	image_alpha = 0
}
