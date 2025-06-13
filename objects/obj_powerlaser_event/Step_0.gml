if (global.interact == 0 && obj_mainchara.x > 200 && con == 0)
{
	global.interact = 1
	con = 10
}
if (con == 10)
{
	snd_play(snd_phone)
	global.msc = 0
	global.msg[0] = scr_gettext("obj_powerlaser_event_178")
	global.msg[1] = scr_gettext("obj_powerlaser_event_179")
	global.msg[2] = scr_gettext("obj_powerlaser_event_180")
	global.msg[3] = scr_gettext("obj_powerlaser_event_181")
	global.msg[4] = scr_gettext("obj_powerlaser_event_182")
	global.msg[5] = scr_gettext("obj_powerlaser_event_183")
	global.msg[6] = scr_gettext("obj_powerlaser_event_184")
	global.msg[7] = scr_gettext("obj_powerlaser_event_185")
	global.msg[8] = scr_gettext("obj_powerlaser_event_186")
	global.msg[9] = scr_gettext("obj_powerlaser_event_187")
	global.msg[10] = scr_gettext("obj_powerlaser_event_188")
	global.msg[11] = scr_gettext("obj_powerlaser_event_189")
	global.msg[12] = scr_gettext("obj_powerlaser_event_190")
	global.msg[13] = scr_gettext("obj_powerlaser_event_191")
	global.msg[14] = scr_gettext("obj_powerlaser_event_192")
	if (FL_GotAlphysAdvice4 == 0)
	{
		global.msg[0] = scr_gettext("obj_powerlaser_event_195")
		global.msg[1] = scr_gettext("obj_powerlaser_event_196")
		global.msg[2] = scr_gettext("obj_powerlaser_event_197")
		global.msg[3] = scr_gettext("obj_powerlaser_event_198")
		global.msg[4] = scr_gettext("obj_powerlaser_event_199")
		global.msg[5] = scr_gettext("obj_powerlaser_event_200")
		global.msg[6] = scr_gettext("obj_powerlaser_event_201")
		global.msg[7] = scr_gettext("obj_powerlaser_event_202")
		global.msg[8] = scr_gettext("obj_powerlaser_event_203")
		global.msg[9] = scr_gettext("obj_powerlaser_event_204")
		global.msg[10] = scr_gettext("obj_powerlaser_event_205")
		global.msg[11] = scr_gettext("obj_powerlaser_event_206")
		global.msg[12] = scr_gettext("obj_powerlaser_event_207")
		global.msg[13] = scr_gettext("obj_powerlaser_event_208")
		global.msg[14] = scr_gettext("obj_powerlaser_event_209")
		global.msg[15] = scr_gettext("obj_powerlaser_event_210")
	}
	scr_regulartext()
	con = 11
}
if (con == 11 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.stringno == 12 && powered == 0)
		event_user(1)
}
if (con == 11 && instance_exists(OBJ_WRITER) == false)
{
	ff = instance_create(20, 80, obj_kitchenforcefield)
	ff.image_yscale = 5
	con = 12
	global.interact = 0
}
if (con == 12 && obj_mainchara.x > 580 && global.interact == 0)
{
	global.interact = 1
	con = 13
}
if (con == 13)
{
	snd_play(snd_phone)
	global.msc = 0
	global.msg[0] = scr_gettext("obj_powerlaser_event_244")
	global.msg[1] = scr_gettext("obj_powerlaser_event_245")
	global.msg[2] = scr_gettext("obj_powerlaser_event_246")
	scr_regulartext()
	con = 14
}
if (con == 14 && instance_exists(OBJ_WRITER) == false)
{
	event_user(2)
	con = 15
	alarm[4] = 45
}
if (con == 16)
{
	global.msc = 0
	global.msg[0] = scr_gettext("obj_powerlaser_event_264")
	global.msg[1] = scr_gettext("obj_powerlaser_event_265")
	global.msg[2] = scr_gettext("obj_powerlaser_event_266")
	global.msg[3] = scr_gettext("obj_powerlaser_event_267")
	global.msg[4] = scr_gettext("obj_powerlaser_event_268")
	global.msg[5] = scr_gettext("obj_powerlaser_event_269")
	global.msg[6] = scr_gettext("obj_powerlaser_event_270")
	global.msg[7] = scr_gettext("obj_powerlaser_event_271")
	instance_create(0, 0, obj_dialoguer)
	con = 17
}
if (con == 17 && instance_exists(OBJ_WRITER) == false)
{
	remhp = global.hp
	global.interact = 0
	flasher = 0
	event_user(1)
	con = 18
	alarm[3] = 37
	backuptimer = 10
}
if (con == 18)
{
	if (alarm[3] == -1)
		backuptimer -= 1
	else
		backuptimer = 8
	if (backuptimer < 0)
		alarm[3] = 37
}
if (con == 18)
{
	if (global.hp < remhp && hptalk == 0)
	{
		snd_play(snd_phone)
		global.msc = 0
		global.msg[0] = scr_gettext("obj_powerlaser_event_304")
		global.msg[1] = scr_gettext("obj_powerlaser_event_305")
		global.msg[2] = scr_gettext("obj_powerlaser_event_306")
		global.msg[3] = scr_gettext("obj_powerlaser_event_307")
		global.msg[4] = scr_gettext("obj_powerlaser_event_308")
		global.msg[5] = scr_gettext("obj_powerlaser_event_309")
		global.msg[6] = scr_gettext("obj_powerlaser_event_310")
		con = 19
		hptalk = 1
		scr_regulartext()
		global.interact = 1
	}
}
if (con == 19 && hptalk == 1)
	global.interact = 1
if (con == 19 && instance_exists(OBJ_WRITER) == false && hptalk == 1)
{
	hptalk = 2
	global.interact = 0
	con = 18
}
if (con == 18 && obj_mainchara.x > 1040)
{
	global.interact = 1
	con = 22
}
if (con == 22)
{
	snd_play(snd_phone)
	global.msc = 0
	global.msg[0] = scr_gettext("obj_powerlaser_event_341")
	global.msg[1] = scr_gettext("obj_powerlaser_event_342")
	global.msg[2] = scr_gettext("obj_powerlaser_event_343")
	global.msg[3] = scr_gettext("obj_powerlaser_event_344")
	global.msg[4] = scr_gettext("obj_powerlaser_event_345")
	global.msg[5] = scr_gettext("obj_powerlaser_event_346")
	con = 23
	hptalk = 1
	scr_regulartext()
	alarm[3] = -1
	powered = 0
	drawblack = 0
	obj_bluelaser_o.active = 2
	with (obj_kitchenforcefield)
		instance_destroy()
	instance_create(60, 120, obj_stalkerflowey)
	global.plot = 184
}
if (con == 23 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 0
	con = 24
	instance_destroy()
}
