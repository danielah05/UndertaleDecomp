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
		global.turntimer = 160
		global.firingrate = 3
		if (pop == 3)
			global.firingrate = (global.firingrate * 3)
		if (pop == 2)
			global.firingrate = (global.firingrate * 2)
		type = 2
		if (mycommand >= 0 && mycommand < 50)
			type = 1
		if (clean == 1 || clean == 3)
			type = 1
		if (type == 1)
		{
			global.turntimer = 180
			if (pop == 1)
				global.turntimer = 150
			if (pop == 1)
				global.firingrate = 3
			global.firingrate += dirtyjoke
			if (dirtyjoke > 3)
				dirtyjoke = 2
			if (pop > 1)
				gen = instance_create((global.idealborder[0] + (c_borderwidth(0) / 2)), ((global.idealborder[2] + 90) + (c_borderheight(0) / 2)), obj_woshspiralgen)
			if (pop == 1)
				gen = instance_create((global.idealborder[0] + (c_borderwidth(0) / 2)), ((global.idealborder[2] - 5) + (c_borderheight(0) / 2)), obj_woshspiralgen)
			if (pop == 1)
			{
				gen.blue = BulletType.Normal
				if mycommand
					gen.turn = 6
				qq = choose(0, 1)
				if (qq == 0)
				{
					gen.turn = -6
					gen.backwards = 1
				}
				gen.direction = (60 + random(40))
			}
			if (clean == 1)
			{
				gen.cleaner = 1
				clean = 0
			}
			if (clean == 3)
			{
				gen.cleaner = 1
				clean = 2
			}
			gen.dmg = global.monsteratk[myself]
		}
		else
		{
			global.firingrate = 4
			gen = instance_create((global.idealborder[0] + (c_borderwidth(0) / 2)), ((global.idealborder[2] - 60) + (c_borderheight(0) / 2)), blt_soapbul)
			gen.dmg = global.monsteratk[myself]
			if (pop > 1)
				gen.offset = 1
			qd = 0
			if (dirtyjoke > 0)
				qd = (dirtyjoke * 0.5)
			if (qd > 1)
				qd = 1
			gen.speed = (4 - qd)
			gen.bullettype = 0
		}
		gen.myself = myself
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_woshua_504")
		if (mycommand >= 25)
			global.msg[0] = scr_gettext("obj_woshua_505")
		if (mycommand >= 50)
			global.msg[0] = scr_gettext("obj_woshua_506")
		if (mycommand >= 75)
			global.msg[0] = scr_gettext("obj_woshua_507")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_woshua_508")
		if (global.monsterhp[myself] < 30)
			global.msg[0] = scr_gettext("obj_woshua_510")
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
				global.msg[0] = scr_gettext("obj_woshua_526")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_woshua_535")
				if (slime == 1)
				{
					global.msg[0] = scr_gettext("obj_woshua_536")
					mercymod = 333
				}
				if (clean == 2)
					global.msg[0] = scr_gettext("obj_woshua_537")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_woshua_546")
				if (clean == 2)
					global.msg[0] = scr_gettext("obj_woshua_547")
				if (clean == 0)
					clean = 1
				if (clean == 2)
					clean = 3
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 4)
			{
				global.msc = 0
				jj = floor(random(3))
				if (jj == 0)
					global.msg[0] = scr_gettext("obj_woshua_558")
				if (jj == 1)
					global.msg[0] = scr_gettext("obj_woshua_559")
				if (jj == 2)
					global.msg[0] = scr_gettext("obj_woshua_560")
				global.msg[1] = scr_gettext("obj_woshua_561")
				dirtyjoke += 1
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				if instance_exists(obj_aaron)
				{
					obj_aaron.whatiheard = 12
					obj_aaron.mercymod = 450
				}
				if (global.monsteratk[myself] > 3)
					global.monsteratk[myself] -= 2
			}
			global.heard = 1
		}
	}
}
if (whatiheard == 3 && flex == 3 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.stringno == 1)
	{
		vspeed = -4
		mypart1.vspeed = -4
	}
}
if (whatiheard == 3 && flex == 3 && instance_exists(OBJ_WRITER) == false)
{
	scr_mercystandard()
	if (mercy < 0)
		instance_destroy()
}
if (alphaup == 1 && image_alpha < 1)
	image_alpha += 0.05
if (global.myfight == 4)
{
	if (global.mercyuse == false)
	{
		scr_mercystandard()
		if (mercy < 0)
			instance_destroy()
	}
}
if (mercymod == 333 && instance_exists(OBJ_WRITER) == false)
{
	scr_mercystandard()
	if (mercy < 0)
		instance_destroy()
}
