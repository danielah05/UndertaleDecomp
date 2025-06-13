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
		alarm[5] = 120
		alarm[6] = 1
		talked = true
		global.heard = 0
	}
}
if control_check_pressed(InteractButton)
{
	if (alarm[5] > 5 && alarm[5] < 119 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
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
		global.turntimer = 172
		global.firingrate = 15
		if (mycommand <= 50 && scr_monstersum() > 1)
		{
			gen = instance_create(0, 0, blt_whiteax)
			gen.dmg = global.monsteratk[myself]
			gen = instance_create(0, 0, blt_whiteax)
			gen.dmg = global.monsteratk[myself]
			global.border = 8
		}
		else
		{
			global.turntimer = 200
			gen = instance_create(0, 0, obj_loopdog)
			global.border = 9
		}
		gen.myself = myself
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_mandog_474")
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
				global.msg[0] = scr_gettext("obj_mandog_490")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				if (smell == 0)
				{
					global.msg[0] = scr_gettext("obj_mandog_498")
					global.msg[1] = scr_gettext("obj_mandog_499")
				}
				if (smell == 1)
				{
					global.msg[0] = scr_gettext("obj_mandog_500")
					global.msg[1] = scr_gettext("obj_mandog_501")
				}
				if (smell >= 2)
					global.msg[0] = scr_gettext("obj_mandog_502")
				if (scr_monstersum() == 1)
					global.msg[0] = scr_gettext("obj_mandog_503")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				if (smell == 1)
					obj_dogeparent.smell = 2
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				if (scr_monstersum() == 1)
					global.msg[0] = scr_gettext("obj_mandog_513")
				else
				{
					if (smell < 2)
						global.msg[0] = scr_gettext("obj_mandog_516")
					if (smell == 2 || smell == 3)
					{
						global.msg[0] = scr_gettext("obj_mandog_517")
						smell = 3
					}
					if (smell == 3 && obj_womandog.smell == 3)
					{
						obj_dogeparent.mercymod = 999
						FL_SparedDogCouple = 1
					}
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 4)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_mandog_527")
				global.msg[1] = scr_gettext("obj_mandog_528")
				if (smell == 0)
					obj_dogeparent.smell = 1
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
