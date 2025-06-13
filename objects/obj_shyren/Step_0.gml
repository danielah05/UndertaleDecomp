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
		alarm[5] = 110
		alarm[6] = 1
		talked = true
		global.heard = 0
	}
}
if control_check_pressed(InteractButton)
{
	if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
		alarm[5] = 2
}
if (global.hurtanim[myself] == 1)
{
	shudder = 8
	alarm[3] = global.damagetimer
	global.hurtanim[myself] = 3
}
if (global.hurtanim[myself] == 2)
{
	global.monsterhp[myself] -= takedamage
	with (dmgwriter)
		alarm[2] = 15
	if (global.monsterhp[myself] >= 1)
	{
		mypart1 = instance_create(x, y, part1)
		global.hurtanim[myself] = 0
		image_index = 0
		global.myfight = 0
		global.mnfight = 1
	}
	else
	{
		global.myfight = 0
		global.mnfight = 1
		killed = 1
		instance_destroy()
	}
}
if (global.hurtanim[myself] == 5)
{
	global.damage = 0
	instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
	with (obj_dmgwriter)
		alarm[2] = 30
	global.myfight = 0
	global.mnfight = 1
	global.hurtanim[myself] = 0
}
if (global.mnfight == 2)
{
	if (attacked == 0)
	{
		pop = scr_monstersum()
		if (encourage == 5)
			encourage = 6
		global.turntimer = 124
		global.firingrate = 25
		if (pop == 3)
			global.firingrate = (global.firingrate * 2.4)
		if (pop == 2)
			global.firingrate = (global.firingrate * 1.7)
		if (mycommand >= 0)
		{
			global.firingrate = 50
			if (global.turntimer < 90)
				global.turntimer = 90
			if (emotion == 1)
			{
				global.firingrate = (8 - (encourage / 1.5))
				emotion = 2
				global.turntimer = 124
			}
			gen = instance_create((x + 36), (y + 62), obj_musbulgen)
			gen.bullettype = 0
			if (encourage >= 5)
				global.turntimer = 310
		}
		gen.myself = myself
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_shyren_470")
		if (mycommand >= 25)
			global.msg[0] = scr_gettext("obj_shyren_471")
		if (mycommand >= 50)
			global.msg[0] = scr_gettext("obj_shyren_472")
		if (mycommand >= 70)
			global.msg[0] = scr_gettext("obj_shyren_473")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_shyren_474")
		if (global.monsterhp[myself] < 30)
			global.msg[0] = scr_gettext("obj_shyren_475")
		if (encourage == 1)
			global.msg[0] = scr_gettext("obj_shyren_476")
		if (encourage == 2)
		{
			if (FL_PapyrusStatus == PapyrusStatus.Spared)
				global.msg[0] = scr_gettext("obj_shyren_479")
			else
				global.msg[0] = scr_gettext("obj_shyren_480")
		}
		if (encourage == 3)
			global.msg[0] = scr_gettext("obj_shyren_482")
		if (encourage == 4)
			global.msg[0] = scr_gettext("obj_shyren_483")
		if (encourage > 4)
			global.msg[0] = " "
		attacked = 1
	}
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
				global.msg[0] = scr_gettext("obj_shyren_502")
				if (encourage == 1)
					global.msg[0] = scr_gettext("obj_shyren_503")
				if (encourage > 1)
					global.msg[0] = scr_gettext("obj_shyren_504")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				d = choose(0, 1, 2)
				if (d == 0)
					global.msg[0] = scr_gettext("obj_shyren_514")
				if (d == 1)
					global.msg[0] = scr_gettext("obj_shyren_515")
				if (d == 2)
					global.msg[0] = scr_gettext("obj_shyren_516")
				if (encourage == 1)
				{
					global.msg[0] = scr_gettext("obj_shyren_517")
					global.msg[1] = scr_gettext("obj_shyren_518")
				}
				if (encourage == 2)
					global.msg[0] = scr_gettext("obj_shyren_519")
				if (encourage == 3)
				{
					global.msg[0] = scr_gettext("obj_shyren_520")
					global.msg[1] = scr_gettext("obj_shyren_521")
				}
				if (encourage == 4)
				{
					global.msg[0] = scr_gettext("obj_shyren_522")
					global.msg[1] = scr_gettext("obj_shyren_523")
					global.msg[2] = scr_gettext("obj_shyren_524")
				}
				encourage += 1
				emotion = 1
				global.monsterdef[myself] = -150
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				mercymod = 140
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_shyren_537")
				global.msg[1] = scr_gettext("obj_shyren_538")
				if (creep == 1)
					global.msg[0] = scr_gettext("obj_shyren_539")
				if (encourage > 1)
				{
					global.msg[0] = scr_gettext("obj_shyren_540")
					global.msg[1] = scr_gettext("obj_shyren_541")
				}
				creep = 1
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 4)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_shyren_550")
				if (encourage > 1)
					global.msg[0] = scr_gettext("obj_shyren_551")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			global.heard = 1
		}
	}
}
if (encourage == 6)
{
	if (global.turntimer < 40)
	{
		encourage = 7
		if instance_exists(obj_musbulgen)
		{
			with (obj_musbulgen)
				instance_destroy()
		}
		caster_pause(global.batmusic)
	}
}
if (encourage == 7 && global.turntimer < 18)
	global.border = 0
if (encourage == 7 && global.turntimer <= 2)
{
   FL_ShyrenStatus = ShyrenStatus.Encouraged
	global.turntimer = -1
	global.mnfight = 1
	global.myfight = 0
	global.border = 0
	with (OBJ_WRITER)
		instance_destroy()
	global.typer = 1
	obj_heart.visible = false
	scr_mercystandard()
	instance_destroy()
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
