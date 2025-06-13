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
		with (mypart1)
			instance_destroy()
		mypart1 = instance_create(x, y, part1)
		global.turntimer = 160
		global.firingrate = 25
		if (pop == 3)
			global.firingrate = (global.firingrate * 2.4)
		if (pop == 2)
			global.firingrate = (global.firingrate * 1.7)
		if (mycommand >= 0 && mycommand < 25)
		{
			global.turntimer = 200
			gen = instance_create((x + 24), (y + 96), blt_temhand)
			gen.dmg = global.monsteratk[myself]
		}
		else
		{
			global.firingrate = 4
			gen = instance_create(((global.idealborder[0] + 80) + random(20)), global.idealborder[2], obj_maintem)
			gen.bullettype = 0
		}
		gen.myself = myself
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_tembattle_504")
		if (mycommand >= 25)
			global.msg[0] = scr_gettext("obj_tembattle_505")
		if (mycommand >= 50)
			global.msg[0] = scr_gettext("obj_tembattle_506")
		if (mycommand >= 75)
			global.msg[0] = scr_gettext("obj_tembattle_507")
		if (mycommand >= 83)
			global.msg[0] = scr_gettext("obj_tembattle_508")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_tembattle_509")
		if (global.monsterhp[myself] < 3)
			global.msg[0] = scr_gettext("obj_tembattle_511")
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
				global.msg[0] = scr_gettext("obj_tembattle_527")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 1)
			{
				scr_itemcheck(Items.TemmieFlakes)
				if (haveit == false)
				{
					global.msc = 0
					global.msg[0] = scr_gettext("obj_tembattle_539")
					obj_writer_set_halt(3)
					iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
					with (iii)
						halt = 0
				}
				else
				{
					global.msc = 0
					global.myfight = 3
					global.bmenuno = 6
					global.msg[0] = scr_gettext("obj_tembattle_550")
					obj_writer_set_halt(3)
					iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
				}
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_tembattle_561")
				flex += 1
				if (global.at < 150)
					global.at += 7
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				global.monsteratk[myself] += 1
			}
			if (whatiheard == 4)
			{
				FL_SparedTemmie = true
				global.msc = 0
				global.msg[0] = scr_gettext("obj_tembattle_573")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				mercymod = -10
			}
			if (whatiheard == 6)
			{
				i = 0
				n = 0
				repeat (InventorySize)
				{
					if (global.item[i] == Items.TemmieFlakes)
					{
						n = 1
						FL_SparedTemmie = true
					}
					else
						i += 1
				}
				scr_itemshift(i, 0)
				with (OBJ_INSTAWRITER)
					instance_destroy()
				alarm[6] = 1
				alarm[5] = 100
				global.myfight = 0
			}
			if (whatiheard == 7)
			{
				with (mypart1)
					atk = 3
				caster_pause(global.batmusic)
				alarm[7] = 190
				with (OBJ_INSTAWRITER)
					instance_destroy()
				with (mypart1)
					sprite_index = spr_temsmug
				with (mypart1)
					alarm[9] = 30
			}
			global.heard = 1
		}
	}
}
if (whatiheard == 3 && instance_exists(OBJ_WRITER) == false && dunk == 0)
{
	blconx = instance_create((x + 95), (y - 25), obj_blconsm)
	global.msg[0] = scr_gettext("obj_tembattle_617")
	dunk = 1
	global.msg[1] = scr_gettext("obj_tembattle_621")
	global.typer = 2
	blconxwd = instance_create((blconx.x + 15), (blconx.y + 10), OBJ_NOMSCWRITER)
}
if (dunk == 1 && instance_exists(OBJ_WRITER) == false)
{
	with (blconx)
		instance_destroy()
	global.monstertype[1] = MonsterType.Aaron
	global.monsterinstance[1] = instance_create(420, 38, obj_aaron)
	obj_aaron.image_alpha = 0
	obj_aaron.alphaup = 1
	blconx = instance_create((obj_aaron.x + 95), (obj_aaron.y - 25), obj_blconsm)
	blconx.depth = 50
	global.msg[0] = scr_gettext("obj_tembattle_635")
	if (FL_AaronWoshuaEvent == true)
		global.msg[0] = scr_gettext("obj_tembattle_636")
	global.msg[1] = scr_gettext("obj_tembattle_637")
	global.typer = 2
	global.msc = 0
	blcont = instance_create((blconx.x + 15), (blconx.y + 10), OBJ_WRITER)
	blcont.depth = -50
	dunk = 2
	global.myfight = 999
}
if (dunk == 2 && instance_exists(OBJ_WRITER) == false)
{
	with (blconx)
		instance_destroy()
	image_index = 1
	blconx = instance_create((x + 95), (y - 25), obj_blconsm)
	obj_tembody.visible = false
	global.msg[0] = scr_gettext("obj_tembattle_652")
	global.msg[1] = scr_gettext("obj_tembattle_653")
	global.typer = 2
	blconxwd = instance_create((blconx.x + 15), (blconx.y + 10), OBJ_NOMSCWRITER)
	dunk = 3
}
if (dunk == 3 && instance_exists(OBJ_WRITER) == false)
{
	with (blconx)
		instance_destroy()
	mercymod = 222
	obj_aaron.flex = 2
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
	global.myfight = 4
	scr_mercystandard()
	if (mercy < 0)
		instance_destroy()
}
