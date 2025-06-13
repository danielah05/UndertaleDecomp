if (global.mnfight == 3)
{
	attacked = 0
	talked = false
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
	if (talked == true && instance_exists(OBJ_WRITER) == false)
	{
		alarm[5] = 1
		talked = 2
	}
	if (talked == false)
	{
		attacked = 0
		alarm[6] = 1
		talked = true
		global.heard = 0
	}
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
		hurta = 0
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
		if (con == 0)
			con = 1
		if (turns > 1 && FL_YellowButtonStatus == YellowButtonStatus.Available)
		{
			global.firingrate = 6
			g = instance_create(100, 100, obj_blackbulletgen1)
			g.hspeed = 4
			global.turntimer = 90
		}
		with (mypart1)
			event_user(0)
		global.msg[0] = scr_gettext("obj_mettatonb_second_542")
		attacked = 1
		alarm[7] = 20
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
				global.msg[0] = scr_gettext("obj_mettatonb_second_564")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_mettatonb_second_574")
				if (FL_YellowButtonStatus == YellowButtonStatus.Available)
				{
					FL_YellowButtonStatus = YellowButtonStatus.Pressed
					global.msg[0] = scr_gettext("obj_mettatonb_second_579")
					con = 10
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
if (whatiheard == 3 && flex == 3 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.stringno == 1)
	{
		vspeed = -4
		mypart1.vspeed = -4
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
if (con == 1)
{
	phone = instance_create(500, 260, obj_npc_marker)
	phone.sprite_index = spr_fakephone
	phone.image_speed = 0
	phone.visible = true
	phone.depth = 20
	snd_play(snd_phone)
	phone.vspeed = -2
	con = 2
	alarm[4] = 30
}
if (con == 3)
{
	phone.vspeed = 0
	snd_play(snd_phone)
	con = 4
	alarm[4] = 30
}
if (con == 5)
{
	global.msc = 0
	global.msg[0] = scr_gettext("obj_mettatonb_second_640")
	global.typer = 51
	scr_blcon((mypart1.x - 320), (mypart1.y - 120), 1)
	con = 6
}
if (con == 6 && instance_exists(OBJ_WRITER) == false)
{
	shblcon = instance_create((phone.x + 10), phone.y, obj_blconsm)
	shblcon.sprite_index = spr_shockblcon2
	shake = 1
	global.typer = 49
	global.msg[0] = scr_gettext("obj_mettatonb_second_652")
	global.msg[1] = scr_gettext("obj_mettatonb_second_653")
	global.msg[2] = scr_gettext("obj_mettatonb_second_654")
	global.msg[3] = scr_gettext("obj_mettatonb_second_655")
	instance_create((phone.x - 100), (phone.y - 140), OBJ_WRITER)
	con = 7
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_mettatonb_second_662")
	FL_YellowButtonStatus = YellowButtonStatus.Available
	with (shblcon)
		instance_destroy()
	con = 8
	shake = 0
	global.turntimer = -1
	global.mnfight = 3
	global.myfight = -1
}
if (con > 6)
{
	if (shake == 1 && instance_exists(shblcon))
	{
		shblcon.x = (shblcon.xstart + random(2))
		shblcon.y = (shblcon.ystart + random(2))
	}
}
if (con == 11)
{
	obj_heart.movement = -1
	con = 12
	alarm[4] = 40
}
if (con == 13)
{
	caster_stop(global.batmusic)
	ctheart = instance_create((obj_heart.x + 8), (obj_heart.y + 8), obj_cutsceneheart)
	obj_heart.x = -999
	obj_heart.movement = -1
	con = 14
}
if (con == 15)
{
	shblcon = instance_create((phone.x + 10), phone.y, obj_blconsm)
	shblcon.sprite_index = spr_shockblcon2
	shake = 1
	global.typer = 49
	global.msg[0] = scr_gettext("obj_mettatonb_second_703")
	instance_create((phone.x - 100), (phone.y - 140), OBJ_WRITER)
	con = 16
	alarm[4] = 15
}
if (con == 17)
{
	if (global.hp > 999)
	{
		global.turntimer = 300
		instance_create(obj_heart.x, (obj_heart.y - 180), obj_blackboxtest)
		instance_create((obj_heart.x - 20), (obj_heart.y - 180), obj_blackboxtest)
		instance_create((obj_heart.x - 40), (obj_heart.y - 180), obj_blackboxtest)
		instance_create((obj_heart.x - 60), (obj_heart.y - 180), obj_blackboxtest)
		instance_create((obj_heart.x + 20), (obj_heart.y - 180), obj_blackboxtest)
		instance_create((obj_heart.x + 40), (obj_heart.y - 180), obj_blackboxtest)
		instance_create((obj_heart.x + 60), (obj_heart.y - 180), obj_blackboxtest)
		instance_create(obj_heart.x, (obj_heart.y - 220), obj_blackboxtest)
		instance_create(obj_heart.x, (obj_heart.y - 260), obj_blackboxtest)
		instance_create((obj_heart.x - 20), (obj_heart.y - 220), obj_blackboxtest)
		instance_create((obj_heart.x + 20), (obj_heart.y - 220), obj_blackboxtest)
		obj_blackboxtest.vspeed = 3
		obj_blackboxtest.friction = -0.1
		obj_blackboxtest.dmg = 1
	}
	con = 18
	alarm[4] = 120
}
if (con == 25)
{
	with (OBJ_WRITER)
		instance_destroy()
	with (shblcon)
		instance_destroy()
	with (obj_heartshot)
		instance_destroy()
	con = 24.5
	alarm[4] = 30
}
if (con == 25.5)
{
	global.msc = 0
	global.msg[0] = scr_gettext("obj_mettatonb_second_746")
	global.msg[1] = scr_gettext("obj_mettatonb_second_747")
	global.msg[2] = scr_gettext("obj_mettatonb_second_748")
	global.msg[3] = scr_gettext("obj_mettatonb_second_749")
	global.typer = 51
	scr_blcon((mypart1.x - 320), (mypart1.y - 120), 1)
	con = 26
}
if (con == 26 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_mettatonb_second_757")
	scr_blcon((mypart1.x - 320), (mypart1.y - 120), 1)
	con = 27
	mypart1.hspeed = -7
	mypart1.hurta = 1
	alarm[4] = 60
}
if (con >= 27)
{
	if instance_exists(obj_blconwideslave)
	{
		obj_blconwideslave.x = (mypart1.x - 320)
		OBJ_WRITER.writingx = (mypart1.x - 280)
	}
}
if (con == 28)
{
	instance_create(0, 0, obj_unfader)
	con = 29
	alarm[4] = 13
}
if (con == 30)
{
	caster_free(all)
	room_goto(global.currentroom)
}
