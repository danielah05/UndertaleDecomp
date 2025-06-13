if (global.mnfight == 3)
	attacked = 0
scr_blconmatch()
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
		global.hurtanim[myself] = 0
		sprite_index = normalsprite
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
		if (mercymod > 250 && global.turntimer < 10)
			global.turntimer = 0
		else
			global.turntimer = 110
		global.firingrate = 4
		if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
			mycommand = 2
		if (mycommand < 50)
		{
			global.firingrate = 13
			gen = instance_create((global.idealborder[1] - 50), (global.idealborder[3] - 45), blt_tinypom_leap)
			gen.dmg = global.monsteratk[myself]
			global.border = 8
			gen.bullettype = 0
		}
		if (mycommand >= 50)
		{
			global.firingrate = 13
			gen = instance_create((global.idealborder[1] - 50), (global.idealborder[3] - 45), blt_bluespear)
			gen.dmg = global.monsteratk[myself]
			global.border = 8
			gen.bullettype = 0
		}
		gen.myself = myself
		gen.dmg = global.monsteratk[myself]
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_lesserdoge_420")
		if (mycommand >= 30)
			global.msg[0] = scr_gettext("obj_lesserdoge_421")
		if (mycommand >= 60)
			global.msg[0] = scr_gettext("obj_lesserdoge_422")
		if (mycommand >= 85)
			global.msg[0] = scr_gettext("obj_lesserdoge_423")
		if (mercymod >= 40)
			global.msg[0] = scr_gettext("obj_lesserdoge_424")
		if (mercymod >= 200)
			global.msg[0] = scr_gettext("obj_lesserdoge_425")
		if (mercymod >= 400)
			global.msg[0] = scr_gettext("obj_lesserdoge_426")
		if (mercymod >= 700)
			global.msg[0] = scr_gettext("obj_lesserdoge_427")
		if (mercymod >= 1640)
			global.msg[0] = scr_gettext("obj_lesserdoge_428")
		if (mercymod >= 1740)
			global.msg[0] = scr_gettext("obj_lesserdoge_429")
		if (mercymod >= 2190)
			global.msg[0] = scr_gettext("obj_lesserdoge_430")
		if (mercymod >= 2340)
			global.msg[0] = scr_gettext("obj_lesserdoge_431")
		if (mercymod >= 2640)
			global.msg[0] = scr_gettext("obj_lesserdoge_432")
		if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3))
			global.msg[0] = scr_gettext("obj_lesserdoge_433")
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
				global.msg[0] = scr_gettext("obj_lesserdoge_449")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 1 || whatiheard == 2 || whatiheard == 3 || whatiheard == 4 || whatiheard == 5)
			{
				global.msc = 0
				if (mercymod == 0)
					global.msg[0] = scr_gettext("obj_lesserdoge_457")
				if (mercymod > 40)
					global.msg[0] = scr_gettext("obj_lesserdoge_458")
				if (mercymod > 90)
					global.msg[0] = scr_gettext("obj_lesserdoge_459")
				if (mercymod > 140)
					global.msg[0] = scr_gettext("obj_lesserdoge_460")
				if (mercymod > 190)
					global.msg[0] = scr_gettext("obj_lesserdoge_461")
				if (mercymod > 240)
					global.msg[0] = scr_gettext("obj_lesserdoge_462")
				if (mercymod > 290)
					global.msg[0] = scr_gettext("obj_lesserdoge_463")
				if (mercymod > 340)
					global.msg[0] = scr_gettext("obj_lesserdoge_464")
				if (mercymod > 390)
					global.msg[0] = scr_gettext("obj_lesserdoge_465")
				if (mercymod > 440)
					global.msg[0] = scr_gettext("obj_lesserdoge_466")
				if (mercymod > 490)
					global.msg[0] = scr_gettext("obj_lesserdoge_467")
				if (mercymod > 540)
					global.msg[0] = scr_gettext("obj_lesserdoge_468")
				if (mercymod > 590)
					global.msg[0] = scr_gettext("obj_lesserdoge_469")
				if (mercymod > 640)
					global.msg[0] = scr_gettext("obj_lesserdoge_470")
				if (mercymod > 900)
					global.msg[0] = scr_gettext("obj_lesserdoge_471")
				if (mercymod > 1640)
					global.msg[0] = scr_gettext("obj_lesserdoge_472")
				if (mercymod > 2190)
					global.msg[0] = scr_gettext("obj_lesserdoge_473")
				if (mercymod > 2240)
					global.msg[0] = scr_gettext("obj_lesserdoge_474")
				if (mercymod >= 2640)
					global.msg[0] = scr_gettext("obj_lesserdoge_475")
				if (mercymod >= 2690)
					global.msg[0] = scr_gettext("obj_lesserdoge_476")
				if (mercymod > 100)
					FL_SparedLesserDog = 1
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				mercymod += 50
			}
		}
		global.heard = 1
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
