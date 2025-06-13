if (con == 1.1)
{
	global.msc = 0
	global.typer = 91
	SCR_TEXTTYPE(global.typer)
	global.msg[0] = scr_gettext("obj_friendc_event_115")
	global.msg[1] = scr_gettext("obj_friendc_event_116")
	global.msg[2] = scr_gettext("obj_friendc_event_117")
	wrwr = instance_create(40, 140, OBJ_WRITER)
	wrwr.depth = -12000
	con = 1.9
	obj_mainchara.x = 140
	obj_mainchara.y = 125
	global.facing = Direction.Left
	obj_mainchara.visible = false
	mc = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_mainchara_lie)
	mc.visible = false
}
if (con == 1.9 && instance_exists(OBJ_WRITER))
{
	obj_mainchara.x = 140
	obj_mainchara.y = 125
	global.facing = Direction.Down
	obj_mainchara.visible = false
	global.interact = 1
}
if (con == 1.9 && instance_exists(OBJ_WRITER) == false)
{
	con = 1.8
	alarm[4] = 70
}
if (con == 2.8)
	con = 2
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
	mc.visible = true
	caster_loop(global.currentsong, 1, 0.95)
	d_blk = 2
	con = 4
	alarm[4] = 130
}
if (con == 5)
{
	obj_mainchara.visible = true
	with (mc)
		instance_destroy()
	con = 6
	alarm[4] = 60
}
if (con == 7)
{
	global.facing = Direction.Up
	con = 8
	alarm[4] = 50
}
if (con == 9)
{
	global.typer = 4
	global.msc = 0
	global.facechoice = 1
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_friendc_event_181")
	scr_alface(1, 9)
	global.msg[2] = scr_gettext("obj_friendc_event_183")
	global.msg[3] = scr_gettext("obj_friendc_event_184")
	scr_undface(4, 9)
	global.msg[5] = scr_gettext("obj_friendc_event_186")
	global.msg[6] = scr_gettext("obj_friendc_event_187")
	scr_sansface(7, 1)
	global.msg[8] = scr_gettext("obj_friendc_event_189")
	scr_papface(9, 1)
	global.msg[10] = scr_gettext("obj_friendc_event_191")
	global.msg[11] = scr_gettext("obj_friendc_event_192")
	scr_sansface(12, 1)
	global.msg[13] = scr_gettext("obj_friendc_event_194")
	scr_papface(14, 8)
	global.msg[15] = scr_gettext("obj_friendc_event_196")
	scr_asgface(16, 0)
	global.msg[17] = scr_gettext("obj_friendc_event_198")
	global.msg[18] = scr_gettext("obj_friendc_event_199")
	global.msg[19] = scr_gettext("obj_friendc_event_200")
	global.msg[20] = scr_gettext("obj_friendc_event_201")
	scr_torface(21, 1)
	global.msg[22] = scr_gettext("obj_friendc_event_203")
	global.msg[23] = scr_gettext("obj_friendc_event_204")
	global.msg[24] = scr_gettext("obj_friendc_event_205")
	global.msg[25] = scr_gettext("obj_friendc_event_206")
	global.msg[26] = scr_gettext("obj_friendc_event_207")
	global.msg[27] = scr_gettext("obj_friendc_event_208")
	global.msg[28] = scr_gettext("obj_friendc_event_209")
	global.msg[29] = scr_gettext("obj_friendc_event_210")
	global.msg[30] = scr_gettext("obj_friendc_event_211")
	global.msg[31] = scr_gettext("obj_friendc_event_212")
	global.msg[32] = scr_gettext("obj_friendc_event_213")
	global.msg[33] = scr_gettext("obj_friendc_event_214")
	dd = instance_create(0, 0, obj_dialoguer)
	dd.side = 1
	con = 10
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
	with (obj_toriel_friendc)
		direction = 270
	with (obj_sans_friendc)
		direction = 270
	with (obj_asgore_friendc)
		direction = 270
	with (obj_alphys_friendc)
		direction = 270
	global.interact = 0
	FL_PlotOver = 2
	con = 11
	global.filechoice = 0
	scr_save()
}
if (d_blk == 1)
{
	draw_set_color(c_black)
	ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (d_blk == 2)
{
	blk -= 0.01
	if (blk <= 0)
	{
		blk = 0
		d_blk = 0
	}
	draw_set_color(c_black)
	draw_set_alpha(blk)
	ossafe_fill_rectangle(-10, -10, 999, 999)
	draw_set_alpha(1)
	global.screen_border_alpha = (1 - blk)
}
