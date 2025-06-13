scr_depth(0, 0, 0, 0, 0)
if (fun == false)
{
	if instance_exists(obj_face_papyrus)
		image_index = obj_face_papyrus.image_index
	else if (speed == 0 && path_speed == 0)
		image_index = 0
}
if (speed == 0 && con == 0)
	scr_npc_watch(0)
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
	con = 2
	solid = 0
	global.phase = 1
}
if (con == 2)
{
	if (obj_mainchara.bbox_top <= bbox_bottom && obj_mainchara.bbox_left < bbox_right)
	{
		obj_mainchara.facing = Direction.Down
		global.facing = Direction.Down
		obj_mainchara.image_speed = 0.25
		obj_mainchara.vspeed = 1
	}
	else
	{
		sprite_index = lsprite
		obj_mainchara.facing = Direction.Left
		global.facing = Direction.Left
		obj_mainchara.image_speed = 0
		obj_mainchara.vspeed = 0
		con = 3
		alarm[2] = 20
	}
}
if (con == 4)
{
	hspeed = -5
	sprite_index = lsprite
	image_speed = 0.5
	con = 4.5
	alarm[2] = 145
}
if (con == 4.5)
{
	if (obj_mainchara.bbox_left > bbox_right)
	{
		obj_mainchara.hspeed = -5
		obj_mainchara.image_speed = 0.5
	}
}
if (con == 5.5)
{
	obj_mainchara.hspeed = 0
	obj_mainchara.image_index = 0
	obj_mainchara.image_speed = 0
	con = 5
	alarm[2] = 6
}
if (con == 6)
{
	hspeed = 0
	vspeed = 4
	sprite_index = dsprite
	obj_mainchara.hspeed = 0
	obj_mainchara.image_index = 0
	obj_mainchara.image_speed = 0
	obj_mainchara.facing = Direction.Down
	global.facing = Direction.Down
	con = 7
	alarm[2] = 8
}
if (con == 8)
{
	sprite_index = rsprite
	vspeed = 0
	hspeed = 5
	if (bbox_left > (obj_mainchara.bbox_right + 10))
	{
		obj_mainchara.hspeed = 5
		global.facing = Direction.Right
		obj_mainchara.facing = Direction.Right
		obj_mainchara.image_speed = 0.5
		con = 9
		alarm[2] = 145
	}
}
if (con == 10)
{
	hspeed = 0
	obj_mainchara.hspeed = 0
	sprite_index = utsprite
	obj_mainchara.image_speed = 0
	image_speed = 0
	obj_mainchara.facing = Direction.Up
	global.facing = Direction.Up
	con = 11
	alarm[2] = 15
}
if (con == 12)
{
	myinteract = 3
	global.typer = 19
	global.facechoice = 4
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_papyrus_houseoutside_303")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER) == false)
{
	vspeed = -6
	sprite_index = usprite
	image_speed = 0.25
	con = 14
	alarm[2] = 7
}
if (con == 15)
{
	caster_play(mus_doorclose, 1, 1)
	FL_PapyrusDateCounter = 2
	global.phasing = 0
	global.interact = 0
	instance_destroy()
	obj_paphouse_entrance.dooract = 1
}
