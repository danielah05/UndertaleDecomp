if (global.plot < 42)
	myinteract = 0
if (myinteract == 1 && conversation == 0)
{
	if (FL_DoggoStatus == DogStatus.Killed)
	{
		if (!snd_isplaying(snd_bell))
			snd_play(snd_bell)
		conversation = 0
		myinteract = 0
	}
	else
	{
		global.interact = 1
		myinteract = 3
	}
}
if (conversation == 0 && myinteract == 3)
{
	snd_play(snd_bell)
	alarm[5] = 12
	global.interact = 1
	image_yscale = 1
	visible = true
	sprite_index = spr_movedoge_o
	image_speed = 0.1
	y = 150
	vspeed = -0.5
	conversation = 2
}
if (conversation == 2 && y <= 120)
{
	y = 120
	alarm[0] = 20
	conversation = 3
	vspeed = 0
}
if (conversation == 4)
{
	global.msg[0] = scr_gettext("obj_dogringbell_148")
	if (td == 1)
		global.msg[0] = scr_gettext("obj_dogringbell_149")
	if (td == 2)
		global.msg[0] = scr_gettext("obj_dogringbell_150")
	if (td == 3)
		global.msg[0] = scr_gettext("obj_dogringbell_151")
	if (td == 4)
		global.msg[0] = scr_gettext("obj_dogringbell_152")
	if (td > 4)
		global.msg[0] = scr_gettext("obj_dogringbell_153")
	scr_regulartext()
	conversation = 7
	td += 1
}
if (conversation == 7 && instance_exists(OBJ_WRITER) == false)
{
	vspeed = 1
	alarm[0] = 20
	conversation = 8
}
if (conversation == 9)
{
	visible = false
	sprite_index = spr_event
	vspeed = 0
	y = 140
	conversation = 0
	global.interact = 0
	myinteract = 0
}
