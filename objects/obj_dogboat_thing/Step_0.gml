if (myinteract == 1 && global.interact == 0)
{
	global.interact = 1
	rman.image_speed = 0.1
	global.typer = 5
	global.msc = 770
	global.facechoice = 0
	instance_create(0, 0, obj_dialoguer)
	myinteract = 2
}
if (myinteract == 2)
{
	if (instance_exists(OBJ_WRITER) == false)
	{
		rman.image_speed = 0
		rman.image_index = 0
		if (con == 0)
		{
			myinteract = 0
			global.interact = 0
		}
		else
			myinteract = 3
	}
}
if (reg == 1)
{
	siner += 1
	dogy = ((sin((siner / 10)) * 1) + 1)
}
if (con == 0)
{
	siner += 1
	dogy = ((sin((siner / 10)) * 1) + 1)
}
if (con == 0.1 && instance_exists(OBJ_WRITER) == false)
{
	obj_mainchara.image_speed = 0.25
	con = 0.2
}
if (con == 0.2)
{
	global.phasing = 1
	if (obj_mainchara.x < (x + 54))
	{
		global.facing = Direction.Right
		obj_mainchara.x += 2
	}
	if (obj_mainchara.x > (x + 58))
	{
		global.facing = Direction.Left
		obj_mainchara.x -= 2
	}
	if (obj_mainchara.x >= (x + 54) && obj_mainchara.x <= (x + 58))
		con = 0.3
}
if (con == 0.3)
{
	global.phasing = 1
	obj_mainchara.x = (x + 56)
	depth = 960000
	global.facing = Direction.Down
	if (up == 0)
	{
		global.facing = Direction.Down
		if (obj_mainchara.y < (((y + dogy) - 8) + adjust))
			obj_mainchara.y += 2
		else
			con = 0.4
	}
	if (up == 1)
	{
		global.facing = Direction.Up
		if (obj_mainchara.y > (((y + dogy) - 8) + adjust))
			obj_mainchara.y -= 2
		else
			con = 0.4
	}
}
if (con == 0.4)
{
	global.facing = Direction.Left
	con = 1.1
	alarm[4] = 10
	snapper = obj_mainchara
}
if (con == 2.1)
{
	con = 1
	if (reg == 1)
	{
		con = 2
		alarm[4] = 10
	}
}
if (con == 1)
{
	if (dogy > -10)
		dogy -= 0.5
	else
	{
		dogy = -10
		con = 2
		alarm[4] = 30
	}
}
if (con == 3)
{
	hspeed = -5
	alarm[5] = 1
	if (reg == 1)
	{
		hspeed = -2
		alarm[5] = -1
	}
	image_speed = 0.334
	con = 4
}
if (con == 4 && x < -80)
{
	instance_create(0, 0, obj_unfader)
	con = 4.1
	alarm[4] = 10
}
if (con == 5.1)
{
	instance_create(0, 0, obj_persistentfader)
	con = 99
	global.entrance = 24
	room_goto(room_riverman_transition)
}
if (con == 6)
{
	obj_mainchara.cutscene = true
	view_target_set(0, noone)
	view_xview_set(0, 0)
	x = 340
	global.facing = Direction.Left
	global.interact = 1
	dogy = -10
	alarm[5] = 1
	if (reg == 1)
	{
		dogy = 0
		hspeed = -2
		alarm[5] = -1
	}
	image_speed = 0.334
	hspeed = -2
	con = 7
}
if (con == 7)
{
	if (x < (view_xview_get(0) + 120))
	{
		con = 8
		hspeed = 0
	}
}
if (con == 8)
{
	con = 9
	alarm[4] = 20
}
if (con == 9)
	global.interact = 1
