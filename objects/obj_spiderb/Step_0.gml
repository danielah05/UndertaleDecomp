if (itemuse == 1 && instance_exists(OBJ_WRITER) == false)
{
	con = 50
	global.mnfight = 98
	global.myfight = 98
	itemuse = 2
}
if (global.mnfight == 3)
{
	attacked = 0
	if instance_exists(obj_purpleheart)
	{
		with (obj_purpleheart)
			instance_destroy()
	}
	if (purpletime == 1 && instance_exists(obj_signspider) == false)
	{
		o = instance_create(650, 230, obj_signspider)
		o.signno = turnamt
	}
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
if (blconactive == 1 && instance_exists(OBJ_WRITER) == false)
{
	blconactive = 0
	event_user(1)
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
		mypart1.hurt = false
		global.myfight = 0
		global.mnfight = 1
	}
	else
	{
		global.myfight = 0
		global.mnfight = 1
		killed = 1
		if (con < 95)
			event_user(4)
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
		if (con > 0 && turnamt < 20)
		{
			global.turntimer = 180
			global.firingrate = 10
			gen = instance_create(x, y, obj_spiderbulletgen)
			idealdmg = (global.monsteratk[myself] - atkdown)
			gen.dmg = idealdmg
			gen.type = turnamt
			gen.alarm[0] = -1
			gen.alarm[1] = -1
			gen.alarm[2] = 10
			with (gen)
				event_user(3)
			if (turnamt == 4 || turnamt == 9 || turnamt == 15)
			{
				global.turntimer = 660
				if (turnamt == 4)
					global.turntimer = 620
				if (turnamt == 15)
					global.turntimer = 700
				gege = instance_create(0, 0, obj_fakeborderdraw)
				gege.pattern = 1
				gege.dmg = idealdmg
				gen.alarm[2] = 30
			}
			turnamt += 1
			if (turnamt > 99)
			{
				gen.alarm[0] = 60
				global.turntimer = 360
				global.border = 22
				obj_purpleheart.ttype = 3
				if (turnamt == 15)
					obj_purpleheart.yadd2 = 3
				if (turnamt == 16)
					obj_purpleheart.yadd2 = 4
			}
		}
		else if (turnamt < 20)
		{
			with (mypart1)
				event_user(0)
			con = 1
		}
		else
		{
			global.turntimer = -1
			global.mnfight = 3
			global.myfight = -1
		}
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_spiderb_599")
		if (mycommand >= 25)
			global.msg[0] = scr_gettext("obj_spiderb_600")
		if (mycommand >= 50)
			global.msg[0] = scr_gettext("obj_spiderb_601")
		if (mycommand >= 75)
			global.msg[0] = scr_gettext("obj_spiderb_602")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_spiderb_603")
		attacked = 1
	}
	if (criticize > 0 && pop == 1)
	{
		global.turntimer = -1
		global.mnfight = 3
	}
	atkdown = 0
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
				global.msg[0] = scr_gettext("obj_spiderb_636")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_spiderb_646")
				if (struggle == 0)
					global.msg[0] = scr_gettext("obj_spiderb_647")
				if (struggle == 1)
					global.msg[0] = scr_gettext("obj_spiderb_648")
				if (struggle == 2)
				{
					global.msg[0] = scr_gettext("obj_spiderb_649")
					global.msg[1] = scr_gettext("obj_spiderb_650")
					if (FL_MuffetBribePrice <= global.gold)
						FL_MuffetBribePrice = ceil((FL_MuffetBribePrice / 2))
					else
						FL_MuffetBribePrice = global.gold
					if (FL_MuffetBribePrice <= 1)
						FL_MuffetBribePrice = 1
				}
				if (con > 50)
					global.msg[0] = scr_gettext("obj_spiderb_656")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				struggle += 1
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				if (con < 50)
				{
					if (global.gold >= FL_MuffetBribePrice)
					{
						global.msg[0] = scr_gettext("obj_spiderb_678", string(FL_MuffetBribePrice))
						global.gold -= FL_MuffetBribePrice
						FL_MuffetTotalBribes += FL_MuffetBribePrice
						bribes += 1
						if (bribes == 1)
							FL_MuffetBribePrice += 30
						if (bribes == 2)
							FL_MuffetBribePrice += 40
						if (bribes == 3)
							FL_MuffetBribePrice += 70
						if (bribes == 4)
							FL_MuffetBribePrice += 50
						if (bribes > 4)
							FL_MuffetBribePrice += 300
						atkdown = 2
					}
					else
					{
						global.msg[0] = scr_gettext("obj_spiderb_693")
						if (bribes == 0)
							FL_MuffetBribePrice -= 5
						if (bribes == 1)
							FL_MuffetBribePrice -= 5
						if (bribes == 2)
							FL_MuffetBribePrice -= 5
						if (bribes > 2)
							FL_MuffetBribePrice -= 5
						FL_MuffetBribePrice = ceil((FL_MuffetBribePrice / 10))
						if (FL_MuffetBribePrice <= 1)
							FL_MuffetBribePrice = 1
					}
					if (bribes > 0 && global.gold == 0)
						global.msg[0] = scr_gettext("obj_spiderb_710")
					if (global.gold == 0 && bribes == 0)
					{
						global.msg[0] = scr_gettext("obj_spiderb_714")
						global.msg[1] = scr_gettext("obj_spiderb_715")
						FL_MuffetBribePrice = 10
						bribes = 1
						atkdown = 2
					}
				}
				else
					global.msg[0] = scr_gettext("obj_spiderb_722")
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
			event_user(5)
	}
}
if (con == 2)
{
	purpletime = 1
	global.msg[0] = scr_gettext("obj_spiderb_762")
	event_user(3)
	con = 3
}
if (con == 3)
	global.turntimer = 10
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_spiderb_774")
	global.myfight = -1
	global.mnfight = 3
	global.turntimer = 20
	con = 4
}
if (con == 50)
{
	global.msg[0] = scr_gettext("obj_spiderb_783")
	global.msg[1] = scr_gettext("obj_spiderb_784")
	if (itemuse > 0)
	{
		global.msg[0] = scr_gettext("obj_spiderb_787")
		global.msg[1] = scr_gettext("obj_spiderb_788")
		global.msg[2] = scr_gettext("obj_spiderb_789")
	}
	event_user(3)
	con = 51
}
if (con == 51 && instance_exists(OBJ_WRITER) == false)
{
	instance_create(720, 230, obj_telegramspider)
	con = 52
	alarm[4] = 30
}
if (con == 53)
{
	global.msg[0] = scr_gettext("obj_spiderb_805")
	global.msg[1] = scr_gettext("obj_spiderb_806")
	global.msg[2] = scr_gettext("obj_spiderb_807")
	if (FL_SpiderDonationTotal == 0)
	{
		global.msg[2] = scr_gettext("obj_spiderb_811")
		if (global.kills > 0)
			global.msg[2] = scr_gettext("obj_spiderb_814")
	}
	if (FL_SpiderDonationTotal > 0)
		global.msg[2] = scr_gettext("obj_spiderb_819")
	if (FL_SpiderDonationTotal > 20)
		global.msg[2] = scr_gettext("obj_spiderb_823")
	if (FL_SpiderDonationTotal > 50)
		global.msg[2] = scr_gettext("obj_spiderb_827")
	if (murder == 1)
	{
		global.msg[1] = scr_gettext("obj_spiderb_832")
		global.msg[2] = scr_gettext("obj_spiderb_833")
	}
	global.msg[3] = scr_gettext("obj_spiderb_836")
	global.msg[4] = scr_gettext("obj_spiderb_837")
	global.msg[5] = scr_gettext("obj_spiderb_838")
	global.msg[6] = scr_gettext("obj_spiderb_839")
	if (murder == 1)
	{
		global.msg[5] = scr_gettext("obj_spiderb_842")
		global.msg[6] = scr_gettext("obj_spiderb_843")
	}
	global.msg[7] = scr_gettext("obj_spiderb_846")
	global.msg[8] = scr_gettext("obj_spiderb_847")
	global.msg[9] = scr_gettext("obj_spiderb_848")
	global.msg[10] = scr_gettext("obj_spiderb_849")
	global.msg[11] = scr_gettext("obj_spiderb_850")
	global.msg[12] = scr_gettext("obj_spiderb_851")
	talktime = 1
	event_user(3)
	con = 54
}
if (con == 54 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_spiderb_859")
	with (obj_telegramspider)
		con = 2
	turnamt = 20
	global.myfight = -1
	global.mnfight = 3
	global.turntimer = -1
	mercymod = 9999
	global.monsterdef[myself] = -9999
	con = 55
}
if (con == 96)
{
	instance_create(660, 310, obj_sadspider)
	con = 97
}
if (con == 97 && instance_exists(obj_sadspider) == false)
{
	global.monster[myself] = false
	instance_destroy()
}
if control_check_pressed(CancelButton)
{
	if instance_exists(blconwd)
	{
		if (blconwd.halt == 0)
		{
			if (global.typer != 10)
				blconwd.stringpos = string_length(blconwd.originalstring)
		}
		control_clear(CancelButton)
	}
}
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
	if keyboard_check_pressed(ord("D"))
		turnamt += 1
	if (keyboard_check_pressed(ord("A")) && turnamt > 0)
		turnamt -= 1
}
