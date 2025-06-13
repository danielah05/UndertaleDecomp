if (con == 5)
{
	global.interact = 1
	caster_pause(global.currentsong)
	snd_play(snd_noise)
	con = 6
	alarm[4] = 60
}
if (con == 6)
	global.interact = 1
if (con == 7)
{
	global.facing = Direction.Down
	dis = caster_load("music/sfx_disturbing.ogg")
	caster_loop(dis, 0.4, 0.8)
	tr = caster_load("music/sfx_generate.ogg")
	am[0] = scr_marker(60, 280, spr_amalgam_sinkless1)
	am[0].image_speed = 0.1
	am[1] = scr_marker(120, 280, spr_amalgam_sinkless1)
	am[1].image_speed = 0.1
	am[2] = scr_marker(160, 280, spr_amalgam_sinkless1)
	am[2].image_speed = 0.1
	am[3] = scr_marker(220, 280, spr_amalgam_sinkless1)
	am[3].image_speed = 0.1
	con = 8
	alarm[9] = 30
	alarm[4] = 350
}
if (con == 9)
{
	caster_stop(dis)
	i = 0
	repeat (4)
	{
		am[i].vspeed = 0
		am[i].sprite_index = spr_amalgam_sinkless2
		i += 1
	}
	alarm[9] = -1
	alarm[10] = -1
	global.facechoice = 0
	global.faceemotion = 0
	global.msc = 0
	global.typer = 47
	global.msg[0] = scr_gettext("obj_lab_powerswitch_218")
	instance_create(0, 0, obj_dialoguer)
	con = 10
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
	con = 11
	alarm[4] = 20
	al = instance_create(140, 280, obj_alphys_actor)
	al.direction = 90
	al.sprite_index = al.usprite
	al.vspeed = -6
	am[1].hspeed = -1
	am[2].hspeed = 1
}
if (con == 12)
{
	i = 0
	repeat (4)
	{
		am[i].sprite_index = spr_amalgam_sinkless3
		i += 1
	}
	al.vspeed = 0
	al.fun = true
	al.sprite_index = al.utsprite
	al.image_speed = 0
	am[1].hspeed = 0
	am[2].hspeed = 0
	con = 13
	alarm[4] = 15
}
if (con == 14)
{
	global.facechoice = 6
	global.faceemotion = 6
	FL_AlphysExpression = 3
	global.msg[0] = scr_gettext("obj_lab_powerswitch_258")
	d = instance_create(0, 0, obj_dialoguer)
	d.side = 0
	con = 15
}
if (instance_exists(OBJ_WRITER) == false && con == 15)
{
	i = 0
	repeat (4)
	{
		am[i].sprite_index = spr_amalgam_sinkless1
		am[i].vspeed = 3
		i += 1
	}
	con = 16
}
if (con == 16)
{
	if (am[0].y > (view_yview_get(0) + 300))
	{
		con = 20
		i = 0
		repeat (4)
		{
			am[i].sprite_index = spr_amalgam_sinkless1
			am[i].vspeed = 0
			i += 1
		}
	}
}
if (con == 20)
{
	global.msg[0] = scr_gettext("obj_lab_powerswitch_294")
	global.msg[1] = scr_gettext("obj_lab_powerswitch_295")
	global.msg[2] = scr_gettext("obj_lab_powerswitch_296")
	if (FL_PopatoChispsBoughtCounter > 0)
		global.msg[2] = scr_gettext("obj_lab_powerswitch_299")
	global.msg[3] = scr_gettext("obj_lab_powerswitch_301")
	global.msg[4] = scr_gettext("obj_lab_powerswitch_302")
	global.msg[5] = scr_gettext("obj_lab_powerswitch_303")
	global.msg[6] = scr_gettext("obj_lab_powerswitch_304")
	global.msg[7] = scr_gettext("obj_lab_powerswitch_305")
	global.msg[8] = scr_gettext("obj_lab_powerswitch_306")
	global.msg[9] = scr_gettext("obj_lab_powerswitch_307")
	global.msg[10] = scr_gettext("obj_lab_powerswitch_308")
	global.msg[11] = scr_gettext("obj_lab_powerswitch_309")
	global.msg[12] = scr_gettext("obj_lab_powerswitch_310")
	global.msg[13] = scr_gettext("obj_lab_powerswitch_311")
	global.msg[14] = scr_gettext("obj_lab_powerswitch_312")
	global.msg[15] = scr_gettext("obj_lab_powerswitch_313")
	global.msg[16] = scr_gettext("obj_lab_powerswitch_314")
	global.msg[17] = scr_gettext("obj_lab_powerswitch_315")
	global.msg[18] = scr_gettext("obj_lab_powerswitch_316")
	global.msg[19] = scr_gettext("obj_lab_powerswitch_317")
	global.msg[20] = scr_gettext("obj_lab_powerswitch_318")
	global.msg[21] = scr_gettext("obj_lab_powerswitch_319")
	global.msg[22] = scr_gettext("obj_lab_powerswitch_320")
	global.msg[23] = scr_gettext("obj_lab_powerswitch_321")
	global.msg[24] = scr_gettext("obj_lab_powerswitch_322")
	global.msg[25] = scr_gettext("obj_lab_powerswitch_323")
	global.msg[26] = scr_gettext("obj_lab_powerswitch_324")
	global.msg[27] = scr_gettext("obj_lab_powerswitch_325")
	global.msg[28] = scr_gettext("obj_lab_powerswitch_326")
	global.msg[29] = scr_gettext("obj_lab_powerswitch_327")
	global.msg[30] = scr_gettext("obj_lab_powerswitch_328")
	global.msg[31] = scr_gettext("obj_lab_powerswitch_329")
	global.msg[32] = scr_gettext("obj_lab_powerswitch_330")
	global.msg[33] = scr_gettext("obj_lab_powerswitch_331")
	global.msg[34] = scr_gettext("obj_lab_powerswitch_332")
	global.msg[35] = scr_gettext("obj_lab_powerswitch_333")
	global.msg[36] = scr_gettext("obj_lab_powerswitch_335")
	global.msg[37] = scr_gettext("obj_lab_powerswitch_336")
	global.msg[38] = scr_gettext("obj_lab_powerswitch_337")
	global.msg[39] = scr_gettext("obj_lab_powerswitch_338")
	global.msg[40] = scr_gettext("obj_lab_powerswitch_339")
	global.msg[41] = scr_gettext("obj_lab_powerswitch_340")
	global.msg[42] = scr_gettext("obj_lab_powerswitch_341")
	con = 21
	d = instance_create(0, 0, obj_dialoguer)
	d.side = 0
}
if (con == 21 && instance_exists(OBJ_WRITER))
{
	sn = OBJ_WRITER.stringno
	if (sn == 0)
		al.sprite_index = al.rtsprite
	if (sn == 1 || sn == 3 || sn == 6 || sn == 9 || sn == 19)
		al.sprite_index = al.utsprite
	if (sn == 2 || sn == 5)
		al.sprite_index = al.rtsprite
	if (sn == 8 || sn == 13)
		al.sprite_index = spr_alphys_r_sad
}
if (con == 21 && instance_exists(OBJ_WRITER) == false)
{
	i = 0
	repeat (4)
	{
		am[i].sprite_index = spr_amalgam_sinkless1
		am[i].vspeed = -3
		i += 1
	}
	con = 22
	alarm[4] = 30
}
if (con == 23)
{
	i = 0
	repeat (4)
	{
		am[i].sprite_index = spr_amalgam_sinkless1
		am[i].image_speed = 0
		am[i].vspeed = 0
		i += 1
	}
	al.sprite_index = al.dtsprite
	con = 24
	alarm[4] = 30
}
if (con == 25)
{
	global.msg[0] = scr_gettext("obj_lab_powerswitch_406")
	global.msg[1] = scr_gettext("obj_lab_powerswitch_407")
	ds = instance_create(0, 0, obj_dialoguer)
	ds.side = 0
	con = 26
}
if (con == 26 && instance_exists(OBJ_WRITER) == false)
{
	al.vspeed = 3
	al.sprite_index = al.dsprite
	al.image_speed = 0.25
	i = 0
	repeat (4)
	{
		am[i].sprite_index = spr_amalgam_sinkless1
		am[i].image_speed = 0.25
		am[i].vspeed = 3
		i += 1
	}
	con = 27
	alarm[4] = 60
}
if (con == 28)
{
	with (obj_mainchara)
		uncan = 0
	global.interact = 0
	FL_AlphysExpression = 0
	FL_PowerSwitchAmalgamEvent = 1
	FL_DatedAlphys = 12
	FL_UnlockedNewHomeLatch = 1
	if (global.plot < 201)
		global.plot = 201
	con = 0
	caster_resume(global.currentsong)
}
