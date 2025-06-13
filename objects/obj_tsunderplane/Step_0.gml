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
		global.hurtanim[myself] = 0
		mypart1.hurt = false
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
		global.turntimer = 160
		global.firingrate = 20
		if (pop == 3)
			global.firingrate = (global.firingrate * 2.4)
		if (pop == 2)
			global.firingrate = (global.firingrate * 1.7)
		num = 0
		if (mycommand >= 0 && mycommand <= 50)
			num = 1
		if (whatiheard == 1)
			num = 1
		if (num == 1)
		{
			global.turntimer = 160
			gen = instance_create(x, y, obj_vertplanegen)
			gen.dmg = global.monsteratk[myself]
			if (whatiheard == 1)
				gen.green = 1
		}
		else
		{
			global.firingrate = 30
			if (pop == 3)
				global.firingrate = (global.firingrate * 2.2)
			if (pop == 2)
				global.firingrate = (global.firingrate * 1.5)
			gen = instance_create(x, y, obj_incendiarygen)
			gen.dmg = global.monsteratk[myself]
			gen.bullettype = 0
		}
		gen.myself = myself
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_tsunderplane_465")
		if (mycommand >= 25)
			global.msg[0] = scr_gettext("obj_tsunderplane_466")
		if (mycommand >= 50)
			global.msg[0] = scr_gettext("obj_tsunderplane_467")
		if (mycommand >= 75)
			global.msg[0] = scr_gettext("obj_tsunderplane_468")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_tsunderplane_469")
		if (mercymod > 60)
			global.msg[0] = scr_gettext("obj_tsunderplane_470")
		if (global.monsterhp[myself] < 30)
			global.msg[0] = scr_gettext("obj_tsunderplane_471")
		attacked = 1
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
				global.msg[0] = scr_gettext("obj_tsunderplane_490")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_tsunderplane_499")
				g = floor(random(5))
				if (g == 0)
					global.msg[0] = scr_gettext("obj_tsunderplane_501")
				if (g == 1)
					global.msg[0] = scr_gettext("obj_tsunderplane_502")
				if (g == 2)
					global.msg[0] = scr_gettext("obj_tsunderplane_503")
				if (g == 3)
					global.msg[0] = scr_gettext("obj_tsunderplane_504")
				if (g == 4)
					global.msg[0] = scr_gettext("obj_tsunderplane_505")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_tsunderplane_515")
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
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
{
	scr_mercystandard()
	if (mercy < 0)
		instance_destroy()
}
