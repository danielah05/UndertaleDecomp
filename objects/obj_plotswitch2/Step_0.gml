if (myinteract == 1 && global.plot <= 4.5)
{
	on = 1
	myinteract = 0
	image_index = 1
	global.plot = 5
	global.vshake = 0
	global.hshake = 4
	global.shakespeed = 2
	instance_create(0, 0, obj_shaker)
	snd_play(snd_screenshake)
	global.interact = 99
}
if (instance_exists(obj_shaker) == false && global.interact == 99)
	global.interact = 0
image_index = on
