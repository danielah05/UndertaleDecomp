if (obj_mainchara.bbox_top < 125)
	level = 2
else
	level = 1
if instance_exists(block[0])
{
	with (block[0])
		instance_destroy()
	with (block[1])
		instance_destroy()
	with (block[2])
		instance_destroy()
	with (block[3])
		instance_destroy()
	with (block[5])
		instance_destroy()
	with (block[6])
		instance_destroy()
	if (dogdoor != noone)
	{
		with (dogdoor)
			instance_destroy()
		dogdoor = noone
	}
}
if (instance_exists(block[4]) == false)
	block[4] = instance_create(83, 90, obj_solidlong)
