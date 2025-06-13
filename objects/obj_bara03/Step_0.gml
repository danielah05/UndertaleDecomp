if (global.mnfight == 3)
{
	attacked = 0
	with (obj_carrotstargen)
		instance_destroy()
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
	if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0])
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
		mypart1.pause = 0
		global.hurtanim[myself] = 0
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
	if (obj_uborder.y > global.idealborder[2])
		obj_heart.y = ((obj_uborder.y + obj_dborder.y) / 2)
	if (attacked == 0)
	{
		pop = scr_monstersum()
		global.turntimer = 180
		if (instance_exists(obj_carrotstargen) == false)
		{
			if (whatiheard == 1 && con == 0 && pop > 1)
				mycommand = 80
			if (mycommand >= 0 && mycommand <= 50)
			{
				global.firingrate = 25
				gen = instance_create(x, y, obj_xbulletgen)
				gen.dmg = global.monsteratk[myself]
			}
			else
			{
				global.firingrate = 20
				if (whatiheard == 1 && con == 0 && pop > 1)
				{
					instance_create(((room_width / 2) - 15), ((room_height / 2) - 80), obj_greenarmor)
					global.firingrate = 35
				}
				gen = instance_create(x, y, obj_warplinegen)
				gen.dmg = global.monsteratk[myself]
				gen.alarm[1] = 8
				if (con > 6)
					gen.shake = 1
			}
			gen.myself = myself
		}
		if (mycommand >= 0)
			global.msg[0] = "* 03 rubs her glove quietly."
		if (mycommand >= 25)
			global.msg[0] = "* 04 hums and looks the other&  way."
		if (mycommand >= 50)
			global.msg[0] = "* 03 stands guard."
		if (mycommand >= 75)
			global.msg[0] = "* 04's twitches her tail."
		if (mycommand >= 90)
			global.msg[0] = "* Smells like a military zoo."
		pop = scr_monstersum()
		if (pop == 1)
		{
			if (mycommand >= 0)
				global.msg[0] = "* 03 is trembling."
			if (mycommand >= 25)
				global.msg[0] = "* 03 is holding her face in&  her hands."
			if (mycommand >= 50)
				global.msg[0] = "* 03 stands still."
			if (mycommand >= 75)
				global.msg[0] = "* 03 seems sick."
		}
		if (global.monsterhp[myself] < 30)
			global.msg[0] = "* 03's breathing intensifies."
		attacked = 1
		whatiheard = -1
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
				global.msg[0] = (((("* RG 03 " + string(global.monsteratk[myself])) + " ATK ") + string(global.monsterdef[myself])) + " DEF&* Royal Guard member with&  stuffy armor./^")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				global.msg[0] = "* You touch RG 03's glove^1.&* It starts to come loose./^"
				if (shirtless == 1)
				{
					global.msg[0] = "* You shake RG 03's claw./^"
					if instance_exists(obj_bara01)
						obj_bara01.whatiheard = 12
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = "* You tell RG 03 that she&  should stand up for herself./^"
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			global.heard = 1
		}
	}
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
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
{
	scr_mercystandard()
	if (mercy < 0)
		instance_destroy()
}
if (fuckyou == 1)
	global.mnfight = 5
if (global.mnfight == 5)
{
	if (con == 0)
	{
		fuckyou = 1
		obj_heart.x = -800
		obj_heart.movement = -1
		global.border = 0
		alarm[4] = 15
		con = 1
	}
	if (con == 2)
	{
		blcon = instance_create((x - blconx), (y + blcony), obj_blconsm)
		blcon.sprite_index = spr_blconsm2
		global.typer = 2
		global.msg[0] = "My glove&...!/%%"
		writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
		con = 3
	}
	if (con == 3 && instance_exists(OBJ_WRITER) == false)
	{
		with (blcon)
			instance_destroy()
		snd_play(snd_grab)
		with (mypart1)
			hand1pic = spr_barafist_bug
		con = 4
		alarm[4] = 60
	}
	if (con == 5 && instance_exists(OBJ_WRITER) == false)
	{
		if instance_exists(obj_bara04)
		{
			with (obj_bara04)
			{
				blcon = instance_create((x + blconx), (y + blcony), obj_blconsm)
				global.typer = 2
				global.msg[0] = "03...&Is that&...?/%%"
				writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
			}
		}
		con = 6
	}
	if (con == 6 && instance_exists(OBJ_WRITER) == false)
	{
		if instance_exists(obj_bara04)
		{
			with (obj_bara04)
			{
				with (blcon)
					instance_destroy()
			}
		}
		blcon = instance_create((x - blconx), (y + blcony), obj_blconsm)
		blcon.sprite_index = spr_blconsm2
		global.typer = 2
		global.msg[0] = "Yes.&It is./"
		global.msg[1] = "Go&ahead.&Laugh at&me./%%"
		writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
		con = 7
	}
	if (con == 7 && instance_exists(OBJ_WRITER) == false)
	{
		with (blcon)
			instance_destroy()
		if instance_exists(obj_bara04)
		{
			with (obj_bara04)
			{
				blcon = instance_create((x + blconx), (y + blcony), obj_blconsm)
				global.typer = 2
				global.msg[0] = "No, I.../%%"
				writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
			}
		}
		con = 8
	}
	if (con == 8 && instance_exists(OBJ_WRITER) == false)
	{
		if instance_exists(obj_bara04)
		{
			with (obj_bara04.blcon)
				instance_destroy()
		}
		con = 9
	}
	if (con == 9 && instance_exists(OBJ_WRITER) == false)
	{
		fuckyou = 0
		shirtless = 1
		with (blcon)
			instance_destroy()
		global.msg[0] = "* RG 04 is looking at her own&  glove."
		con = 10
		global.mnfight = 3
		obj_bara04.shake = 1
		obj_heart.movement = 1
	}
}
