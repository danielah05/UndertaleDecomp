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
		alarm[5] = 15
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
	shudder = 16
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
		global.turntimer = 120
		global.firingrate = 15
		if (pop == 3)
			global.firingrate = (global.firingrate * 2.4)
		if (pop == 2)
			global.firingrate = (global.firingrate * 1.7)
		if (mycommand >= 0 && mycommand <= 50)
		{
			gen = instance_create(x, y, obj_sleepdog)
			global.border = 3
			gen.bullettype = 1
		}
		else
		{
			global.turntimer = 90
			global.border = 8
			gen = instance_create(x, y, blt_dogspear)
			gen.bullettype = 0
		}
		gen.myself = myself
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_greatdog_440")
		if (mycommand >= 45)
			global.msg[0] = scr_gettext("obj_greatdog_441")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_greatdog_442")
		if (close == 1)
			global.msg[0] = scr_gettext("obj_greatdog_443")
		if (dogignore > 0)
			global.msg[0] = scr_gettext("obj_greatdog_444")
		if (dogignore > 2)
			global.msg[0] = scr_gettext("obj_greatdog_445")
		if (pet == 1)
			global.msg[0] = scr_gettext("obj_greatdog_446")
		if (pet == 2)
			global.msg[0] = scr_gettext("obj_greatdog_447")
		if (pet == 3)
			global.msg[0] = scr_gettext("obj_greatdog_448")
		if (pet == 4)
			global.msg[0] = scr_gettext("obj_greatdog_449")
		if (global.monsterhp[myself] < 30)
			global.msg[0] = scr_gettext("obj_greatdog_450")
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
				global.msg[0] = scr_gettext("obj_greatdog_466")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				if (close == 1)
					global.msg[0] = scr_gettext("obj_greatdog_478")
				if (close == 0)
				{
					global.msg[0] = scr_gettext("obj_greatdog_482")
					global.msg[1] = scr_gettext("obj_greatdog_483")
					close = 1
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 2)
			{
				global.msc = 0
				if (dogignore < 4)
				{
					global.msg[0] = scr_gettext("obj_greatdog_495")
					dogignore += 1
					close = 1
				}
				if (dogignore == 4)
					global.msg[0] = scr_gettext("obj_greatdog_501")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (pet > 0)
				global.monsterdef[myself] = -20
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_greatdog_512")
				if (pet == 4)
					global.msg[0] = scr_gettext("obj_greatdog_515")
				if (pet == 3)
				{
					pet = 4
					global.msg[0] = scr_gettext("obj_greatdog_520")
					global.msg[1] = scr_gettext("obj_greatdog_521")
					global.sp = obj_battlecontroller.tempspd
					mercymod = 9999
					FL_SparedGreaterDog = 1
				}
				if (pet == 2)
				{
					global.msg[0] = scr_gettext("obj_greatdog_528")
					global.msg[1] = scr_gettext("obj_greatdog_529")
					global.msg[2] = scr_gettext("obj_greatdog_530")
					global.sp = 3
					pet = 3
				}
				if (pet == 1)
					global.msg[0] = scr_gettext("obj_greatdog_536")
				if (close == 1 && pet == 0)
				{
					global.msg[0] = scr_gettext("obj_greatdog_540")
					global.msg[1] = scr_gettext("obj_greatdog_541")
					global.msg[2] = scr_gettext("obj_greatdog_542")
					global.msg[3] = scr_gettext("obj_greatdog_543")
					global.msg[4] = scr_gettext("obj_greatdog_544")
					pet = 1
				}
				if (close == 0)
					global.msg[0] = scr_gettext("obj_greatdog_549")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 4)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_greatdog_558")
				if (pet > 1)
					global.msg[0] = scr_gettext("obj_greatdog_561")
				if (pet == 1)
				{
					global.msg[0] = scr_gettext("obj_greatdog_565")
					global.msg[1] = scr_gettext("obj_greatdog_566")
					global.msg[2] = scr_gettext("obj_greatdog_567")
					global.msg[3] = scr_gettext("obj_greatdog_568")
					pet = 2
				}
				if (pet == 0)
					global.msg[0] = scr_gettext("obj_greatdog_573")
				global.msc = 0
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			global.heard = 1
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
if (dogignore > 3 && instance_exists(OBJ_WRITER) == false)
{
	mercymod = 6666
	FL_GreaterDogStatus = DogStatus.Ignored
	scr_mercystandard()
	if (mercy < 0)
		instance_destroy()
}
