if (con > 0)
{
	if (con == 1)
	{
		if instance_exists(OBJ_WRITER)
		{
			with (OBJ_WRITER)
				instance_destroy()
		}
		global.myfight = 2
		global.mnfight = 9
	}
	if (con == 2)
	{
		bull = 1
		obj_aaronbody.bull = 1
		obj_aaronbody.sprite_index = spr_aaronbody_bull
		aaron = obj_aaron
		con = 3
		alarm[4] = 45
	}
	if (con == 4)
	{
		global.typer = 33
		global.msc = 0
		global.msg[0] = scr_gettext("obj_woshbody_221")
		scr_blcon((x + 80), y, 0)
		con = 5
	}
	if (con == 5 && instance_exists(OBJ_WRITER) == false)
	{
		global.msg[0] = scr_gettext("obj_woshbody_228")
		with (aaron)
			scr_blcon((x + 80), y, 0)
		obj_aaronbody.shake = 2
		con = 6
	}
	if (con == 6 && instance_exists(OBJ_WRITER) == false)
	{
		global.msg[0] = scr_gettext("obj_woshbody_236")
		scr_blcon((x + 80), y, 0)
		con = 7
	}
	if (con == 7 && instance_exists(OBJ_WRITER) == false)
	{
		global.msg[0] = scr_gettext("obj_woshbody_243")
		with (aaron)
			scr_blcon((x + 80), y, 0)
		obj_aaronbody.shake = 2
		con = 8
	}
	if (con == 8 && instance_exists(OBJ_WRITER) == false)
	{
		global.msg[0] = scr_gettext("obj_woshbody_251")
		scr_blcon((x + 80), y, 0)
		con = 9
	}
	if (con == 9 && instance_exists(OBJ_WRITER) == false)
	{
		global.msg[0] = scr_gettext("obj_woshbody_258")
		with (aaron)
			scr_blcon((x + 100), y, 0)
		obj_aaronbody.shake = 3
		con = 10
	}
	if (con == 10 && instance_exists(OBJ_WRITER) == false)
	{
		global.msg[0] = scr_gettext("obj_woshbody_266")
		global.msg[1] = scr_gettext("obj_woshbody_267")
		scr_blcon((x + 80), y, 0)
		con = 11
	}
	if (con == 11 && instance_exists(OBJ_WRITER) == false)
	{
		hspeed = 4
		global.msg[0] = scr_gettext("obj_woshbody_275")
		global.msg[1] = scr_gettext("obj_woshbody_276")
		global.msg[2] = scr_gettext("obj_woshbody_277")
		obj_aaronbody.shake = 3
		with (aaron)
			scr_blcon((x + 80), y, 0)
		con = 13
	}
	if (con == 13 && instance_exists(OBJ_WRITER) == false)
	{
		obj_aaronbody.vspeed = -8
		global.msg[0] = scr_gettext("obj_woshbody_286")
		obj_aaronbody.shake = 0
		with (aaron)
			scr_blcon((x + 80), y, 0)
		con = 14
		alarm[4] = 90
	}
	if (con == 15)
	{
		FL_AaronWoshuaEvent = 1
		instance_create(0, 0, obj_unfader)
		con = 16
		alarm[4] = 8
	}
	if (con == 17)
		room_goto(global.currentroom)
}
