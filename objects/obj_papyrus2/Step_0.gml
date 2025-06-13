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
	global.faceemotion = 1
	global.interact = 1
	global.msg[0] = scr_gettext("obj_papyrus2_201")
	global.msg[1] = scr_gettext("obj_papyrus2_202")
	scr_sansface(2, 0)
	global.msg[3] = scr_gettext("obj_papyrus2_204")
	global.msg[4] = scr_gettext("obj_papyrus2_205")
	scr_papface(5, 1)
	global.msg[6] = scr_gettext("obj_papyrus2_207")
	ossafe_ini_open("undertale.ini")
	M1 = ini_read_real("Papyrus", "M1", 0)
	ossafe_ini_close()
	if (M1 > 1)
	{
		global.msg[0] = scr_gettext("obj_papyrus2_213")
		global.msg[1] = scr_gettext("obj_papyrus2_214")
		scr_sansface(2, 0)
		global.msg[3] = scr_gettext("obj_papyrus2_216")
		global.msg[4] = scr_gettext("obj_papyrus2_217")
		scr_papface(5, 0)
		global.msg[6] = scr_gettext("obj_papyrus2_219")
		global.msg[7] = scr_gettext("obj_papyrus2_220")
		global.msg[8] = scr_gettext("obj_papyrus2_221")
		global.msg[9] = scr_gettext("obj_papyrus2_222")
		global.msg[10] = scr_gettext("obj_papyrus2_223")
	}
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 2
}
if (conversation == 2 && instance_exists(OBJ_WRITER) == false)
{
	conversation = 3
	papyrus.sprite_index = papyrus.ltsprite
	sans.sprite_index = sans.ltsprite
	xxblcon = instance_create((papyrus.x + 3), (papyrus.y - 12), obj_cosmeticblcon)
	alarm[0] = 45
	if (murder == 1)
	{
		alarm[0] = -1
		alarm[3] = 45
		x = 400
		conversation = 49
	}
}
if (conversation == 4)
{
	global.msc = 0
	global.typer = 19
	global.facechoice = 4
	global.faceemotion = 0
	global.interact = 1
	global.msg[0] = scr_gettext("obj_papyrus2_256")
	if (M1 > 1)
		global.msg[0] = scr_gettext("obj_papyrus2_259")
	global.msg[1] = scr_gettext("obj_papyrus2_261")
	global.msg[2] = scr_gettext("obj_papyrus2_262")
	global.msg[3] = scr_gettext("obj_papyrus2_263")
	global.msg[4] = scr_gettext("obj_papyrus2_264")
	global.msg[5] = scr_gettext("obj_papyrus2_265")
	global.msg[6] = scr_gettext("obj_papyrus2_266")
	global.msg[7] = scr_gettext("obj_papyrus2_267")
	global.msg[8] = scr_gettext("obj_papyrus2_268")
	global.msg[9] = scr_gettext("obj_papyrus2_269")
	global.msg[10] = scr_gettext("obj_papyrus2_270")
	global.msg[11] = scr_gettext("obj_papyrus2_271")
	global.msg[12] = scr_gettext("obj_papyrus2_272")
	global.msg[13] = scr_gettext("obj_papyrus2_273")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 6
}
if (conversation == 6 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.stringno > 7)
		papyrus.sprite_index = spr_papyrus_orb
}
if (conversation == 6 && instance_exists(OBJ_WRITER) == false)
{
	instance_create(10, 0, obj_puzzlewall1)
	papyrus.sprite_index = papyrus.ltsprite
	sans.sprite_index = sans.ltsprite
	obj_mainchara.cutscene = true
	view_target_set(0, noone)
	conversation = 7
	x += 20
	global.interact = 0
	solid = 0
}
if (conversation == 8 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 1
	conversation = 9
	papyrus.fun = true
	snd_play(snd_shock)
	papyrus.sprite_index = spr_papyrus_electrocute
	papyrus.image_speed = 0.5
	alarm[1] = 30
}
if (conversation == 9)
{
	ggg = floor((random(6) - 2))
	papyrus.x = (papyrus.xstart + ggg)
	ggg = floor((random(6) - 2))
	papyrus.y = (papyrus.ystart + ggg)
}
if (conversation == 10)
{
	papyrus.x = papyrus.xstart
	papyrus.y = papyrus.ystart
	papyrus.sprite_index = spr_papyrus_toasted
	papyrus.image_speed = 0.2
	alarm[1] = 60
	conversation = 11
}
if (conversation == 12)
{
	sans.sprite_index = sans.dtsprite
	papyrus.sprite_index = spr_papyrus_mad1
	papyrus.image_speed = 0.33334
	global.faceemotion = 1
	global.typer = 19
	global.msc = 0
	global.msg[0] = scr_gettext("obj_papyrus2_334")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 13
}
if (conversation == 13 && instance_exists(OBJ_WRITER) == false)
{
	papyrus.fun = false
	papyrus.sprite_index = papyrus.utsprite
	papyrus.image_speed = 0
	global.faceemotion = 1
	global.facechoice = 3
	global.typer = 17
	global.msg[0] = scr_gettext("obj_papyrus2_347")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 14
}
if (conversation == 14 && instance_exists(OBJ_WRITER) == false)
{
	papyrus.sprite_index = papyrus.ltsprite
	papyrus.image_speed = 0
	global.faceemotion = 0
	global.facechoice = 4
	global.typer = 19
	global.msg[0] = scr_gettext("obj_papyrus2_359")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 15
}
if (conversation == 15 && instance_exists(OBJ_WRITER) == false)
{
	sans.sprite_index = sans.ltsprite
	papyrus.npcdir = 1
	papyrus.image_index = 0
	papyrus.image_speed = 0.2
	crunchybunchy = 0
	with (papyrus)
		path_start(path_papyrus1, 2, path_action_stop, 0)
	conversation = 16
}
if (conversation == 16 && instance_exists(obj_papyrus_actor))
{
	stepmake = 0
	crunchybunchy += 0.5
	if (crunchybunchy == 1)
		stepmake = 1
	if (crunchybunchy == 3)
		stepmake = 1
	if (crunchybunchy == 4)
		crunchybunchy = 0
	if (stepmake == 1)
	{
		if (papyrus.x < (papyrus.xstart - 10))
			instance_create(papyrus.x, papyrus.y, obj_papyrussteps)
	}
}
if (conversation == 16 && instance_exists(obj_papyrus_actor))
{
	if (papyrus.path_position == 1)
	{
		papyrus.npcdir = 0
		papyrus.sprite_index = spr_papyrus_orb
		global.msg[0] = scr_gettext("obj_papyrus2_396")
		mydialoguer = instance_create(0, 0, obj_dialoguer)
		conversation = 16.5
	}
}
if (conversation == 16.5 && instance_exists(OBJ_WRITER) == false)
{
	alarm[1] = 30
	papyrus.sprite_index = spr_papyrus_orbtoss
	instance_create((papyrus.x + 1), (papyrus.y + 1), obj_orbhead)
	conversation = 17
}
if (conversation == 18)
{
	papyrus.npcdir = 1
	papyrus.image_speed = 0.2
	with (papyrus)
		path_start(path_papyrus1A, 5, path_action_stop, 0)
	conversation = 19
}
if (conversation == 19 && instance_exists(obj_papyrus_actor))
{
	if (papyrus.path_position == 1)
	{
		papyrus.npcdir = 0
		alarm[1] = 30
		conversation = 20
		papyrus.sprite_index = papyrus.ltsprite
		papyrus.image_speed = 0
		global.faceemotion = 0
		global.facechoice = 4
		global.typer = 19
		global.msg[0] = scr_gettext("obj_papyrus2_430")
		mydialoguer = instance_create(0, 0, obj_dialoguer)
		conversation = 20
	}
}
if (conversation == 20 && instance_exists(OBJ_WRITER) == false)
{
	x = 248
	global.interact = 0
	conversation = 21
}
if (conversation == 22)
{
	global.interact = 1
	global.msc = 0
	papyrus.sprite_index = papyrus.dtsprite
	sans.sprite_index = sans.dtsprite
	global.faceemotion = 0
	global.facechoice = 4
	global.typer = 19
	global.msg[0] = scr_gettext("obj_papyrus2_452")
	global.msg[1] = scr_gettext("obj_papyrus2_453")
	global.msg[2] = scr_gettext("obj_papyrus2_454")
	global.msg[3] = scr_gettext("obj_papyrus2_455")
	global.msg[4] = scr_gettext("obj_papyrus2_456")
	global.msg[5] = scr_gettext("obj_papyrus2_457")
	global.msg[6] = scr_gettext("obj_papyrus2_458")
	global.msg[7] = scr_gettext("obj_papyrus2_459")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 23
}
if (conversation == 23)
	global.interact = 1
