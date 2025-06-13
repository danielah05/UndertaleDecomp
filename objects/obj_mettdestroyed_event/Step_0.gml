if (con == 1)
{
	with (obj_npc_marker)
		visible = false
	with (brokemett)
		visible = true
	view_yview_set(0, (view_yview_get(0) + 20))
	con = 2
	alarm[4] = 50
}
if (con == 2)
	global.interact = 1
if (con == 3)
{
	snd_play(snd_spearappear)
	con = 3.1
	alarm[4] = 45
}
if (con == 4.1)
	con = 4
if (con == 4)
{
	global.facechoice = 6
	global.typer = 47
	global.msc = 0
	global.faceemotion = 6
	global.msg[0] = scr_gettext("obj_mettdestroyed_event_169")
	instance_create(0, 0, obj_dialoguer)
	con = 5
}
if (con == 5 && instance_exists(OBJ_WRITER) == false)
{
	al = instance_create((obj_mainchara.x + 40), (obj_mainchara.y + 75), obj_alphys_npc)
	al.sprite_index = al.usprite
	al.vspeed = -3
	al.fun = true
	al.image_speed = 0.25
	con = 6
	alarm[4] = 25
}
if (con == 7)
{
	al.speed = 0
	al.image_speed = 0
	con = 8
	alarm[4] = 30
}
if (con == 9)
{
	FL_AlphysExpression = 1
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_mettdestroyed_event_197")
	con = 10
	instance_create(0, 0, obj_dialoguer)
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
	al.vspeed = -3.5
	al.hspeed = -4
	al.image_speed = 0.334
	con = 11
	alarm[4] = 10
}
if (con == 12)
{
	al.speed = 0
	al.image_speed = 0
	con = 13
	alarm[4] = 30
}
if (con == 14)
{
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_mettdestroyed_event_222")
	global.msg[1] = scr_gettext("obj_mettdestroyed_event_223")
	con = 15
	instance_create(0, 0, obj_dialoguer)
}
if (con == 15 && instance_exists(OBJ_WRITER) == false)
{
	con = 16
	alarm[4] = 80
}
if (con == 17)
{
	con = 18
	al.sprite_index = al.rsprite
	alarm[4] = 50
}
if (con == 19)
{
	global.faceemotion = 6
	global.msg[0] = scr_gettext("obj_mettdestroyed_event_244")
	global.msg[1] = scr_gettext("obj_mettdestroyed_event_245")
	global.msg[2] = scr_gettext("obj_mettdestroyed_event_246")
	global.msg[3] = scr_gettext("obj_mettdestroyed_event_247")
	global.msg[4] = scr_gettext("obj_mettdestroyed_event_248")
	global.msg[5] = scr_gettext("obj_mettdestroyed_event_249")
	if (FL_KilledMettaton == 0)
	{
		global.faceemotion = 4
		global.msg[0] = scr_gettext("obj_mettdestroyed_event_254")
		global.msg[1] = scr_gettext("obj_mettdestroyed_event_255")
		global.msg[2] = scr_gettext("obj_mettdestroyed_event_256")
		global.msg[3] = scr_gettext("obj_mettdestroyed_event_257")
		global.msg[4] = scr_gettext("obj_mettdestroyed_event_258")
		global.msg[5] = scr_gettext("obj_mettdestroyed_event_259")
		global.msg[6] = scr_gettext("obj_mettdestroyed_event_260")
		global.msg[7] = scr_gettext("obj_mettdestroyed_event_261")
	}
	con = 20
	instance_create(0, 0, obj_dialoguer)
}
if (con == 20 && instance_exists(OBJ_WRITER) == false)
{
	al.sprite_index = al.utsprite
	view_target_set(0, obj_mainchara)
	obj_mainchara.cutscene = true
	con = 21
	alarm[4] = 30
}
if (con == 21)
	view_yview_set(0, (view_yview_get(0) + 2))
if (con == 22)
{
	obj_mainchara.cutscene = false
	global.plot = 193
	al2 = instance_create(al.x, al.y, obj_alphys_npc)
	al2.sprite_index = al.utsprite
	al2.fun = true
	with (al)
		instance_destroy()
	con = 27
	global.interact = 0
}
