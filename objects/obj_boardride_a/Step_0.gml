if (active == true && global.interact == 0)
{
	if collision_rectangle((x + 16), (y + 2), (x + 24), (y + 18), obj_mainchara, 0, 1)
	{
		scr_tempsave()
		global.interact = 1
		global.phasing = 1
		hspeed = 3
		obj_mainchara.hspeed = 3
		obj_mainchara.image_speed = 0
		scr_musfadeout(0.006)
		global.currentsong = caster_load("music/ambientwater.ogg")
		caster_loop(global.currentsong, 0, 0.9)
		scr_musfadein(0.005)
		active = 2
	}
}
if (active == 2 && x >= 1000)
{
	x = 1000
	hspeed = 0
	obj_mainchara.image_speed = 0.25
	alarm[2] = 8
	active = 3
}
if (active == 4)
{
	obj_mainchara.hspeed = 0
	obj_mainchara.image_speed = 0
	global.interact = 0
	active = 5
	hspeed = -3
	global.phasing = 0
}
