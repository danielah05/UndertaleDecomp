if (con == 1 && global.interact == 0 && obj_mainchara.x > 400)
{
	al = instance_create((view_xview_get(0) - 40), obj_mainchara.ystart, obj_alphys_npc)
	al.mask_index = spr_alphys_megamask
	al.fun = true
	al.image_speed = 0.2
	al.sprite_index = al.rsprite
	al.hspeed = 2
	con = 2
	alarm[4] = 50
	global.interact = 1
}
if (con == 3)
{
	al.speed = 0
	al.image_speed = 0
	con = 4
	alarm[4] = 60
}
if (con == 5)
{
	FL_AlphysExpression = 1
	global.msc = 0
	global.typer = 47
	global.facechoice = 6
	global.faceemotion = 6
	global.msg[0] = scr_gettext("obj_alphysfollow_event_108")
	global.msg[1] = scr_gettext("obj_alphysfollow_event_109")
	con = 6
	instance_create(0, 0, obj_dialoguer)
}
if (con == 6 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 0
	con = 7
	follow = 1
	nowx = obj_mainchara.x
	nowax = (obj_mainchara.x - al.x)
}
if (follow == 1)
{
	if (al.x <= (obj_mainchara.x - nowax))
	{
		al.x = (obj_mainchara.x - nowax)
		al.image_speed = obj_mainchara.image_speed
	}
	else
		al.image_speed = 0
	if (obj_mainchara.x > 1050)
	{
		follow = 0
		al.image_speed = 0
	}
}
if (con == 7 && obj_mainchara.x > (nowx + 200) && global.interact == 0)
{
	global.interact = 1
	FL_AlphysExpression = 1
	global.msc = 0
	global.typer = 47
	global.faceemotion = 5
	global.facechoice = 6
	global.msg[0] = scr_gettext("obj_alphysfollow_event_148")
	global.msg[1] = scr_gettext("obj_alphysfollow_event_149")
	global.msg[2] = scr_gettext("obj_alphysfollow_event_150")
	con = 8
	instance_create(0, 0, obj_dialoguer)
}
if (con == 8 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 0
	con = 9
	follow = 1
	nowx = obj_mainchara.x
	nowax = (obj_mainchara.x - al.x)
}
if (con == 9 && obj_mainchara.x > (nowx + 200) && global.interact == 0)
{
	global.interact = 1
	FL_AlphysExpression = 1
	global.msc = 0
	global.typer = 47
	global.faceemotion = 4
	global.facechoice = 6
	global.msg[0] = scr_gettext("obj_alphysfollow_event_175")
	global.msg[1] = scr_gettext("obj_alphysfollow_event_176")
	con = 10
	instance_create(0, 0, obj_dialoguer)
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 0
	con = 11
	follow = 1
	nowx = obj_mainchara.x
	nowax = (obj_mainchara.x - al.x)
}
if (con == 50)
{
	con = 51
	alarm[4] = 10
}
if (con == 52)
{
	global.interact = 1
	FL_AlphysExpression = 1
	global.msc = 0
	global.typer = 47
	global.faceemotion = 0
	global.facechoice = 6
	global.msg[0] = scr_gettext("obj_alphysfollow_event_206")
	obj_alphys_npc.sprite_index = spr_alphys_r_sad
	con = 53
	instance_create(0, 0, obj_dialoguer)
}
if (con == 53 && instance_exists(OBJ_WRITER) == false)
{
	global.facing = Direction.Left
	con = 54
	alarm[4] = 30
}
if (con == 55)
{
	obj_alphys_npc.sprite_index = spr_alphys_r
	global.interact = 1
	FL_AlphysExpression = 2
	global.msc = 0
	global.typer = 47
	global.faceemotion = 1
	global.facechoice = 6
	global.msg[0] = scr_gettext("obj_alphysfollow_event_228")
	global.msg[1] = scr_gettext("obj_alphysfollow_event_229")
	global.msg[2] = scr_gettext("obj_alphysfollow_event_230")
	global.msg[3] = scr_gettext("obj_alphysfollow_event_231")
	global.msg[4] = scr_gettext("obj_alphysfollow_event_232")
	global.msg[5] = scr_gettext("obj_alphysfollow_event_233")
	global.msg[6] = scr_gettext("obj_alphysfollow_event_234")
	con = 56
	instance_create(0, 0, obj_dialoguer)
}
if (con == 56 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.stringno == 6)
		al.sprite_index = al.usprite
}
if (con == 56 && instance_exists(OBJ_WRITER) == false)
{
	obj_alphys_npc.sprite_index = spr_alphys_l_sad2
	con = 57
	alarm[4] = 45
}
if (con == 58)
{
	global.interact = 1
	FL_AlphysExpression = 2
	global.msc = 0
	global.typer = 47
	global.faceemotion = 6
	global.facechoice = 6
	global.msg[0] = scr_gettext("obj_alphysfollow_event_262")
	global.msg[1] = scr_gettext("obj_alphysfollow_event_263")
	global.msg[2] = scr_gettext("obj_alphysfollow_event_264")
	global.msg[3] = scr_gettext("obj_alphysfollow_event_265")
	global.msg[4] = scr_gettext("obj_alphysfollow_event_266")
	global.msg[5] = scr_gettext("obj_alphysfollow_event_267")
	obj_alphys_npc.sprite_index = spr_alphys_l_sad2
	con = 59
	instance_create(0, 0, obj_dialoguer)
}
if (con == 59 && instance_exists(OBJ_WRITER) == false)
{
	con = 60
	alarm[4] = 30
}
if (con == 61)
{
	al.sprite_index = spr_alphys_r_sad2
	con = 62
	alarm[4] = 30
}
if (con == 63)
{
	global.interact = 1
	FL_AlphysExpression = 2
	global.msc = 0
	global.typer = 47
	global.faceemotion = 6
	global.facechoice = 6
	global.msg[0] = scr_gettext("obj_alphysfollow_event_295")
	global.msg[1] = scr_gettext("obj_alphysfollow_event_296")
	global.msg[2] = scr_gettext("obj_alphysfollow_event_297")
	obj_alphys_npc.sprite_index = spr_alphys_r_sad2
	con = 64
	instance_create(0, 0, obj_dialoguer)
}
if (con == 64 && instance_exists(OBJ_WRITER) == false)
{
	con = 65
	alarm[4] = 30
}
if (con == 66 && instance_exists(OBJ_WRITER) == false)
{
	obj_alphys_npc.sprite_index = spr_alphys_l_sad2
	follow = 0
	al.image_speed = 0.2
	al.hspeed = -1
	con = 67
	alarm[4] = 40
}
if (con == 68)
{
	al.image_speed = 0
	al.speed = 0
	con = 68.1
	alarm[4] = 60
}
if (con == 69.1)
	con = 69
if (con == 69)
{
	global.interact = 1
	FL_AlphysExpression = 2
	global.msc = 0
	global.typer = 47
	global.faceemotion = 7
	global.facechoice = 6
	global.msg[0] = scr_gettext("obj_alphysfollow_event_345")
	obj_alphys_npc.sprite_index = spr_alphys_l_sad2
	con = 70
	instance_create(0, 0, obj_dialoguer)
}
if (con == 70 && instance_exists(OBJ_WRITER) == false)
{
	al.hspeed = -4
	al.image_speed = 0.3334
	global.facing = Direction.Up
	con = 71
	follow = 0
	global.interact = 0
	FL_AlphysLabLocked = 1
	global.plot = 199
	instance_destroy()
}
