if (global.mnfight == 3)
{
	global.msg[0] = scr_gettext("obj_movedoge_392")
	if (excited == 1)
		global.msg[0] = scr_gettext("obj_movedoge_393")
	if (mercymod > 100)
		global.msg[0] = scr_gettext("obj_movedoge_394")
	if (mercymod > 300)
		global.msg[0] = scr_gettext("obj_movedoge_395")
	attacked = 0
}
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
		mypart2 = instance_create(x, y, part2)
		mypart3 = instance_create(x, y, part3)
		mypart4 = instance_create(x, y, part4)
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
		if (mycommand >= 0 && mycommand <= 99.9)
		{
			global.firingrate = 13
			gen = instance_create((global.idealborder[1] - 50), (global.idealborder[3] - 45), blt_bluesword)
			gen.dmg = global.monsteratk[myself]
			global.border = 8
		}
		else
		{
			global.firingrate += 10
			gen = instance_create(x, y, obj_4sidegen)
			gen.bullettype = 0
		}
		gen.myself = myself
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
				global.msg[0] = scr_gettext("obj_movedoge_502")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_movedoge_511")
				if (excited == 0)
				{
					global.msg[0] = scr_gettext("obj_movedoge_514")
					global.msg[1] = scr_gettext("obj_movedoge_515")
					FL_SparedDoggo = 1
					mercymod = 1000
					if (pets < 4)
					{
						pets += 1
						mypart1.excited = 1
						mypart1.alarm[0] = 999
					}
					else
					{
						mypart1.excited = 0
						mypart1.alarm[0] = 3
						excited = 0
					}
				}
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
