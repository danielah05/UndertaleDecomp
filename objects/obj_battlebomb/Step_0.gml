if (global.mnfight == 3)
	attacked = 0
if (alarm[5] > 0)
{
	if (global.monster[0] == 1)
	{
		if (global.monsterinstance[0].alarm[5] > alarm[5])
			alarm[5] = global.monsterinstance[0].alarm[5]
	}
	if (global.monster[1] == 1)
	{
		if (global.monsterinstance[1].alarm[5] > alarm[5])
			alarm[5] = global.monsterinstance[1].alarm[5]
	}
	if (global.monster[2] == 1)
	{
		if (global.monsterinstance[2].alarm[5] > alarm[5])
			alarm[5] = global.monsterinstance[2].alarm[5]
	}
}
if (global.mnfight == 1)
{
	if (talked == false)
	{
		alarm[5] = 70
		alarm[6] = 1
		talked = true
		global.heard = 0
	}
}
if (global.myfight == 1)
{
	gotimer -= 1
	if (mypart1.got == 1 && gotimer > 0)
	{
		if (mypart1.type != 99)
			remtype = mypart1.type
		mypart1.type = 99
		mypart1.hspeed = 0
		mypart1.vspeed = 0
	}
}
if (global.hurtanim[myself] == 1)
{
	if (mypart1.got == 1)
	{
		if (mypart1.type != 99)
			remtype = mypart1.type
		mypart1.type = 99
		mypart1.hspeed = 0
		mypart1.vspeed = 0
		shudder = 8
		alarm[3] = global.damagetimer
		global.hurtanim[myself] = 3
	}
	else
		global.hurtanim[myself] = 2
}
if (global.hurtanim[myself] == 2)
{
	if (defuse == 0)
	{
		mypart1.type = bombtype
		global.hurtanim[myself] = 0
		global.myfight = 0
		global.mnfight = 1
	}
	if (defuse == 1)
	{
		con = 999
		global.hurtanim[myself] = 0
	}
}
if (global.hurtanim[myself] == 5)
{
	mypart1.type = bombtype
	global.hurtanim[myself] = 0
	global.myfight = 0
	global.mnfight = 1
}
if (global.mnfight == 2)
{
	if (attacked == 0)
	{
		gotimer = 3
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_battlebomb_485")
		if (bombtype == BombType.Dog)
			global.msg[0] = scr_gettext("obj_battlebomb_486")
		global.turntimer = -1
		global.mnfight = 3
	}
	whatiheard = -1
}
if (global.myfight == 2)
{
	if (whatiheard != -1)
	{
		if (global.heard == 0)
		{
			if (whatiheard == 0)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_battlebomb_513")
				if (bombtype == BombType.Dog)
					global.msg[0] = scr_gettext("obj_battlebomb_514")
				if (bombtype == BombType.ExtremelyAgileGlassOfWater)
					global.msg[0] = scr_gettext("obj_battlebomb_515")
				if (bombtype == BombType.Script)
					global.msg[0] = scr_gettext("obj_battlebomb_516")
				if (bombtype == BombType.Basketball)
					global.msg[0] = scr_gettext("obj_battlebomb_517")
				if (bombtype == BombType.Present)
					global.msg[0] = scr_gettext("obj_battlebomb_518")
				if (bombtype == BombType.Game)
					global.msg[0] = scr_gettext("obj_battlebomb_519")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_battlebomb_536")
				mypart1.flash = true
				if (mypart1.got == 1)
				{
					global.msg[0] = scr_gettext("obj_battlebomb_541")
					if (bombtype == BombType.Dog)
						global.msg[0] = scr_gettext("obj_battlebomb_542")
					mypart1.type = 99
					mypart1.defuse = 1
					mypart1.vspeed = 0
					mypart1.hspeed = 0
					con = 1000
					alarm[4] = 45
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				global.heard = 1
			}
		}
	}
}
if (global.myfight == 4)
{
	if (global.mercyuse == false)
	{
		scr_mercystandard()
		if (mercy < 0)
			instance_destroy()
	}
}
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
{
	scr_mercystandard()
	if (mercy < 0)
		instance_destroy()
}
if (con == 999)
{
	con = 1000
	alarm[4] = 30
}
if (con == 1001)
{
	instance_create(0, 0, obj_unfader)
	con = 1002
	alarm[4] = 12
}
if (con == 1003)
{
	instance_create(0, 0, obj_persistentfader)
	room_goto(global.currentroom)
}
