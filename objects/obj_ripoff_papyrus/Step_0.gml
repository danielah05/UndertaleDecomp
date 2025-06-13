if (global.mnfight == 3)
{
	attacked = 0
	obj_heart.movement = 0
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
	shudder = 8
	alarm[3] = global.damagetimer
	global.hurtanim[myself] = 3
}
if (global.hurtanim[myself] == 2)
{
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
		global.firingrate = 10
		if (pop == 3)
			global.firingrate = (global.firingrate * 2.5)
		if (pop == 2)
			global.firingrate = (global.firingrate * 1.8)
		if (turns == 0)
		{
			obj_heart.movement = 2
			obj_heart.vspeed = -1
			obj_heart.jumpstage = 2
			global.turntimer = 240
			global.border = 5
			gen = instance_create((global.idealborder[0] - 40), (global.idealborder[3] - 30), blt_sizebone)
			gen.hspeed = 4
			gen = instance_create((global.idealborder[0] - 40), (global.idealborder[3] - 80), blt_topbone)
			gen.hspeed = 4
			gen = instance_create((global.idealborder[0] - 60), (global.idealborder[3] - 30), blt_sizebone)
			gen.hspeed = 4
			gen = instance_create((global.idealborder[0] - 60), (global.idealborder[3] - 80), blt_topbone)
			gen.hspeed = 4
			gen = instance_create((global.idealborder[0] - 170), (global.idealborder[3] - 60), blt_sizebone)
			gen.hspeed = 4
			gen = instance_create((global.idealborder[0] - 170), (global.idealborder[3] - 110), blt_topbone)
			gen.hspeed = 4
			gen = instance_create((global.idealborder[0] - 190), (global.idealborder[3] - 60), blt_sizebone)
			gen.hspeed = 4
			gen = instance_create((global.idealborder[0] - 190), (global.idealborder[3] - 110), blt_topbone)
			gen.hspeed = 4
			gen = instance_create((global.idealborder[0] - 320), (global.idealborder[3] - 90), blt_sizebone)
			gen.hspeed = 4
			gen.blue = BulletType.Blue
			gen = instance_create((global.idealborder[1] + 480), (global.idealborder[3] - 60), blt_sizebone)
			gen.hspeed = -4
			gen = instance_create((global.idealborder[1] + 700), (global.idealborder[3] - 30), blt_sizebone)
			gen.hspeed = -4
			gen = instance_create((global.idealborder[1] + 700), (global.idealborder[3] - 80), blt_topbone)
			gen.hspeed = -4
			gen = instance_create((global.idealborder[0] - 700), (global.idealborder[3] - 30), blt_sizebone)
			gen.hspeed = 4
			gen = instance_create((global.idealborder[0] - 700), (global.idealborder[3] - 80), blt_topbone)
			gen.hspeed = 4
		}
		if (turns > 0)
		{
			if (mycommand >= 50)
			{
				obj_heart.movement = 2
				obj_heart.vspeed = -1
				obj_heart.jumpstage = 2
				global.turntimer = 220
				global.border = 5
				gen = instance_create((global.idealborder[1] + 60), (global.idealborder[3] - 80), blt_sizebone)
				gen.hspeed = -5
				gen.blue = BulletType.Blue
				gen = instance_create((global.idealborder[1] + 140), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = -5
				gen.blue = BulletType.Normal
				gen = instance_create((global.idealborder[1] + 220), (global.idealborder[3] - 80), blt_sizebone)
				gen.hspeed = -5
				gen.blue = BulletType.Blue
				gen = instance_create((global.idealborder[1] + 300), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = -5
				gen.blue = BulletType.Normal
				gen = instance_create((global.idealborder[1] + 380), (global.idealborder[3] - 80), blt_sizebone)
				gen.hspeed = -5
				gen.blue = BulletType.Blue
				gen = instance_create((global.idealborder[1] + 460), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = -5
				gen.blue = BulletType.Normal
				gen = instance_create((global.idealborder[1] + 540), (global.idealborder[3] - 80), blt_sizebone)
				gen.hspeed = -5
				gen.blue = BulletType.Blue
				gen = instance_create((global.idealborder[1] + 620), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = -5
				gen.blue = BulletType.Normal
				gen = instance_create((global.idealborder[1] + 1250), (global.idealborder[3] - 80), blt_sizebone)
				gen.hspeed = -7.5
				gen.blue = BulletType.Blue
				gen = instance_create((global.idealborder[1] + 1330), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = -7.5
				gen.blue = BulletType.Normal
			}
			else
			{
				obj_heart.movement = 2
				obj_heart.vspeed = -1
				obj_heart.jumpstage = 2
				global.turntimer = 150
				global.border = 5
				gen = instance_create((global.idealborder[0] - 10), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = 2
				gen = instance_create((global.idealborder[0] - 110), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = 2
				gen = instance_create((global.idealborder[0] - 210), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = 2
				gen = instance_create((global.idealborder[0] - 310), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = 2
				gen = instance_create((global.idealborder[1] + 10), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = -2
				gen = instance_create((global.idealborder[1] + 110), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = -2
				gen = instance_create((global.idealborder[1] + 210), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = -2
				gen = instance_create((global.idealborder[1] + 310), (global.idealborder[3] - 20), blt_sizebone)
				gen.hspeed = -2
				blt_sizebone.speed = 4
				global.turntimer = 150
			}
		}
		turns = 1
		global.msg[0] = scr_gettext("obj_ripoff_papyrus_570")
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
				with (obj_monsterparent)
					totalmercy += 1
				mercyno += 1
				global.msg[0] = scr_gettext("obj_ripoff_papyrus_607")
				global.msg[1] = scr_gettext("obj_ripoff_papyrus_608")
				if (totalmercy >= 4)
				{
					global.msg[1] = scr_gettext("obj_ripoff_papyrus_611")
					saved = 1
					global.mnfight = 5
					if (obj_ripoff_sans.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_papyrus_617")
						global.msg[2] = scr_gettext("obj_ripoff_papyrus_618")
					}
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				with (obj_monsterparent)
					totalmercy += 1
				mercyno += 1
				global.msg[0] = scr_gettext("obj_ripoff_papyrus_632")
				global.msg[1] = scr_gettext("obj_ripoff_papyrus_633")
				if (totalmercy >= 4)
				{
					global.msg[1] = scr_gettext("obj_ripoff_papyrus_636")
					saved = 1
					global.mnfight = 5
					if (obj_ripoff_sans.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_papyrus_642")
						global.msg[2] = scr_gettext("obj_ripoff_papyrus_643")
					}
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				with (obj_monsterparent)
					totalmercy += 1
				mercyno += 1
				global.msg[0] = scr_gettext("obj_ripoff_papyrus_657")
				global.msg[1] = scr_gettext("obj_ripoff_papyrus_658")
				if (totalmercy >= 4)
				{
					global.msg[1] = scr_gettext("obj_ripoff_papyrus_661")
					saved = 1
					global.mnfight = 5
					if (obj_ripoff_sans.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_papyrus_667")
						global.msg[2] = scr_gettext("obj_ripoff_papyrus_668")
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
				with (obj_monsterparent)
					totalmercy += 1
				mercyno += 1
				global.msg[0] = scr_gettext("obj_ripoff_papyrus_682")
				global.msg[1] = scr_gettext("obj_ripoff_papyrus_683")
				if (totalmercy >= 4)
				{
					global.msg[1] = scr_gettext("obj_ripoff_papyrus_686")
					saved = 1
					global.mnfight = 5
					if (obj_ripoff_sans.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_papyrus_692")
						global.msg[2] = scr_gettext("obj_ripoff_papyrus_693")
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
if (global.turntimer <= 2 && global.mnfight == 2)
{
	obj_heart.vspeed = 0
	obj_heart.jumpstage = 0
	global.turntimer = -1
	obj_heart.movement = 0
	obj_heart.gravity = 0
	obj_heart.vspeed = 0
	global.mnfight = 3
}
if (global.mnfight == 5 && instance_exists(OBJ_WRITER) == false)
{
	if (saved == 1)
	{
		if (global.hp < global.maxhp)
		{
			global.hp = global.maxhp
			snd_play(snd_heal_c)
		}
		with (obj_strangetangle)
			instance_destroy()
		instance_create(0, 0, obj_flasher)
		snd_play(snd_break2)
		part1.face = 0
		with (obj_ripoff_sans)
			mypart1.face = 0
		saved = 2
		alarm[11] = 3
	}
	if (saved == 3)
	{
		global.faceemotion = 9
		global.msc = 0
		global.typer = 22
		global.msg[0] = scr_gettext("obj_ripoff_papyrus_767")
		scr_blcon_x(200, 20)
		with (obj_ripoff_sans)
		{
			global.msc = 0
			global.typer = 80
			global.msg[0] = scr_gettext("obj_ripoff_papyrus_774")
			if (global.language == "ja")
			{
				scr_blcon_x(340, 140)
				blcon.sprite_index = spr_blconsm2
			}
			else
			{
				scr_blcon_x(200, 140)
				blcon.sprite_index = spr_blconwdshrt_l
			}
		}
		saved = 4
	}
}
if (saved == 4 && writer.halt != false && obj_ripoff_sans.writer.halt != false && control_check_pressed(InteractButton))
{
	with (writer)
		instance_destroy()
	with (obj_ripoff_sans.writer)
		instance_destroy()
	instance_create(-10, -10, obj_screenwhiter)
	saved = 5
	instance_create(0, 0, obj_screenwhiter)
	alarm[11] = 34
}
if (saved == 6)
{
	global.battlegroup = BattleGroup.AsrielFinal
	FL_SavedPapyrusLostSoul = 1
	room_restart()
}