if (conversation == 23 && instance_exists(OBJ_WRITER) == false)
{
	if instance_exists(obj_orbhead)
	{
		with (obj_orbhead)
			instance_destroy()
	}
	with (obj_shockblock)
		instance_destroy()
	papyrus.hspeed = 5
	papyrus.sprite_index = papyrus.lsprite
	papyrus.image_speed = 0.2
	hhh = instance_create(0, 0, obj_musfadeout)
	hhh.fadespeed = 0.05
	alarm[1] = 30
	conversation = 24
}
if (conversation == 25)
{
	global.currentsong = caster_load("music/snowy.ogg")
	caster_loop(global.currentsong, 1, 0.95)
	if (murder == 1)
		caster_set_pitch(global.currentsong, 0.5)
	global.plot = 43
	global.interact = 0
	if instance_exists(obj_puzzlewall1)
	{
		with (obj_puzzlewall1)
			instance_destroy()
	}
	instance_create(sans.x, sans.y, obj_sans_room)
	with (sans)
		instance_destroy()
	with (papyrus)
		instance_destroy()
	instance_destroy()
}
if (conversation == 50)
{
	mc = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_maincharar)
	with (obj_mainchara)
		visible = false
	with (mc)
		scr_depth()
	global.msc = 0
	global.typer = 19
	global.facechoice = 4
	global.faceemotion = 0
	global.interact = 1
	global.msg[0] = scr_gettext("obj_papyrus2_506")
	global.msg[1] = scr_gettext("obj_papyrus2_507")
	global.msg[2] = scr_gettext("obj_papyrus2_508")
	global.msg[3] = scr_gettext("obj_papyrus2_509")
	global.msg[4] = scr_gettext("obj_papyrus2_510")
	global.msg[5] = scr_gettext("obj_papyrus2_511")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 51
}
if (conversation == 51 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.stringno == 4)
	{
		mc.hspeed = 3
		mc.image_speed = 0.25
	}
	if (mc.x >= 158)
	{
		mc.x = 160
		mc.hspeed = 0
		mc.image_index = 0
		mc.image_speed = 0
	}
}
if (conversation == 51 && instance_exists(OBJ_WRITER) == false)
{
	if (mc.x >= 158)
	{
		mc.x = 160
		mc.hspeed = 0
		mc.image_index = 0
		mc.image_speed = 0
		conversation = 52
		alarm[3] = 50
	}
}
if (conversation == 53)
{
	global.msc = 0
	global.typer = 19
	global.facechoice = 4
	global.faceemotion = 3
	global.interact = 1
	global.msg[0] = scr_gettext("obj_papyrus2_552")
	global.msg[1] = scr_gettext("obj_papyrus2_553")
	global.msg[2] = scr_gettext("obj_papyrus2_554")
	global.msg[3] = scr_gettext("obj_papyrus2_555")
	global.msg[4] = scr_gettext("obj_papyrus2_556")
	global.msg[5] = scr_gettext("obj_papyrus2_557")
	instance_create(0, 0, obj_dialoguer)
	conversation = 54
}
if (conversation == 54 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.stringno == 4)
	{
		mc.hspeed = 3
		mc.image_speed = 0.25
	}
	if (mc.x >= 218)
	{
		mc.x = 220
		mc.hspeed = 0
		mc.image_index = 0
		mc.image_speed = 0
	}
}
if (conversation == 54 && instance_exists(OBJ_WRITER) == false)
{
	if (mc.x >= 218)
	{
		mc.x = 220
		mc.hspeed = 0
		mc.image_index = 0
		mc.image_speed = 0
		conversation = 55
		alarm[3] = 50
	}
}
if (conversation == 56)
{
	FL_ElectricMazeSkipped = true
	global.interact = 1
	global.msc = 0
	papyrus.sprite_index = papyrus.dtsprite
	sans.sprite_index = sans.dtsprite
	global.faceemotion = 0
	global.facechoice = 4
	global.typer = 19
	global.msg[0] = scr_gettext("obj_papyrus2_601") //\\E3SIGH.../
	global.msg[1] = scr_gettext("obj_papyrus2_602") //\\E3WHY COULDN'T WE GET&A HUMAN THAT LIKES&PUZZLES???/%%
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 57
}
if (conversation == 57 && instance_exists(OBJ_WRITER) == false)
{
	if instance_exists(obj_orbhead)
	{
		with (obj_orbhead)
			instance_destroy()
	}
	with (obj_shockblock)
		instance_destroy()
	papyrus.hspeed = 5
	papyrus.sprite_index = papyrus.rsprite
	papyrus.image_speed = 0.2
	hhh = instance_create(0, 0, obj_musfadeout)
	hhh.fadespeed = 0.05
	alarm[3] = 30
	conversation = 58
}
if (conversation == 59)
{
	obj_mainchara.x = mc.x
	obj_mainchara.y = mc.y
	global.facing = Direction.Down
	with (mc)
		instance_destroy()
	obj_mainchara.visible = true
	global.currentsong = caster_load("music/snowy.ogg")
	caster_loop(global.currentsong, 1, 0.95)
	if (murder == 1)
		caster_set_pitch(global.currentsong, 0.5)
	global.plot = 43
	global.interact = 0
	if instance_exists(obj_puzzlewall1)
	{
		with (obj_puzzlewall1)
			instance_destroy()
	}
	instance_create(sans.x, sans.y, obj_sans_room)
	with (sans)
		instance_destroy()
	with (papyrus)
		instance_destroy()
	instance_destroy()
}
