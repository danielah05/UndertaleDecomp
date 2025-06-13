if (global.interact == 0)
{
	if (locked == true)
	{
		if (rattle <= 0)
		{
			if (scr_heartl_holdl() && scr_heartr_holdr())
			{
				if (held == 0)
				{
					snd_stop(snd_noise)
					snd_play(snd_noise)
					rattle = 2
				}
				held = 1
			}
			else
				held = 0
		}
	}
	if (locked == false && open == 0 && slide_con == 0)
	{
		if (scr_heartl_holdl() && scr_heartr_holdr())
		{
			snd_play(snd_noise)
			slide_con = 1
			global.interact = 1
		}
	}
}
if (slide_con == 1)
{
	done = 0
	if (door1x > -20)
		door1x -= 5
	else
		done += 1
	if (door2x < 20)
		door2x += 5
	else
		done += 1
	if (done == 2)
	{
		open = 1
		if (FL_MadMewMewStatus < MadMewMewStatus.DoorOpened)
			FL_MadMewMewStatus = MadMewMewStatus.DoorOpened
		FL_MadMewMewImageIndex = choose(0, 0, 0, 0, 1, 1, 1, 2, 2)
		with (block)
			instance_destroy()
		with (interacter)
			instance_destroy()
		snd_play(snd_screenshake)
		instance_create(0, 0, obj_shaker)
		door1x = -20
		door2x = 20
		rattle = 3
		slide_con = 2
		done_timer = 0
		open = 1
	}
}
if (slide_con == 2)
{
	done_timer += 1
	if (done_timer >= 15)
	{
		slide_con = 3
		global.interact = 0
	}
}
