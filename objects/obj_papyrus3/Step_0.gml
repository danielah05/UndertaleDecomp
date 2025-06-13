if (conversation == 1)
{
	fade = instance_create(0, 0, obj_musfadeout)
	fade.fadespeed = 0.5
	global.currentsong = caster_load("music/papyrus.ogg")
	caster_loop(global.currentsong, 0.6, 1)
	myinteract = 3
	global.msc = 0
	global.typer = 19
	global.facechoice = 4
	global.faceemotion = 0
	global.interact = 1
	papyrus.sprite_index = papyrus.ltsprite
	sans.sprite_index = sans.ltsprite
	global.msg[0] = scr_gettext("obj_papyrus3_177")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 2
}
if (conversation == 2 && instance_exists(OBJ_WRITER) == false)
{
	conversation = 3
	xxblcon = instance_create((papyrus.x + 3), (papyrus.y - 12), obj_cosmeticblcon)
	alarm[0] = 45
}
if (conversation == 4)
{
	global.msc = 0
	global.typer = 19
	global.facechoice = 4
	global.faceemotion = 1
	global.interact = 1
	papyrus.sprite_index = spr_papyrus_lt_mad
	global.msg[0] = scr_gettext("obj_papyrus3_200")
	scr_sansface(1, 0)
	global.msg[2] = scr_gettext("obj_papyrus3_202")
	global.msg[3] = scr_gettext("obj_papyrus3_203")
	if (murder == 1)
		global.msg[3] = scr_gettext("obj_papyrus3_206")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 6
}
if (conversation == 6 && instance_exists(OBJ_WRITER) == false)
{
	instance_create(10, 0, obj_puzzlewall2)
	papyrus.sprite_index = papyrus.ltsprite
	sans.sprite_index = sans.ltsprite
	obj_mainchara.cutscene = true
	view_target_set(0, noone)
	conversation = 7
	x = 220
	global.interact = 0
	solid = 0
}
if (conversation == 8 && instance_exists(OBJ_WRITER) == false)
	conversation = 22
if (conversation == 22)
{
	global.interact = 1
	global.msc = 228
	global.faceemotion = 1
	global.facechoice = 4
	global.typer = 19
	if (murder == 1)
	{
		global.msc = 0
		if (FL_InteractedWithCrossword == 1)
		{
			global.msg[0] = scr_gettext("obj_papyrus3_245")
			scr_sansface(1, 2)
			global.msg[2] = scr_gettext("obj_papyrus3_247")
			scr_papface(3, 4)
			global.msg[4] = scr_gettext("obj_papyrus3_249")
			global.msg[5] = scr_gettext("obj_papyrus3_250")
		}
		else
		{
			global.msg[0] = scr_gettext("obj_papyrus3_254")
			scr_sansface(1, 1)
			global.msg[2] = scr_gettext("obj_papyrus3_256")
			global.msg[3] = scr_gettext("obj_papyrus3_257")
			scr_papface(4, 4)
			global.msg[5] = scr_gettext("obj_papyrus3_259")
			global.msg[6] = scr_gettext("obj_papyrus3_260")
		}
	}
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 23
}
if (conversation == 23 && instance_exists(OBJ_WRITER) == false)
{
	papyrus.hspeed = 5
	papyrus.fun = true
	papyrus.sprite_index = papyrus.rsprite
	papyrus.image_speed = 0.25
	hhh = instance_create(0, 0, obj_musfadeout)
	hhh.fadespeed = 0.05
	alarm[1] = 30
	conversation = 24
}
if (conversation == 25)
{
	global.currentsong = caster_load("music/snowy.ogg")
	caster_loop(global.currentsong, 1, 0.95)
	global.plot = 47
	global.interact = 0
	if instance_exists(obj_puzzlewall2)
	{
		with (obj_puzzlewall2)
			instance_destroy()
	}
	instance_create(sans.x, sans.y, obj_sans_room)
	with (sans)
		instance_destroy()
	with (papyrus)
		instance_destroy()
	instance_destroy()
}
