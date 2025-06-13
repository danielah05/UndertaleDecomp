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
		sprite_index = spr_loox
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
		global.turntimer = 110
		global.firingrate = 4
		if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
			mycommand = 2
		if (mycommand < 50)
		{
			global.firingrate = 13
			if (mercymod < 0)
				global.firingrate -= 6
			if (mercymod > 6)
				global.firingrate += 5
			if (((global.monster[0] + global.monster[1]) + global.monster[2]) > true)
				global.firingrate = (global.firingrate * 1.5)
			if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
				global.firingrate = (global.firingrate * 2)
			gen = instance_create(0, 0, obj_hoopgen1)
			gen.bullettype = 0
		}
		if (mycommand >= 50)
		{
			global.firingrate = 15
			if (mercymod < 0)
				global.firingrate -= 6
			if (mercymod > 6)
				global.firingrate += 5
			if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 2)
				global.firingrate = (global.firingrate * 1.5)
			if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
				global.firingrate = (global.firingrate * 2)
			gen = instance_create(0, 0, obj_hoopgen1)
			gen.bullettype = 1
		}
		gen.myself = myself
		gen.dmg = global.monsteratk[myself]
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_loox_403")
		if (mycommand >= 30)
			global.msg[0] = scr_gettext("obj_loox_404")
		if (mycommand >= 70)
			global.msg[0] = scr_gettext("obj_loox_405")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_loox_406")
		if (mercymod < -100)
			global.msg[0] = scr_gettext("obj_loox_407")
		if (mercymod > 100)
			global.msg[0] = scr_gettext("obj_loox_408")
		if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3))
			global.msg[0] = scr_gettext("obj_loox_409")
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
				global.msg[0] = scr_gettext("obj_loox_425")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 3)
			{
				if (mercymod < 100 && global.xpreward[myself] < 20)
					global.xpreward[myself] += 5
				mercymod = -100
				global.myfight = 0
				global.mnfight = 1
			}
			if (whatiheard == 1)
			{
				FL_SparedLoox = 1
				if (global.xpreward[myself] > 4)
					global.xpreward[myself] -= 2
				mercymod = 100
				global.myfight = 0
				global.mnfight = 1
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
