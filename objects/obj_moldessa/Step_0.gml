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
		mypart1.pause = 0
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
		global.turntimer = 150
		if (mercymod < 100 || scr_monstersum() >= 2)
		{
			if (mycommand >= 0 && mycommand <= 50)
			{
				global.firingrate = 7
				if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
					global.firingrate = (global.firingrate * 2.7)
				if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 2)
					global.firingrate = (global.firingrate * 1.8)
				gen = instance_create(0, 0, obj_1sidegen)
				gen.bullettype = 3
			}
			else
			{
				global.firingrate = 15
				if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
					global.firingrate = (global.firingrate * 2.7)
				if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 2)
					global.firingrate = (global.firingrate * 1.8)
				gen = instance_create(0, 0, obj_1sidegen)
				gen.bullettype = 2
			}
			gen.myself = myself
		}
		else if (scr_monstersum() == 1)
		{
			global.mnfight = 3
			global.turntimer = -1
		}
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_moldessa_418")
		if (mycommand >= 40)
			global.msg[0] = scr_gettext("obj_moldessa_419")
		if (mycommand >= 70)
			global.msg[0] = scr_gettext("obj_moldessa_420")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_moldessa_421")
		whatiheard = -1
		if (global.monsterhp[myself] < 15)
			global.msg[0] = scr_gettext("obj_moldessa_424")
		if (mercymod > 15)
			global.msg[0] = scr_gettext("obj_moldessa_425")
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
				global.msg[0] = scr_gettext("obj_moldessa_447")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 3)
			{
				if (global.goldreward[3] < 8)
					global.goldreward[3] += 2
				global.msc = 0
				global.msg[0] = scr_gettext("obj_moldessa_458")
				with (mypart1)
					event_user(0)
				with (mypart1)
					facego = 1
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_moldessa_470")
				if (mercymod < 100)
					global.msg[0] = scr_gettext("obj_moldessa_471")
				else
					global.msg[0] = scr_gettext("obj_moldessa_474")
				with (mypart1)
					facego = 0
				mercymod = 100
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 4)
			{
				global.msc = 0
				if (global.hp < global.maxhp && lie == 0)
				{
					lie = 1
					global.hp += 2
					snd_play(snd_heal_c)
				}
				if (scr_monstersum() >= 2)
				{
					global.msg[0] = scr_gettext("obj_moldessa_495")
					global.msg[1] = scr_gettext("obj_moldessa_496")
					pre_m = mercymod
					with (obj_monsterparent)
					{
						if (mercymod < 90)
							mercymod = 90
					}
					mercymod = pre_m
				}
				else
					global.msg[0] = scr_gettext("obj_moldessa_506")
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