if (con == 10)
{
	global.msc = 0
	global.typer = 5
	rr = floor(random(31))
	if (FL_GotTemVillageHint == 1)
		rr = 17
	global.msg[0] = scr_gettext("obj_dogboat_thing_400")
	global.msg[1] = scr_gettext("obj_dogboat_thing_401")
	if (rr == 1)
		global.msg[0] = scr_gettext("obj_dogboat_thing_402")
	if (rr == 2)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_403")
		global.msg[1] = scr_gettext("obj_dogboat_thing_404")
	}
	if (rr == 3)
		global.msg[0] = scr_gettext("obj_dogboat_thing_405")
	if (rr == 4)
		global.msg[0] = scr_gettext("obj_dogboat_thing_406")
	if (rr == 5)
		global.msg[0] = scr_gettext("obj_dogboat_thing_407")
	if (rr == 6)
		global.msg[0] = scr_gettext("obj_dogboat_thing_408")
	if (rr == 7)
		global.msg[0] = scr_gettext("obj_dogboat_thing_409")
	if (rr == 8)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_410")
		global.msg[1] = scr_gettext("obj_dogboat_thing_411")
	}
	if (rr == 9)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_412")
		global.msg[1] = scr_gettext("obj_dogboat_thing_413")
	}
	if (rr == 10)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_414")
		global.msg[1] = scr_gettext("obj_dogboat_thing_415")
	}
	if (rr == 11)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_416")
		global.msg[1] = scr_gettext("obj_dogboat_thing_417")
	}
	if (rr == 12)
		global.msg[0] = scr_gettext("obj_dogboat_thing_418")
	if (rr == 13)
		global.msg[0] = scr_gettext("obj_dogboat_thing_419")
	if (rr == 14)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_420")
		global.msg[1] = scr_gettext("obj_dogboat_thing_421")
	}
	if (rr == 15)
		global.msg[0] = scr_gettext("obj_dogboat_thing_422")
	if (rr == 16)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_423")
		global.msg[1] = scr_gettext("obj_dogboat_thing_424")
	}
	if (rr == 17)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_425")
		global.msg[1] = scr_gettext("obj_dogboat_thing_426")
	}
	if (rr == 18)
		global.msg[0] = scr_gettext("obj_dogboat_thing_427")
	if (rr == 19)
		global.msg[0] = scr_gettext("obj_dogboat_thing_428")
	if (rr == 20)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_429")
		global.msg[1] = scr_gettext("obj_dogboat_thing_430")
	}
	if (rr == 21)
	{
		global.msg[0] = scr_gettext("obj_dogboat_thing_431")
		global.msg[1] = scr_gettext("obj_dogboat_thing_432")
	}
	if (rr == 22)
		global.msg[0] = scr_gettext("obj_dogboat_thing_433")
	if (rr == 23)
	{
		weekday = current_weekday
		day = scr_gettext("weekday_error")
		if (weekday == 0)
			day = scr_gettext("weekday_0")
		if (weekday == 1)
			day = scr_gettext("weekday_1")
		if (weekday == 2)
			day = scr_gettext("weekday_2")
		if (weekday == 3)
			day = scr_gettext("weekday_3")
		if (weekday == 4)
			day = scr_gettext("weekday_4")
		if (weekday == 5)
			day = scr_gettext("weekday_5")
		if (weekday == 6)
			day = scr_gettext("weekday_6")
		if (weekday == 7)
			day = scr_gettext("weekday_0")
		global.msg[0] = scr_gettext("obj_dogboat_thing_447", day)
	}
	if (rr == 24)
		global.msg[0] = scr_gettext("obj_dogboat_thing_450")
	if (rr == 25)
		global.msg[0] = scr_gettext("obj_dogboat_thing_451")
	if (rr == 26)
		global.msg[0] = scr_gettext("obj_dogboat_thing_452")
	if (rr == 27)
		global.msg[0] = scr_gettext("obj_dogboat_thing_453")
	if (rr == 28)
		global.msg[0] = scr_gettext("obj_dogboat_thing_454")
	if (rr == 29)
		global.msg[0] = scr_gettext("obj_dogboat_thing_455")
	if (rr == 30)
		global.msg[0] = scr_gettext("obj_dogboat_thing_456")
	scr_regulartext()
	con = 11
}
if (con == 11 && instance_exists(OBJ_WRITER) == false)
{
	con = 12
	alarm[4] = 20
}
if (con == 13)
	con = 15
if (con == 15)
{
	hspeed = -2
	con = 16
}
if (con == 16 && x < -80)
{
	instance_create(0, 0, obj_unfader)
	con = 17
	alarm[4] = 10
}
if (con == 18)
{
	instance_create(0, 0, obj_persistentfader)
	con = 19
	global.entrance = 24
	if (FL_RivermanDestination == RiverManDestinations.Snowdin)
		room_goto(room_tundra_dock)
	if (FL_RivermanDestination == RiverManDestinations.Waterfall)
		room_goto(room_water_dock)
	if (FL_RivermanDestination == RiverManDestinations.Hotland)
		room_goto(room_fire_dock)
	if (FL_RivermanDestination == RiverManDestinations.Invalid)
		room_goto(room_fire_dock)
}
if (con == 50)
{
	obj_mainchara.cutscene = true
	view_target_set(0, noone)
	view_xview_set(0, 0)
	x = 340
	global.facing = Direction.Left
	global.interact = 1
	dogy = -10
	if (reg == 1)
	{
		dogy = 0
		hspeed = -2
	}
	image_speed = 0.2
	hspeed = -2
	con = 51
}
if (con == 51)
{
	if (x < xstart)
	{
		x = xstart
		con = 52
		hspeed = 0
		image_speed = 0
		image_index = 0
		alarm[5] = -1
	}
}
if (con == 52)
{
	global.phasing = 1
	con = 54
	alarm[4] = 20
	if (sprite_index == spr_dogboat)
		con = 52.5
}
if (con == 53.5)
{
	if (dogy < 1)
		dogy += 0.5
	else
	{
		con = 54
		alarm[4] = 10
	}
}
if (con == 55)
{
	global.facing = Direction.Up
	snapper = 9999999
	if (up == 0)
	{
		obj_mainchara.y -= 2
		obj_mainchara.image_speed = 0.25
		if (obj_mainchara.y < (y - 25))
			con = 56
	}
	if (up == 1)
	{
		global.facing = Direction.Down
		obj_mainchara.y += 2
		obj_mainchara.image_speed = 0.25
		if (obj_mainchara.y > (y + 25))
			con = 56
	}
}
if (con == 56)
{
	global.facing = Direction.Down
	obj_mainchara.image_speed = 0
	obj_mainchara.image_index = 0
	con = 57
	alarm[4] = 15
}
if (con == 58)
{
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.msg[0] = scr_gettext("obj_dogboat_thing_593")
	scr_regulartext()
	con = 59
	rman.image_speed = 0.1
}
if (con == 59 && instance_exists(OBJ_WRITER) == false)
{
	depth = (rman.depth + 1)
	if (up == 1)
		depth = 960000
	FL_GotTemVillageHint += 1
	global.phasing = 0
	global.msc = 0
	rman.image_speed = 0
	rman.image_index = 0
	con = 0
	global.interact = 0
	myinteract = 0
}
