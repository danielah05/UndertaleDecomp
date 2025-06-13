if (myinteract == 1)
{
	global.interact = 1
	alarm[0] = 1
	myinteract = 2
}
if (myinteract == 3)
{
	if (instance_exists(mydialoguer) == false && con == 0)
	{
		global.interact = 0
		myinteract = 0
	}
}
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
	con = 2
	alarm[4] = 10
	global.interact = 1
}
if (con == 2)
	global.interact = 1
if (con == 3)
{
	sprite_index = lsprite
	image_speed = 0.25
	hspeed = -3
	con = 4
	alarm[4] = 14
}
if (con == 5)
{
	sprite_index = dsprite
	hspeed = 0
	vspeed = 3
	con = 6
	alarm[4] = 18
	global.facing = Direction.Left
}
if (con == 7)
{
	sprite_index = rsprite
	global.facing = Direction.Down
	hspeed = 3
	vspeed = 0
	con = 8
	alarm[4] = 17
}
if (con == 9)
{
	image_speed = 0
	hspeed = 0
	con = 10
	alarm[4] = 20
}
if (con == 11)
{
	instance_create(0, 0, obj_musfadeout)
	global.facing = Direction.Down
	sprite_index = usprite
	image_index = 0
	global.msc = 0
	global.facechoice = 3
	global.msg[0] = scr_gettext("obj_sans_sentry2_306")
	instance_create(0, 0, obj_dialoguer)
	con = 12
}
if (con == 12 && instance_exists(OBJ_WRITER) == false)
{
	with (obj_doorA)
		instance_destroy()
	with (obj_doorAmusicfade)
		instance_destroy()
	global.facing = Direction.Right
	hspeed = 3
	sprite_index = rsprite
	image_speed = 0.25
	obj_mainchara.hspeed = 2
	obj_mainchara.vspeed = 1
	obj_mainchara.image_speed = 0.334
	con = 13
	alarm[4] = 30
}
if (con == 14)
{
	event_user(2)
	con = 15
}
