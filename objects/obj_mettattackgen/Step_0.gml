siner += 1
if (global.turntimer <= 0)
{
	with (obj_mettb_body)
		bodyopen = 0
	if (global.attacktype == 48)
	{
		with (obj_mettb_body)
			event_user(3)
	}
	global.turntimer = -1
	if (last == 0)
		global.mnfight = 3
	instance_destroy()
}
if (specialtimer == 1)
{
	if (instance_exists(obj_mettfodder) == false && global.turntimer > 9)
		global.turntimer = 9
}
if (specialtimer == 2)
{
	if (instance_exists(obj_plusbomb) == false && global.turntimer > 9)
		global.turntimer = 9
}
