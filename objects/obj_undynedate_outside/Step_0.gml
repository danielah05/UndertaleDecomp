if (con == 5 && global.interact == 0)
{
	if collision_rectangle((papyrus.x + 10), (papyrus.y + 40), (papyrus.x + 20), (papyrus.y + 50), obj_mainchara, 0, 1)
	{
		global.facing = Direction.Up
		global.interact = 1
		con = 6
		papyrus.dir = 0
		papyrus.fun = true
		papyrus.sprite_index = papyrus.usprite
	}
}
if (con == 6)
{
	con = 7
	alarm[4] = 30
}
if (con == 8)
{
	papyrus.sprite_index = spr_papyrus_boneget
	papyrus.image_index = 0
	scr_papface(0, 3)
	global.msc = 0
	global.msg[0] = scr_gettext("obj_undynedate_outside_155")
	global.msg[1] = scr_gettext("obj_undynedate_outside_156")
	instance_create(0, 0, obj_dialoguer)
	con = 9
}
if (con == 9 && instance_exists(OBJ_WRITER) == false)
{
	papyrus.image_speed = 0.2
	if (papyrus.image_index >= 4)
	{
		papyrus.image_speed = 0
		con = 10
	}
}
if (con == 10)
{
	global.msg[0] = scr_gettext("obj_undynedate_outside_173")
	instance_create(0, 0, obj_dialoguer)
	con = 11
}
if (con == 11 && instance_exists(OBJ_WRITER) == false)
{
	papyrus.image_speed = -0.2
	if (papyrus.image_index < 1)
	{
		papyrus.image_index = 0
		papyrus.image_speed = 0
		con = 12
		alarm[4] = 20
	}
}
if (con == 13)
{
	papyrus.sprite_index = spr_papyrus_knock
	papyrus.image_speed = 0.25
	snd_play(snd_knock)
	alarm[4] = 30
	con = 14
}
if (con == 15)
{
	papyrus.sprite_index = papyrus.usprite
	papyrus.image_index = 0
	papyrus.image_speed = 0
	con = 16
	alarm[4] = 30
}
if (con == 17)
{
	caster_stop(global.currentsong)
	con = 18
	alarm[4] = 30
}
if (con == 19)
{
	undyne = instance_create(papyrus.x, (papyrus.y - 35), obj_undyne_actor)
	undyne.sprite_index = undyne.dtsprite
	undyne.d = 1
	undyne.depth = 900001
	caster_play(snd_screenshake, 1, 1)
	con = 20
	alarm[4] = 60
}
if (con == 20)
{
	with (door)
	{
		if (image_index < 7.6)
			image_index += 0.2
	}
}
if (con == 21)
{
	global.facechoice = 5
	global.typer = 37
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_undynedate_outside_241")
	global.msg[1] = scr_gettext("obj_undynedate_outside_243")
	scr_papface(2, 0)
	global.msg[3] = scr_gettext("obj_undynedate_outside_245")
	global.msg[4] = scr_gettext("obj_undynedate_outside_246")
	beedly = 0
	instance_create(0, 0, obj_dialoguer)
	con = 22
}
if (con == 22 && instance_exists(OBJ_WRITER) == false)
{
	papyrus.hspeed = -4
	papyrus.sprite_index = papyrus.lsprite
	papyrus.image_speed = 0.5
	con = 23
	alarm[4] = 10
}
if (con == 24)
{
	papyrus.hspeed = 0
	papyrus.sprite_index = papyrus.usprite
	papyrus.image_speed = 0
	papyrus.image_index = 0
	con = 25
	alarm[4] = 30
}
if (con == 26)
{
	global.facechoice = 5
	global.typer = 37
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_undynedate_outside_276")
	global.msg[1] = scr_gettext("obj_undynedate_outside_277")
	global.msg[2] = scr_gettext("obj_undynedate_outside_278")
	scr_papface(3, 0)
	global.msg[4] = scr_gettext("obj_undynedate_outside_280")
	scr_undface(5, 1)
	global.msg[6] = scr_gettext("obj_undynedate_outside_282")
	instance_create(0, 0, obj_dialoguer)
	con = 27
}
if (con == 27 && instance_exists(OBJ_WRITER) == false)
{
	con = 28
	alarm[4] = 10
}
if (con == 28)
{
	undyne.sprite_index = undyne.usprite
	undyne.image_alpha -= 0.1
	papyrus.x += 4
	papyrus.y -= 0.5
	papyrus.sprite_index = papyrus.rsprite
	papyrus.image_speed = 0.25
}
if (con == 29)
{
	papyrus.image_speed = 0.5
	papyrus.image_index = 0
	papyrus.sprite_index = papyrus.usprite
	con = 30
	alarm[4] = 8
}
if (con == 31)
{
	papyrus.image_speed = 0.5
	papyrus.image_index = 0
	papyrus.sprite_index = papyrus.rsprite
	con = 32
	alarm[4] = 8
}
if (con == 33)
{
	papyrus.image_speed = 0.5
	papyrus.image_index = 0
	papyrus.sprite_index = papyrus.lsprite
	con = 34
	alarm[4] = 8
}
if (con == 35)
{
	papyrus.image_speed = 0.5
	papyrus.image_index = 0
	papyrus.vspeed = -3
	papyrus.sprite_index = papyrus.usprite
	con = 36
	alarm[4] = 15
}
if (con == 36)
	papyrus.image_alpha -= 0.12
if (con == 37)
{
	instance_create(140, 83, obj_doorA)
	with (papyrus)
		instance_destroy()
	with (undyne)
		instance_destroy()
	global.interact = 0
	con = 38
}
if (con == 38)
{
	if (obj_mainchara.y > 180 && global.interact == 0)
	{
		global.typer = 5
		obj_mainchara.y = 175
		global.msc = 0
		global.facechoice = 0
		global.faceemotion = 3
		global.msg[0] = scr_gettext("obj_undynedate_outside_364")
		scr_papface(1, 0)
		global.msg[2] = scr_gettext("obj_undynedate_outside_366")
		instance_create(0, 0, obj_dialoguer)
		global.interact = 1
		con = 39
	}
}
if (con == 39 && instance_exists(OBJ_WRITER))
	obj_mainchara.y = 175
if (con == 39 && instance_exists(OBJ_WRITER) == false)
{
	con = 38
	global.interact = 0
}
