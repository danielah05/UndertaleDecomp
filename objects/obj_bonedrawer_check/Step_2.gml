if (con == 5 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 1
	con = 6
	alarm[4] = 6
}
if (con == 6)
	global.interact = 1
if (con == 7)
{
	obj_mainchara.hspeed = 3
	obj_mainchara.image_speed = 0.25
	global.facing = Direction.Right
	if (obj_mainchara.x > (x + 22))
		con = 6.1
}
if (con == 6.1)
{
	global.facing = Direction.Left
	obj_mainchara.hspeed = 0
	obj_mainchara.image_speed = 0
	con = 7.2
	alarm[4] = 10
}
if (con == 8.2)
{
	caster_pause(global.currentsong)
	global.facing = Direction.Left
	obj_mainchara.hspeed = 0
	obj_mainchara.image_speed = 0
	snd_play(snd_noise)
	obj_bonedrawer.sprite_index = spr_bonedrawer_improved
	obj_bonedrawer.image_index = 0
	obj_bonedrawer.drawerdown = 1
	con = 9
	alarm[4] = 35
}
if (con == 10)
{
	snd_play(snd_bell)
	obj_bonedrawer.image_index = 1
	con = 11
	alarm[4] = 30
}
if (con == 12)
{
	snd_play(snd_noise)
	obj_bonedrawer.drawerdown = 3
	con = 13
	alarm[4] = 20
}
if (con == 14)
{
	with (obj_mainchara)
		uncan = 0
	caster_resume(global.currentsong)
	global.interact = 0
	myinteract = 0
	global.facing = Direction.Down
	con = 15
}
