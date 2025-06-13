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
		if (turns >= 19 && global.ratings >= 10000)
			qualify = 1
		if (turns < 19 && global.ratings >= 12000)
			qualify = 1
		if (qualify == 0)
			alarm[6] = 1
		else
			con = 90
		talked = true
		global.heard = 0
	}
}
if (talked == 2 && instance_exists(OBJ_WRITER) == false)
	event_user(1)
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
	else if (killed == 0)
	{
		global.mnfight = -1
		global.myfight = -1
		killed = 1
		con = 50
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
		global.turntimer = 10
		if (turns >= 1)
		{
			global.attacktype = (29 + turns)
			if (global.attacktype == 54)
			{
				turns -= 5
				global.attacktype = 49
			}
			if (global.attacktype >= 50)
			{
				if (global.monsterdef[myself] >= -10)
					global.monsterdef[myself] = -10
				global.monsterdef[myself] -= 5
				if (global.attacktype == 50)
					global.attacktype = 38
				if (global.attacktype == 51)
					global.attacktype = 54
				if (global.attacktype == 52)
					global.attacktype = 56
			}
			instance_create(0, 0, obj_mettattackgen)
		}
		if (mycommand >= 0)
			global.msg[0] = scr_gettext("obj_mettatonex_638")
		if (mycommand >= 25)
			global.msg[0] = scr_gettext("obj_mettatonex_639")
		if (mycommand >= 50)
			global.msg[0] = scr_gettext("obj_mettatonex_640")
		if (mycommand >= 75)
			global.msg[0] = scr_gettext("obj_mettatonex_641")
		if (mycommand >= 90)
			global.msg[0] = scr_gettext("obj_mettatonex_642")
		if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 4))
			global.msg[0] = scr_gettext("obj_mettatonex_644")
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
				global.msg[0] = scr_gettext("obj_mettatonex_677")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_mettatonex_691")
				global.msg[1] = scr_gettext("obj_mettatonex_692")
				with (obj_ratingsmaster)
					boastmode = 1
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_mettatonex_706")
				if (global.hp <= (global.maxhp / 2))
					global.msg[0] = scr_gettext("obj_mettatonex_708")
				if (global.hp < (global.maxhp / 4))
					global.msg[0] = scr_gettext("obj_mettatonex_710")
				if (global.hp <= 3)
					global.msg[0] = scr_gettext("obj_mettatonex_712")
				with (obj_ratingsmaster)
				{
					curtype = 11
					event_user(0)
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 4)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_mettatonex_726")
				global.msg[1] = scr_gettext("obj_mettatonex_727")
				with (obj_ratingsmaster)
					heel = 1
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			global.heard = 1
		}
	}
}
if (con == 50)
{
	with (obj_ratingsmaster)
		active = false
	with (obj_dmgwriter)
		instance_destroy()
	caster_free(all)
	with (OBJ_WRITER)
		instance_destroy()
	with (mypart1)
	{
		hurt = 2
		sineron = 0
		pause = 3
		dsf = 0.5
	}
	global.faceemotion = 0
	con = 51
	alarm[4] = 30
}
if (con == 52)
{
	global.typer = 53
	global.msc = 0
	global.msg[0] = scr_gettext("obj_mettatonex_770")
	global.msg[1] = scr_gettext("obj_mettatonex_771")
	global.msg[2] = scr_gettext("obj_mettatonex_772")
	global.msg[3] = scr_gettext("obj_mettatonex_773")
	global.msg[4] = scr_gettext("obj_mettatonex_774")
	global.msg[5] = scr_gettext("obj_mettatonex_775")
	global.msg[6] = scr_gettext("obj_mettatonex_776")
	global.msg[7] = scr_gettext("obj_mettatonex_777")
	global.msg[8] = scr_gettext("obj_mettatonex_778")
	global.msg[9] = scr_gettext("obj_mettatonex_779")
	global.msg[10] = scr_gettext("obj_mettatonex_780")
	global.msg[11] = scr_gettext("obj_mettatonex_781")
	global.msg[12] = scr_gettext("obj_mettatonex_782")
	con = 53
	scr_blcon_x((x + 180), (y + 20))
}
if (con == 53 && instance_exists(OBJ_WRITER) == false)
{
	con = 54
	alarm[4] = 45
}
if (con == 54)
{
	with (mypart1)
		dsf -= 0.012
}
if (con == 55 && instance_exists(OBJ_WRITER) == false)
{
	global.typer = 54
	with (mypart1)
		dsf = 0
	global.msg[0] = scr_gettext("obj_mettatonex_804")
	scr_blcon_x((x + 180), (y + 20))
	con = 56
}
if (con == 56 && instance_exists(OBJ_WRITER) == false)
{
	explode = caster_load("music/explosion.ogg")
	mypart1.fadewhite = 1
	con = 57
	alarm[4] = 2
}
if (con == 58)
{
	caster_play(explode, 1, 1)
	global.xp += 800
	scr_levelup()
	global.kills += 1
	FL_KilledMettaton = 1
	con = 59
}
if (con == 90)
{
	with (obj_dmgwriter)
		instance_destroy()
	global.faceemotion = 0
	mypart1.endface = 1
	global.typer = 51
	global.msc = 0
	global.msg[0] = scr_gettext("obj_mettatonex_836")
	global.msg[1] = scr_gettext("obj_mettatonex_837")
	global.msg[2] = scr_gettext("obj_mettatonex_838")
	global.msg[3] = scr_gettext("obj_mettatonex_839")
	global.msg[4] = scr_gettext("obj_mettatonex_840")
	global.msg[5] = scr_gettext("obj_mettatonex_841")
	con = 91
	blc = scr_blcon_x((x + 180), (y + 20))
}
if (con == 91 && instance_exists(OBJ_WRITER))
{
	vol = caster_get_volume(global.batmusic)
	vol -= 0.02
	caster_set_volume(global.batmusic, vol)
}
if (con == 91 && instance_exists(OBJ_WRITER) == false)
{
	caster_stop(global.batmusic)
	snd_play(snd_phone)
	con = 93
	alarm[4] = 50
}
if (con == 94 && instance_exists(OBJ_WRITER) == false)
{
	global.typer = 51
	global.msc = 0
	global.msg[0] = scr_gettext("obj_mettatonex_866")
	global.msg[1] = scr_gettext("obj_mettatonex_867")
	con = 95
	scr_blcon_x((x + 180), (y + 20))
}
if (con == 95 && instance_exists(OBJ_WRITER) == false)
{
	shblcon = instance_create(530, 200, obj_blconsm)
	shblcon.sprite_index = spr_shockblcon2
	sadmett = caster_load("music/mettsad.ogg")
	caster_loop(sadmett, 0.9, 1)
	global.typer = 92
	global.msg[0] = scr_gettext("obj_mettatonex_880")
	global.msg[1] = scr_gettext("obj_mettatonex_881")
	global.msg[2] = scr_gettext("obj_mettatonex_882")
	global.msg[3] = scr_gettext("obj_mettatonex_883")
	global.msg[4] = scr_gettext("obj_mettatonex_884")
	global.msg[5] = scr_gettext("obj_mettatonex_885")
	global.msg[6] = scr_gettext("obj_mettatonex_886")
	global.msg[7] = scr_gettext("obj_mettatonex_887")
	global.msg[8] = scr_gettext("obj_mettatonex_888")
	global.msg[9] = scr_gettext("obj_mettatonex_889")
	instance_create(420, 60, OBJ_WRITER)
	con = 96
}
if (con == 96 && instance_exists(OBJ_WRITER) == false)
{
	with (obj_blconsm)
		instance_destroy()
	global.typer = 51
	global.msc = 0
	global.msg[0] = scr_gettext("obj_mettatonex_900")
	global.msg[1] = scr_gettext("obj_mettatonex_901")
	global.msg[2] = scr_gettext("obj_mettatonex_902")
	global.msg[3] = scr_gettext("obj_mettatonex_903")
	con = 97
	scr_blcon_x((x + 180), (y + 20))
}
if (con == 97 && instance_exists(OBJ_WRITER) == false)
{
	snd_play(snd_phone)
	shblcon = instance_create(530, 200, obj_blconsm)
	shblcon.sprite_index = spr_shockblcon2
	global.typer = 92
	global.msg[0] = scr_gettext("obj_mettatonex_915")
	instance_create(420, 60, OBJ_WRITER)
	con = 98
}
if (con == 98 && instance_exists(OBJ_WRITER) == false)
{
	snd_play(snd_phone)
	shblcon = instance_create(560, 200, obj_blconsm)
	shblcon.sprite_index = spr_shockblcon2
	with (shblcon)
		depth -= 4
	global.typer = 92
	global.msg[0] = scr_gettext("obj_mettatonex_928")
	instance_create(450, 60, OBJ_WRITER)
	con = 99
}
if (con == 99 && instance_exists(OBJ_WRITER) == false)
{
	snd_play(snd_phone)
	shblcon = instance_create(520, 200, obj_blconsm)
	shblcon.sprite_index = spr_shockblcon2
	with (shblcon)
		depth -= 8
	global.typer = 92
	global.msg[0] = scr_gettext("obj_mettatonex_941")
	instance_create(410, 60, OBJ_WRITER)
	con = 100
}
if (con == 100 && instance_exists(OBJ_WRITER) == false)
{
	con = 101
	alarm[4] = 30
}
if (con == 101)
	obj_blconsm.image_alpha -= 0.035
