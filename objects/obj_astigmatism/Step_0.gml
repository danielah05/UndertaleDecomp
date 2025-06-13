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
		pop = scr_monstersum()
		global.turntimer = 150
		global.firingrate = 17
		if (pop == 3)
			global.firingrate = (global.firingrate * 2.8)
		if (pop == 2)
			global.firingrate = (global.firingrate * 1.8)
		if (mycommand >= 50)
		{
			gen = instance_create(x, y, obj_astigmatismgen)
			gen.dmg = global.monsteratk[myself]
		}
		else
		{
			gen = instance_create(x, y, obj_stromboligen)
			gen.dmg = global.monsteratk[myself]
			if (pop == 1)
				gen.rate += 1
		}
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_astigmatism_456")
		if (mycommand >= 30)
			global.msg[0] = scr_gettext("obj_astigmatism_457")
		if (mycommand >= 70)
			global.msg[0] = scr_gettext("obj_astigmatism_458")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_astigmatism_459")
		if (mercymod < -100)
			global.msg[0] = scr_gettext("obj_astigmatism_460")
		if (mercymod > 100)
			global.msg[0] = scr_gettext("obj_astigmatism_461")
		if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3))
			global.msg[0] = scr_gettext("obj_astigmatism_462")
		attacked = 1
	}
	if (mercymod == 999999)
	{
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
				global.msg[0] = scr_gettext("obj_astigmatism_495")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_astigmatism_504")
				obj_writer_set_halt(3)
				if (pickon == 0)
					mercymod = -120
				if (pickon == 1)
					mercymod = 120
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_astigmatism_518")
				if (pickon == 1)
					mercymod = -120
				if (pickon == 0)
					mercymod = 120
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 4)
			{
				global.msc = 0
				sum = scr_monstersum()
				if (sum > 1)
					global.msg[0] = scr_gettext("obj_astigmatism_534")
				else
					global.msg[0] = scr_gettext("obj_astigmatism_533")
				obj_monsterparent.mercymod = 150
				obj_monsterparent.impress = 1
				impress = 0
				mercymod = 0
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
