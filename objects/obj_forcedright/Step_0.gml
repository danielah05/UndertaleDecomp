if (t == 1)
{
	obj_mainchara.image_speed = 0.25
	if (vol > 0.06)
	{
		vol -= 0.04
		caster_set_volume(global.currentsong, vol)
	}
	else
	{
		vol = 0
		caster_pause(global.currentsong)
	}
}
if (t == 4)
{
	dogmeander = caster_load("music/dogmeander.ogg")
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.interact = 1
	global.msg[0] = scr_gettext("obj_forcedright_142")
	global.msg[1] = scr_gettext("obj_forcedright_143")
	t = 5
	instance_create(0, 0, obj_dialoguer)
}
if (t == 5 && instance_exists(obj_dialoguer) == false)
{
	caster_play(dogmeander, 1, 1.4)
	t = 6
	with (dog1)
		path_start(path_mdog, 4, path_action_stop, 0)
	with (dog2)
		path_start(path_wdog, 4, path_action_stop, 0)
}
if (t == 6 && instance_exists(obj_mandog_actor))
{
	if (dog1.path_position == 1)
	{
		dog1.path_speed = 0
		dog2.path_speed = 0
		alarm[2] = 30
		t = 7
	}
}
if (t == 8)
{
	caster_free(dogmeander)
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_forcedright_175")
	global.msg[1] = scr_gettext("obj_forcedright_176")
	global.msg[2] = scr_gettext("obj_forcedright_177")
	t = 9
	instance_create(0, 0, obj_dialoguer)
}
if (t == 9 && instance_exists(OBJ_WRITER) == false)
{
	global.battlegroup = BattleGroup.Dogi
	FL_AreaKillsPointer = KillsPointer_Invalid
	global.mercy = 1
	instance_create(0, 0, obj_battler)
	t = 10
}
if (global.plot == 50 && t == 10)
{
	global.interact = 1
	if (FL_DogCoupleStatus == DogStatus.Killed)
	{
		global.plot = 51
		global.interact = 0
		with (dog1)
			instance_destroy()
		with (dog2)
			instance_destroy()
		instance_destroy()
		return;
	}
	alarm[2] = 11
	t = 11
}
if (t == 11)
	global.interact = 1
if (global.plot == 50 && t == 12)
{
	global.mercy = 0
	global.interact = 1
	if (FL_DogCoupleStatus == DogStatus.Spared || FL_DogCoupleStatus == DogStatus.SparedWithStick)
	{
		global.msg[0] = scr_gettext("obj_forcedright_220")
		global.msg[1] = scr_gettext("obj_forcedright_221")
		if (FL_DogCoupleStatus == DogStatus.SparedWithStick)
		{
			global.msg[0] = scr_gettext("obj_forcedright_224")
			global.msg[1] = scr_gettext("obj_forcedright_225")
		}
		t = 14
		scr_regulartext()
	}
}
if (t == 14 && instance_exists(obj_dialoguer) == false)
{
	vol = 99
	dog1.vspeed = 4
	dog2.vspeed = 4
	alarm[2] = 40
	t = 15
}
if (t == 15)
{
	if (vol < vol1)
	{
		vol += 0.03
		caster_set_volume(global.currentsong, vol)
	}
}
if (t == 16)
{
	global.interact = 0
	global.plot = 51
	instance_destroy()
}
