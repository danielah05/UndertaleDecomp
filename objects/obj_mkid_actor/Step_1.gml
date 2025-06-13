if (d == 0)
	scr_depth()
if (follow == 0)
	scr_npc_anim()
if (follow == 1)
{
	tmp_idealy = (obj_mainchara.y + 8)
	if (room == room_water_waterfall && obj_mainchara.y >= 142)
		tmp_idealy = (obj_mainchara.y - 2)
	if (room == room_water_waterfall2 && obj_mainchara.y >= 906)
		tmp_idealy = (obj_mainchara.y - 2)
	move_towards_point((obj_mainchara.x - 6), tmp_idealy, 2)
	image_speed = 0.25
	follow = 2
}
if (follow == 2)
{
	if collision_point((obj_mainchara.x - 6), (obj_mainchara.y + 28), object_index, 0, 0)
	{
		speed = 0
		follow = 3
	}
}
if (follow == 2.1)
{
	image_speed = 0.25
	x -= 4
	done = 0
	if (sprite_index == rsprite || sprite_index == usprite)
		move_towards_point((obj_mainchara.x - 2), (obj_mainchara.y + 8), 4)
	if (sprite_index == lsprite)
		move_towards_point((obj_mainchara.x + 6), (obj_mainchara.y + 8), 4)
	if (sprite_index == dsprite)
		move_towards_point(obj_mainchara.x, (obj_mainchara.y - 12), 4)
	move_towards_point(obj_mainchara.x, obj_mainchara.y, 4)
	if collision_rectangle((obj_mainchara.bbox_left - 6), (obj_mainchara.bbox_top - 4), (obj_mainchara.bbox_right + 4), (obj_mainchara.bbox_bottom + 4), object_index, 0, 0)
	{
		speed = 0
		follow = 3
	}
	x += 4
}
alcovecheck = 0
if (room == room_water_waterfall && obj_mainchara.y < 100)
{
	alcovecheck = 1
	image_speed = 0
	image_index = 0
	sprite_index = usprite
}
if (room == room_water_waterfall && y > 156)
{
	if (obj_mainchara.x > 1518)
	{
		if (x < 1520)
			x += 3
	}
}
if (follow == 3 && alcovecheck == 0)
{
	if (obj_mainchara.moving == true)
	{
		if (distance_to_object(obj_mainchara) > 12)
		{
			alarm[3] = 3
			follow = 4
		}
		if (distance_to_object(obj_mainchara) > 4 || distance_to_object(obj_mainchara) < 0)
		{
			if (distance_to_object(obj_mainchara) < 10)
				closemove = 1
		}
	}
	else
	{
		image_speed = 0
		image_index = 0
	}
	facing2 = global.facing
}
if (follow == 5)
{
	scr_npc_watch(1)
	follow = 6
	alarm[3] = 3
}
if (follow == 7)
	follow = 2.1
if (follow == 8)
	sprite_index = rtsprite
if (follow == 9)
{
	if (global.interact == 0)
	{
		global.interact = 1
		scr_npc_watch(0)
		alarm[3] = 3
		follow = 9.1
	}
}
if (follow == 10.1)
{
	global.facechoice = 0
	global.msg[0] = scr_gettext("obj_mkid_actor_337")
	global.msg[1] = scr_gettext("obj_mkid_actor_338")
	global.msg[2] = scr_gettext("obj_mkid_actor_339")
	global.msg[3] = scr_gettext("obj_mkid_actor_340")
	global.msg[4] = scr_gettext("obj_mkid_actor_341")
	global.msg[5] = scr_gettext("obj_mkid_actor_342")
	global.msg[6] = scr_gettext("obj_mkid_actor_343")
	global.typer = 5
	global.msc = 0
	instance_create(x, y, obj_dialoguer)
	follow = 10
}
if (follow == 10 && instance_exists(OBJ_WRITER) == false)
{
	sprite_index = dsprite
	global.interact = 0
	follow = 2.1
}
if (follow == 99)
{
	if (obj_mainchara.moving == true)
	{
		x += (obj_mainchara.x - obj_mainchara.xprevious)
		y += (obj_mainchara.y - obj_mainchara.yprevious)
		facing = global.facing
		image_speed = obj_mainchara.image_speed
		if (facing == Direction.Down)
			sprite_index = dsprite
		if (facing == Direction.Right)
			sprite_index = rsprite
		if (facing == Direction.Up)
			sprite_index = usprite
		if (facing == Direction.Left)
			sprite_index = lsprite
	}
	else
	{
		image_speed = 0
		image_index = 0
	}
}
if instance_exists(obj_mainchara)
{
	xfer = obj_mainchara.x
	yfer = obj_mainchara.y
}
