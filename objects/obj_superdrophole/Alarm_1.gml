if (global.phasing == 1)
{
	global.interact = 4
	global.facing += 1
	with (obj_solidparent)
		solid = 0
	with (obj_readablesolid)
		solid = 0
	obj_mainchara.vspeed = 5
	obj_mainchara.image_alpha = 0.5
	if (global.facing > 3)
		global.facing = Direction.Down
	alarm[1] = 4
}
