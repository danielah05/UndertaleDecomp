if (instance_exists(obj_shaker) == false)
	scr_shake(6, 6, 2)
snd_play(snd_impact)
snd_play(snd_break2)
i = 0
visible = false
repeat (2)
{
	i = 0
	repeat (6)
	{
		iii = instance_create((x + 55), (y + 21), obj_mercybutton_part)
		iii.image_index = i
		iii.hspeed = (-14 - random(26))
		iii.friction = 0.1
		iii.aa = (7 + random(4))
		i += 1
	}
	repeat (5)
	{
		iii = instance_create((x + 55), (y + 21), obj_mercybutton_part)
		iii.image_index = i
		iii.hspeed = (10 + random(30))
		iii.friction = 0.1
		iii.aa = (-8 - random(4))
		i += 1
	}
}
instance_destroy()
