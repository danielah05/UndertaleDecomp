if (global.mnfight == 3)
	attacked = 0
scr_blconmatch()
if (global.mnfight == 1)
{
	if (talked == false)
	{
		if (global.monsterhp[myself] > 0)
			alarm[5] = 75
		if (mercymod == -49)
			alarm[5] = 400
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
		image_index = 0
		global.myfight = 0
		global.mnfight = 1
	}
	else
	{
		global.myfight = 0
		global.mnfight = 1
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
		global.turntimer = 160
		if (mercymod != -100)
		{
			if (global.turn != 1)
			{
				if (mycommand >= 0 && mycommand <= 50)
				{
					global.turntimer = 140
					global.firingrate = (4000 / (-mercymod))
					gen = instance_create(0, 0, obj_crygen1)
				}
				else
				{
					global.turntimer = 170
					global.firingrate = (3600 / (-mercymod))
					gen = instance_create(0, 0, obj_crygen2)
				}
			}
			else
			{
				global.turntimer = 140
				gen = instance_create((global.idealborder[0] + 30), (global.idealborder[2] + 30), obj_sadmsggen)
			}
		}
		else
		{
			global.turntimer = 260
			global.firingrate = 8
			instance_create((obj_napstablook.x + 34), (obj_napstablook.y - 30), blt_blookhat)
			gen = instance_create(0, 0, obj_crygen3)
		}
		gen.myself = myself
		gen.dmg = global.monsteratk[myself]
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_napstablook_549")
		if (mycommand >= 30)
			global.msg[0] = scr_gettext("obj_napstablook_550")
		if (mycommand >= 70)
			global.msg[0] = scr_gettext("obj_napstablook_551")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_napstablook_552")
		if (mercymod > -400)
			global.msg[0] = scr_gettext("obj_napstablook_553")
		if (mercymod > -290)
			global.msg[0] = scr_gettext("obj_napstablook_554")
		attacked = 1
	}
}
if (whatiheard == 3 && instance_exists(OBJ_WRITER) == false)
{
	scr_mercystandard()
	if (mercy < 0)
		instance_destroy()
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
				global.msg[0] = scr_gettext("obj_napstablook_576")
				if (FL_Hardmode == true)
					global.msg[0] = scr_gettext("obj_napstablook_579")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 3)
			{
				global.myfight = 0
				global.mnfight = 1
				if (mercymod == -50)
				{
					mercymod = -49
					caster_stop(global.batmusic)
					caster_free(global.batmusic)
					global.myfight = 0
					global.mnfight = 1
				}
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_napstablook_603")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 4)
			{
				global.msc = 0
				if (mercymod == -50)
				{
					mercymod = -49
					caster_stop(global.batmusic)
					caster_free(global.batmusic)
					global.myfight = 0
					global.mnfight = 1
				}
				else
				{
					if (mercymod < -400)
						global.msg[0] = scr_gettext("obj_napstablook_621")
					if (mercymod == -400)
						global.msg[0] = scr_gettext("obj_napstablook_622")
					if (mercymod == -300)
						global.msg[0] = scr_gettext("obj_napstablook_623")
					if (mercymod == -200)
						global.msg[0] = scr_gettext("obj_napstablook_624")
					obj_writer_set_halt(3)
					iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
					with (iii)
						halt = 0
					mercymod += 100
				}
			}
			global.heard = 1
		}
	}
}
if (global.myfight == 4)
{
	if (global.mercyuse == false)
	{
		mercer = 1
		scr_mercystandard()
		if (mercy < 0)
			instance_destroy()
	}
}