if (con == 102)
{
	with (obj_blconsm)
		instance_destroy()
	global.typer = 51
	global.msc = 0
	global.msg[0] = scr_gettext("obj_mettatonex_964")
	global.msg[1] = scr_gettext("obj_mettatonex_965")
	global.msg[2] = scr_gettext("obj_mettatonex_966")
	global.msg[3] = scr_gettext("obj_mettatonex_967")
	global.msg[4] = scr_gettext("obj_mettatonex_968")
	global.msg[5] = scr_gettext("obj_mettatonex_969")
	global.msg[6] = scr_gettext("obj_mettatonex_970")
	global.msg[7] = scr_gettext("obj_mettatonex_971")
	global.msg[8] = scr_gettext("obj_mettatonex_972")
	global.msg[9] = scr_gettext("obj_mettatonex_973")
	global.msg[10] = scr_gettext("obj_mettatonex_974")
	global.msg[11] = scr_gettext("obj_mettatonex_975")
	global.msg[12] = scr_gettext("obj_mettatonex_976")
	global.msg[13] = scr_gettext("obj_mettatonex_977")
	global.msg[14] = scr_gettext("obj_mettatonex_978")
	global.msg[15] = scr_gettext("obj_mettatonex_979")
	global.msg[16] = scr_gettext("obj_mettatonex_980")
	global.msg[17] = scr_gettext("obj_mettatonex_981")
	global.msg[18] = scr_gettext("obj_mettatonex_982")
	global.msg[19] = scr_gettext("obj_mettatonex_983")
	global.msg[20] = scr_gettext("obj_mettatonex_984")
	global.msg[21] = scr_gettext("obj_mettatonex_985")
	global.msg[22] = scr_gettext("obj_mettatonex_986")
	global.msg[23] = scr_gettext("obj_mettatonex_987")
	global.msg[24] = scr_gettext("obj_mettatonex_988")
	global.msg[25] = scr_gettext("obj_mettatonex_989")
	con = 103
	scr_blcon_x((x + 180), (y + 20))
}
if (con == 103 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.stringno == 20)
		caster_set_volume(sadmett, 0.8)
	if (OBJ_WRITER.stringno == 21)
		caster_set_volume(sadmett, 0.6)
	if (OBJ_WRITER.stringno == 22)
		caster_set_volume(sadmett, 0.4)
	if (OBJ_WRITER.stringno == 23)
		caster_set_volume(sadmett, 0.2)
	if (OBJ_WRITER.stringno == 24)
		caster_set_volume(sadmett, 0.1)
	if (OBJ_WRITER.stringno == 25)
		caster_set_volume(sadmett, 0)
}
if (con == 103 && instance_exists(OBJ_WRITER) == false)
{
	impact = caster_load("music/create.ogg")
	caster_play(impact, 1, 0.8)
	mypart1.fadewhite = 1
	con = 105
}
if (global.myfight == 4)
{
	if (global.mercyuse == false)
		scr_mercystandard()
}
