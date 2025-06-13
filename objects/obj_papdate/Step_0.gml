if (instance_exists(obj_blconwdflowey) && textskip == 1)
	scr_textskip()
if (cn == -1)
{
	global.typer = 1
	global.msc = 0
	if (FL_PapyrusFightFlirt == 1)
		global.msg[0] = scr_gettext("obj_papdate_150")
	else
		global.msg[0] = scr_gettext("obj_papdate_151")
	instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
	cn = 0
}
if (cn == 0 && instance_exists(OBJ_WRITER) == true)
	face_index = 0
if (cn == 0 && instance_exists(OBJ_WRITER) == false)
{
	caster_loop(datemusic, 1, 1)
	global.faceemotion = 0
	global.facechoice = 0
	global.msc = 0
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	global.typer = 22
	if (FL_PapyrusFightFlirt == 1)
		global.msg[0] = scr_gettext("obj_papdate_166")
	else
		global.msg[0] = scr_gettext("obj_papdate_167")
	global.msg[1] = scr_gettext("obj_papdate_169")
	global.msg[2] = scr_gettext("obj_papdate_170")
	global.msg[3] = scr_gettext("obj_papdate_171")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	cn = 1
}
if (cn == 1 && instance_exists(OBJ_WRITER) == false)
{
	with (blcon)
		instance_destroy()
	global.facechoice = 5
	image_index = 0
	image_speed = 0.25
	snd_play(snd_grab)
	cn = 2
}
if (cn == 2 && image_index >= 2)
{
	image_speed = 0
	image_index = 2
	cn = 3
	alarm[2] = 10
}
if (cn == 4)
{
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	global.typer = 22
	if (FL_PapyrusFightFlirt == 1)
		global.msg[0] = scr_gettext("obj_papdate_198")
	else
		global.msg[0] = scr_gettext("obj_papdate_199")
	global.msg[1] = scr_gettext("obj_papdate_201")
	global.msg[2] = scr_gettext("obj_papdate_202")
	global.msg[3] = scr_gettext("obj_papdate_203")
	if (global.osflavor <= OSFlavors.Mac)
	{
		if (FL_PapyrusFightFlirt == 1)
			global.msg[4] = scr_gettext("obj_papdate_204")
		else
			global.msg[4] = scr_gettext("obj_papdate_205")
	}
	else if (FL_PapyrusFightFlirt == 1)
		global.msg[4] = scr_gettext("obj_papdate_206")
	else
		global.msg[4] = scr_gettext("obj_papdate_207")
	if (joke == 1)
	{
		global.msg[5] = scr_gettext("obj_papdate_208")
		cn = 6
		alarm[2] = -1
	}
	else
		global.msg[4] += "%%"
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	cn = 5.1
}
if (cn == 5.1)
{
	if (instance_exists(OBJ_WRITER) == false)
	{
		if instance_exists(blcon)
		{
			with (blcon)
				instance_destroy()
			if (joke == 0)
				alarm[2] = 400
		}
	}
	if (joke == 1)
	{
		global.msg[5] = scr_gettext("obj_papdate_220")
		cn = 4.3
		alarm[2] = 90
	}
}
if (cn == 5.3)
{
	global.faceemotion = 0
	cn = 6
}
if (cn == 6.1)
{
	global.msg[0] = scr_gettext("obj_papdate_232")
	global.msg[1] = scr_gettext("obj_papdate_233")
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	cn = 6
}
if (cn < 5.2 && joke == 0)
{
	if control_check_pressed(MenuButton)
	{
		if (cn == 5.1)
		{
			if instance_exists(OBJ_WRITER)
			{
				with (OBJ_WRITER)
					instance_destroy()
			}
			if instance_exists(blcon)
			{
				with (blcon)
					instance_destroy()
			}
		}
		snd_play(snd_swallow)
		joke = 1
		graph = instance_create(256, -20, obj_daygraph)
		graph.friction = 0.2
		graph.vspeed = 4
		graph2 = instance_create(-440, 64, obj_specialgraph)
		graph2.hspeed = 10
		graph2.friction = 0.1
		graph3 = instance_create(-460, 160, obj_populationgraph)
		graph3.hspeed = 10
		graph3.friction = 0.1
		graph4 = instance_create(-420, 256, obj_egggraph)
		graph4.hspeed = 10
		graph4.friction = 0.1
		graph5 = instance_create(980, 80, obj_radar)
		graph5.hspeed = -10
		graph5.friction = 0.1
		graph6 = instance_create(1020, 244, obj_crimegraph)
		graph6.hspeed = -10
		graph6.friction = 0.1
	}
}
if (cn == 6 && instance_exists(OBJ_WRITER) == false)
{
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	global.typer = 22
	if (joke == 1)
		global.msg[0] = scr_gettext("obj_papdate_279")
	else
		global.msg[0] = scr_gettext("obj_papdate_280")
	global.msg[1] = scr_gettext("obj_papdate_281")
	global.msg[2] = scr_gettext("obj_papdate_282")
	if (FL_PapyrusFightFlirt == 1)
		global.msg[3] = scr_gettext("obj_papdate_283")
	else
		global.msg[3] = scr_gettext("obj_papdate_284")
	global.msg[4] = scr_gettext("obj_papdate_286")
	global.msg[5] = scr_gettext("obj_papdate_287")
	if (FL_PapyrusFightFlirt == 1)
		global.msg[6] = scr_gettext("obj_papdate_288")
	else
		global.msg[6] = scr_gettext("obj_papdate_289")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	cn = 7
}
if (cn == 7 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.stringno == 6 && OBJ_WRITER.halt != 0)
	{
		choice = 0
		choicer = 1
		global.typer = 1
		global.msg[0] = scr_gettext("obj_papdate_302")
		iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
		with (iii)
			halt = 0
		cn = 8
	}
}
if (cn == 8 && choicer == 2)
{
	if instance_exists(blconwd)
	{
		with (blconwd)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	cn = 9
	choicer = 0
	alarm[2] = 10
}
if (cn == 10)
{
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	global.typer = 22
	if (choice == 0)
	{
		global.faceemotion = 9
		global.facechoice = 3
		global.msg[0] = scr_gettext("obj_papdate_326")
	}
	else
	{
		global.faceemotion = 0
		global.facechoice = 4
		global.msg[0] = scr_gettext("obj_papdate_332")
	}
	global.msg[1] = scr_gettext("obj_papdate_334")
	global.msg[2] = scr_gettext("obj_papdate_335")
	global.msg[3] = scr_gettext("obj_papdate_336")
	global.msg[4] = scr_gettext("obj_papdate_337")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	cn = 11
}
if (cn == 11 && instance_exists(OBJ_WRITER) == false)
{
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	datevolume -= 0.02
	if (datevolume < 0.05)
	{
		datevolume = 0
		cn = 12
		caster_stop(datemusic)
	}
	caster_set_volume(datemusic, datevolume)
	joke = 0
}
if (cn == 12)
{
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	global.typer = 22
	global.facechoice = 0
	global.msg[0] = scr_gettext("obj_papdate_357")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	cn = 13
}
if (cn == 13 && instance_exists(OBJ_WRITER) == false)
{
	caster_loop(datetense, 1, 1)
	cn = 14
	global.msg[0] = scr_gettext("obj_papdate_367")
	global.msg[1] = scr_gettext("obj_papdate_369")
	if (global.armor == Items.Bandage)
		global.msg[1] = scr_gettext("obj_papdate_370")
	if (global.armor == Items.FadedRibbon)
		global.msg[1] = scr_gettext("obj_papdate_371")
	if (global.armor == Items.ManlyBandanna)
		global.msg[1] = scr_gettext("obj_papdate_372")
	if (global.armor == Items.OldTutu)
		global.msg[1] = scr_gettext("obj_papdate_373")
	if (global.armor == Items.ButtyGlasses)
		global.msg[1] = scr_gettext("obj_papdate_374")
	if (global.armor == Items.StainedApron)
		global.msg[1] = scr_gettext("obj_papdate_375")
	if (global.armor == Items.CowboyHat)
		global.msg[1] = scr_gettext("obj_papdate_376")
	if (global.armor == Items.HeartLocket)
		global.msg[1] = scr_gettext("obj_papdate_377")
	global.msg[2] = scr_gettext("obj_papdate_378")
	global.msg[3] = scr_gettext("obj_papdate_379")
	global.msg[4] = scr_gettext("obj_papdate_380")
	global.msg[5] = scr_gettext("obj_papdate_381")
	global.msg[6] = scr_gettext("obj_papdate_382")
	global.msg[7] = scr_gettext("obj_papdate_383")
	if (FL_PapyrusFightFlirt == 1)
		global.msg[8] = scr_gettext("obj_papdate_386")
	else
		global.msg[8] = scr_gettext("obj_papdate_389")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 14 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.stringno == 8 && OBJ_WRITER.halt != 0)
	{
		choice = 0
		choicer = 1
		global.typer = 1
		global.msg[0] = scr_gettext("obj_papdate_404")
		iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
		with (iii)
			halt = 0
		cn = 15
	}
}
if (cn == 15 && choicer == 2)
{
	if instance_exists(blconwd)
	{
		with (blconwd)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	cn = 16
	choicer = 0
}
if (cn == 16)
{
	caster_stop(datetense)
	snd_play(snd_damage)
	shudder = 10
	global.faceemotion = 6
	alarm[3] = 1
	instance_create(0, 0, obj_flasher)
	g = instance_create(0, 0, obj_shaker)
	g.vshake = 4
	g.hshake = 4
	g.shakespeed = 2
	cn = 17
	joke = 2
	if instance_exists(obj_graphparent)
		obj_graphparent.die = 1
}
if (cn == 18)
{
	cn = 19
	alarm[2] = 20
}
if (cn == 20)
{
	cn = 20.1
	global.typer = 22
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	if (choice == 0)
	{
		global.msg[0] = scr_gettext("obj_papdate_453")
		global.msg[1] = scr_gettext("obj_papdate_454")
		if (FL_PapyrusFightFlirt == 1)
		{
			global.msg[2] = scr_gettext("obj_papdate_457")
			global.msg[3] = scr_gettext("obj_papdate_458")
		}
		else
		{
			global.msg[2] = scr_gettext("obj_papdate_460")
			global.msg[3] = scr_gettext("obj_papdate_461")
		}
	}
	else
	{
		global.msg[0] = scr_gettext("obj_papdate_465")
		if (FL_PapyrusFightFlirt == 1)
		{
			global.msg[1] = scr_gettext("obj_papdate_468")
			global.msg[3] = scr_gettext("obj_papdate_469")
		}
		else
		{
			global.msg[1] = scr_gettext("obj_papdate_470")
			global.msg[3] = scr_gettext("obj_papdate_471")
		}
		global.msg[2] = scr_gettext("obj_papdate_472")
	}
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 20.1 && instance_exists(OBJ_WRITER) == false)
{
	friendgraph.y = 64
	friendgraph.ideallength = 50
	if (instance_exists(blcon) == 1)
	{
		with (blcon)
			instance_destroy()
	}
	snd_play(snd_damage)
	shudder = 10
	global.faceemotion = 6
	alarm[3] = 1
	instance_create(0, 0, obj_flasher)
	g = instance_create(0, 0, obj_shaker)
	g.vshake = 4
	g.hshake = 4
	g.shakespeed = 2
	cn = 19.2
}
if (cn == 20.2)
{
	cn = 20.3
	alarm[2] = 20
}
if (cn == 21.3 && instance_exists(OBJ_WRITER) == false)
{
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	cn = 22
	alarm[2] = 10
	friendgraph.vspeed = -8
}
if (cn == 23)
{
	cn = 24
	global.typer = 22
	global.faceemotion = 7
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	global.msg[0] = scr_gettext("obj_papdate_520")
	global.msg[1] = scr_gettext("obj_papdate_521")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 24 && instance_exists(OBJ_WRITER) == false)
{
	cn = 25
	caster_loop(datefight, 0.85, 1)
	graph3 = instance_create(-100, 160, obj_populationgraph)
	graph3.hspeed = 6
	graph3.friction = 0.1
	graph3.tough = 1
	global.msg[0] = scr_gettext("obj_papdate_535")
	global.msg[1] = scr_gettext("obj_papdate_536")
	if (FL_PapyrusFightFlirt == 1)
	{
		global.msg[2] = scr_gettext("obj_papdate_539")
		global.msg[7] = scr_gettext("obj_papdate_540")
	}
	else
	{
		global.msg[2] = scr_gettext("obj_papdate_541")
		global.msg[7] = scr_gettext("obj_papdate_542")
	}
	global.msg[3] = scr_gettext("obj_papdate_543")
	global.msg[4] = scr_gettext("obj_papdate_544")
	global.msg[5] = scr_gettext("obj_papdate_545")
	global.msg[6] = scr_gettext("obj_papdate_546")
	global.msg[8] = scr_gettext("obj_papdate_547")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 25 && instance_exists(OBJ_WRITER) == false)
{
	if (instance_exists(blcon) == 1)
	{
		with (blcon)
			instance_destroy()
	}
	hspeed = 20
	alarm[2] = 30
	cn = 26
}
if (cn == 27)
{
	global.facechoice = 1
	hspeed = -20
	cn = 28
	alarm[2] = 30
}
if (cn == 29 && instance_exists(OBJ_WRITER) == false)
{
	hspeed = 0
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	cn = 30
	global.msg[0] = scr_gettext("obj_papdate_573")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 30 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.halt != 0)
	{
		choice = 0
		choicer = 1
		global.typer = 1
		global.msg[0] = scr_gettext("obj_papdate_586")
		iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
		with (iii)
			halt = 0
		cn = 31
	}
}
if (cn == 31 && choicer == 2)
{
	if instance_exists(blconwd)
	{
		with (blconwd)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	cn = 33
	choicer = 0
	alarm[2] = 10
}
if (cn == 34)
{
	global.typer = 22
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	cn = 35
	global.msg[0] = scr_gettext("obj_papdate_611")
	if (choice == 0)
		global.msg[1] = scr_gettext("obj_papdate_614")
	else
		global.msg[1] = scr_gettext("obj_papdate_618")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 35 && instance_exists(OBJ_WRITER) == false)
{
	friendgraph.y = 64
	friendgraph.vspeed = 0
	friendgraph.ideallength = 100
	if (instance_exists(blcon) == 1)
	{
		with (blcon)
			instance_destroy()
	}
	snd_play(snd_damage)
	shudder = 10
	global.faceemotion = 6
	alarm[3] = 1
	instance_create(0, 0, obj_flasher)
	g = instance_create(0, 0, obj_shaker)
	g.vshake = 4
	g.hshake = 4
	g.shakespeed = 2
	cn = 36
}
if (cn == 37)
{
	cn = 38
	datevolume = 1
	alarm[2] = 20
	if instance_exists(obj_populationgraph)
	{
		obj_populationgraph.hspeed = -6
		obj_populationgraph.friction = 0
	}
}
if (cn == 39)
{
	datevolume -= 0.02
	if (datevolume < 0.05)
	{
		datevolume = 0
		cn = 40
		caster_stop(datefight)
	}
	caster_set_volume(datefight, datevolume)
}
if (cn == 40)
{
	if instance_exists(obj_populationgraph)
	{
		with (obj_populationgraph)
			instance_destroy()
	}
	global.typer = 22
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	cn = 41
	global.msg[0] = scr_gettext("obj_papdate_667")
	global.msg[1] = scr_gettext("obj_papdate_668")
	global.msg[2] = scr_gettext("obj_papdate_669")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 41 && instance_exists(OBJ_WRITER) == false)
{
	cn = 42
	caster_loop(datetense, 1, 1)
	global.msg[0] = scr_gettext("obj_papdate_679")
	if (FL_PapyrusFightFlirt == 1)
		global.msg[1] = scr_gettext("obj_papdate_681")
	if (FL_PapyrusFightFlirt == 0)
		global.msg[1] = scr_gettext("obj_papdate_683")
	global.msg[2] = scr_gettext("obj_papdate_684")
	global.msg[3] = scr_gettext("obj_papdate_685")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	friendgraph.ideallength = 80
}
if (cn == 42 && instance_exists(OBJ_WRITER) == false)
{
	textskip = 0
	global.idealborder[2] += 35
	cn = 43
	alarm[2] = 15
}
if (cn == 44 && instance_exists(OBJ_WRITER) == false)
{
	friendgraph.vspeed = -8
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	global.typer = 1
	global.msg[0] = scr_gettext("obj_papdate_705")
	iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
	with (iii)
		shake = 0
	with (iii)
		halt = 999
	instance_create(320, (global.idealborder[2] - 30), obj_dateheart)
	cn = 45
}
if (cn == 47)
{
	textskip = 1
	if instance_exists(iii)
	{
		with (iii)
			instance_destroy()
	}
	global.idealborder[2] -= 35
	cn = 48
	global.typer = 22
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	global.msg[0] = scr_gettext("obj_papdate_721")
	global.msg[1] = scr_gettext("obj_papdate_722")
	global.msg[2] = scr_gettext("obj_papdate_723")
	global.msg[3] = scr_gettext("obj_papdate_724")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 48 && instance_exists(OBJ_WRITER) == false)
{
	with (blcon)
		instance_destroy()
	haty -= 1
	if (haty < -23)
		cn = 49
}
if (cn == 49)
{
	cn = 50
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	global.msg[0] = scr_gettext("obj_papdate_740")
	global.msg[1] = scr_gettext("obj_papdate_741")
	global.msg[2] = scr_gettext("obj_papdate_742")
	global.msg[3] = scr_gettext("obj_papdate_743")
	global.msg[4] = scr_gettext("obj_papdate_744")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 50 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.halt != 0 && OBJ_WRITER.stringno == 3)
	{
		choice = 0
		choicer = 1
		global.typer = 1
		global.msg[0] = scr_gettext("obj_papdate_756")
		iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
		with (iii)
			halt = 0
		cn = 51
	}
}
if (cn == 51 && choicer == 2)
{
	if instance_exists(blconwd)
	{
		with (blconwd)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	cn = 52
	choicer = 0
	alarm[2] = 10
}
if (cn == 53)
{
	global.typer = 22
	cn = 54
	if (choice == 1)
	{
		global.msg[0] = scr_gettext("obj_papdate_780")
		global.msg[1] = scr_gettext("obj_papdate_781")
		global.msg[2] = scr_gettext("obj_papdate_782")
		global.msg[3] = scr_gettext("obj_papdate_783")
		blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
		blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	}
}
if (cn == 54 && instance_exists(OBJ_WRITER) == false)
{
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	snd_play(snd_item)
	present = 1
	cn = 55
	alarm[2] = 30
}
if (cn == 56)
{
	cn = 57
	global.msg[0] = scr_gettext("obj_papdate_802")
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 57 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.halt != 0)
	{
		choice = 0
		choicer = 1
		global.typer = 1
		global.msg[0] = scr_gettext("obj_papdate_815")
		iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
		with (iii)
			halt = 0
		cn = 58
	}
}
if (cn == 58 && choicer == 2)
{
	if instance_exists(blconwd)
	{
		with (blconwd)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	cn = 59
	choicer = 0
	alarm[2] = 10
}
if (cn == 60)
{
	friendgraph.x = -180
	friendgraph.y = 144
	friendgraph.vspeed = 0
	caster_stop(datetense)
	global.typer = 22
	if (choice == 0)
	{
		global.msg[0] = scr_gettext("obj_papdate_842")
		global.msg[1] = scr_gettext("obj_papdate_843")
		global.msg[2] = scr_gettext("obj_papdate_844")
		global.msg[3] = scr_gettext("obj_papdate_845")
	}
	else
	{
		global.msg[0] = scr_gettext("obj_papdate_849")
		global.msg[1] = scr_gettext("obj_papdate_850")
		global.msg[2] = scr_gettext("obj_papdate_851")
	}
	cn = 61
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 61 && instance_exists(OBJ_WRITER) == false)
{
	friendgraph.hspeed = 10
	if (friendgraph.x > 90)
		friendgraph.hspeed = 0
	cn = 62
	caster_loop(datefight, 0.85, 1)
	global.msg[0] = scr_gettext("obj_papdate_864")
	global.msg[1] = scr_gettext("obj_papdate_865")
	global.msg[2] = scr_gettext("obj_papdate_866")
	global.msg[3] = scr_gettext("obj_papdate_867")
	global.msg[4] = scr_gettext("obj_papdate_868")
	global.msg[5] = scr_gettext("obj_papdate_869")
	global.msg[6] = scr_gettext("obj_papdate_870")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn >= 61)
{
	if (friendgraph.x > 70)
		friendgraph.hspeed = 0
}
if (cn == 62 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.halt != 0 && OBJ_WRITER.stringno == 5)
	{
		if (friendgraph.x > 90)
			friendgraph.hspeed = 0
		choice = 0
		choicer = 1
		global.typer = 1
		global.msg[0] = scr_gettext("obj_papdate_885")
		iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
		with (iii)
			halt = 0
		cn = 63
	}
}
if (cn == 63 && choicer == 2)
{
	if (friendgraph.x > 90)
		friendgraph.hspeed = 0
	if instance_exists(blconwd)
	{
		with (blconwd)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(blcon)
	{
		with (blcon)
			instance_destroy()
	}
	cn = 64
	if (choice == 1)
		cn = 65.5
	choicer = 0
	alarm[2] = 10
}
if (cn == 65)
{
	cn = 66.5
	global.typer = 1
	global.msg[0] = scr_gettext("obj_papdate_911")
	global.msg[1] = scr_gettext("obj_papdate_912")
	global.msg[2] = scr_gettext("obj_papdate_913")
	iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
	with (iii)
		halt = 0
}
if (cn == 66.5 && instance_exists(OBJ_WRITER))
{
	face_index = 0
	if (friendgraph.x > 90)
		friendgraph.hspeed = 0
}
if (cn == 66.5 && instance_exists(OBJ_WRITER) == false)
{
	global.typer = 22
	if instance_exists(iii)
	{
		with (iii)
			instance_destroy()
	}
	cn = 67
	if (choice == 0)
	{
		global.msg[0] = scr_gettext("obj_papdate_928")
		global.msg[1] = scr_gettext("obj_papdate_929")
		global.msg[2] = scr_gettext("obj_papdate_930")
		global.msg[3] = scr_gettext("obj_papdate_931")
	}
	if (choice == 1)
	{
		global.msg[0] = scr_gettext("obj_papdate_935")
		global.msg[1] = scr_gettext("obj_papdate_936")
		global.msg[2] = scr_gettext("obj_papdate_937")
		global.msg[3] = scr_gettext("obj_papdate_938")
	}
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 67 && instance_exists(OBJ_WRITER) == false)
{
	cn = 68
	friendgraph.ideallength = 100
	global.msg[0] = scr_gettext("obj_papdate_948")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	snd_play(snd_damage)
	shudder = 10
	global.faceemotion = 6
	alarm[3] = 1
	instance_create(0, 0, obj_flasher)
	g = instance_create(0, 0, obj_shaker)
	g.vshake = 4
	g.hshake = 4
	g.shakespeed = 2
}
if (cn == 69)
{
	cn = 70
	friendgraph.ideallength = 120
	global.msg[0] = scr_gettext("obj_papdate_967")
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	snd_play(snd_damage)
	shudder = 14
	global.faceemotion = 6
	alarm[3] = 1
	instance_create(0, 0, obj_flasher)
	g = instance_create(0, 0, obj_shaker)
	g.vshake = 4
	g.hshake = 4
	g.shakespeed = 2
}
if (cn == 71)
{
	caster_stop(datefight)
	cn = 72
	friendgraph.ideallength = 999
	global.msg[0] = scr_gettext("obj_papdate_987")
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	snd_play(snd_damage)
	shudder = 18
	global.faceemotion = 6
	alarm[3] = 1
	instance_create(0, 0, obj_flasher)
	g = instance_create(0, 0, obj_shaker)
	g.vshake = 4
	g.hshake = 4
	g.shakespeed = 2
}
if (cn == 73)
{
	with (blcon)
		instance_destroy()
	cn = 74
	g = instance_create(0, 0, obj_whitefader)
	g.tspeed = 0.01
	alarm[2] = 110
}
if (cn == 75)
{
	friendgraph.x = 999
	papyrus = caster_load("music/papyrus.ogg")
	cn = 76
	view_wview_set(0, 320)
	view_hview_set(0, 240)
	global.typer = 22
	if (FL_PapyrusFightFlirt == 1)
	{
		global.msg[0] = scr_gettext("obj_papdate_1021")
		global.msg[1] = scr_gettext("obj_papdate_1022")
		global.msg[2] = scr_gettext("obj_papdate_1023")
		global.msg[3] = scr_gettext("obj_papdate_1024")
		global.msg[4] = scr_gettext("obj_papdate_1025")
		global.msg[5] = scr_gettext("obj_papdate_1026")
		global.msg[6] = scr_gettext("obj_papdate_1027")
		global.msg[7] = scr_gettext("obj_papdate_1028")
	}
	else
	{
		global.msg[0] = scr_gettext("obj_papdate_1032")
		global.msg[1] = scr_gettext("obj_papdate_1033")
		global.msg[2] = scr_gettext("obj_papdate_1034")
		global.msg[3] = scr_gettext("obj_papdate_1035")
		global.msg[4] = scr_gettext("obj_papdate_1036")
		global.msg[5] = scr_gettext("obj_papdate_1037")
		global.msg[6] = scr_gettext("obj_papdate_1038")
		global.msg[7] = scr_gettext("obj_papdate_1039")
	}
	if (global.language == "ja")
		var writery = 45
	else
		writery = 100
	myw = instance_create(60, writery, OBJ_WRITER)
	myw.depth = -100000
}
if (cn == 76 && instance_exists(OBJ_WRITER) == false)
{
	g.image_alpha = 1
	g.tspeed = -0.05
	cn = 77
	alarm[2] = 20
	view_hview_set(0, 480)
	view_wview_set(0, 640)
}
if (cn == 78)
{
	cn = 79
	global.faceemotion = 8
	if (FL_PapyrusFightFlirt == 1)
	{
		global.msg[0] = scr_gettext("obj_papdate_1079")
		global.msg[1] = scr_gettext("obj_papdate_1080")
		global.msg[2] = scr_gettext("obj_papdate_1081")
		global.msg[3] = scr_gettext("obj_papdate_1082")
		global.msg[4] = scr_gettext("obj_papdate_1083")
		global.msg[5] = scr_gettext("obj_papdate_1084")
		global.msg[6] = scr_gettext("obj_papdate_1085")
		global.msg[7] = scr_gettext("obj_papdate_1086")
		global.msg[8] = scr_gettext("obj_papdate_1087")
		global.msg[9] = scr_gettext("obj_papdate_1088")
		global.msg[10] = scr_gettext("obj_papdate_1089")
		global.msg[11] = scr_gettext("obj_papdate_1090")
		global.msg[12] = scr_gettext("obj_papdate_1091")
		global.msg[13] = scr_gettext("obj_papdate_1092")
		global.msg[14] = scr_gettext("obj_papdate_1093")
		global.msg[15] = scr_gettext("obj_papdate_1094")
		global.msg[16] = scr_gettext("obj_papdate_1095")
		global.msg[17] = scr_gettext("obj_papdate_1096")
		global.msg[18] = scr_gettext("obj_papdate_1097")
		global.msg[19] = scr_gettext("obj_papdate_1098")
		global.msg[20] = scr_gettext("obj_papdate_1099")
		global.msg[21] = scr_gettext("obj_papdate_1100")
		global.msg[22] = scr_gettext("obj_papdate_1101")
		global.msg[23] = scr_gettext("obj_papdate_1102")
		global.msg[24] = scr_gettext("obj_papdate_1103")
		global.msg[25] = scr_gettext("obj_papdate_1104")
		global.msg[26] = scr_gettext("obj_papdate_1105")
		global.msg[27] = scr_gettext("obj_papdate_1106")
		global.msg[28] = scr_gettext("obj_papdate_1107")
		global.msg[29] = scr_gettext("obj_papdate_1108")
		global.msg[30] = scr_gettext("obj_papdate_1109")
		global.msg[31] = scr_gettext("obj_papdate_1110")
		global.msg[32] = scr_gettext("obj_papdate_1111")
		global.msg[33] = scr_gettext("obj_papdate_1112")
		global.msg[34] = scr_gettext("obj_papdate_1113")
		global.msg[35] = scr_gettext("obj_papdate_1114")
		global.msg[36] = scr_gettext("obj_papdate_1115")
	}
	else
	{
		caster_loop(papyrus, 1, 1)
		global.faceemotion = 8
		global.msg[0] = scr_gettext("obj_papdate_1121")
		global.msg[1] = scr_gettext("obj_papdate_1122")
		global.msg[2] = scr_gettext("obj_papdate_1123")
		global.msg[3] = scr_gettext("obj_papdate_1124")
		global.msg[4] = scr_gettext("obj_papdate_1125")
		global.msg[5] = scr_gettext("obj_papdate_1126")
		global.msg[6] = scr_gettext("obj_papdate_1127")
		global.msg[7] = scr_gettext("obj_papdate_1128")
		global.msg[8] = scr_gettext("obj_papdate_1129")
		global.msg[9] = scr_gettext("obj_papdate_1130")
		global.msg[10] = scr_gettext("obj_papdate_1131")
		global.msg[11] = scr_gettext("obj_papdate_1132")
		global.msg[12] = scr_gettext("obj_papdate_1133")
		global.msg[13] = scr_gettext("obj_papdate_1134")
	}
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
}
if (cn == 79 && instance_exists(OBJ_WRITER) == false)
{
	with (blcon)
		instance_destroy()
	cn = 80
	hspeed = 15
	alarm[2] = 60
}
if (cn == 81)
{
	hspeed = -30
	cn = 82
	alarm[2] = 30
}
if (cn == 83)
{
	hspeed = 0
	global.msg[0] = scr_gettext("obj_papdate_1175")
	global.msg[1] = scr_gettext("obj_papdate_1176")
	global.msg[2] = scr_gettext("obj_papdate_1177")
	global.msg[3] = scr_gettext("obj_papdate_1178")
	global.msg[4] = scr_gettext("obj_papdate_1179")
	scr_phoneget(210)
	blcon = instance_create((x + 145), (y + 22), obj_blconwdflowey)
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_WRITER)
	cn = 84
}
if (cn == 84 && instance_exists(OBJ_WRITER) == false)
{
	hspeed = 30
	with (blcon)
		instance_destroy()
	cn = 85
	alarm[2] = 30
	datevolume = 1
}
if (cn == 86)
{
	cn = 87
	d = instance_create(0, 0, obj_whitefader)
	d.tspeed = 0.03
	d.sprite_index = spr_pixblk
	alarm[2] = 50
}
if (cn == 87)
{
	datevolume -= 0.03
	if (datevolume < 0.04)
	{
		datevolume = 0
		cn = 88
	}
	caster_set_volume(papyrus, datevolume)
}
if (cn == 88)
{
	global.border = 0
	SCR_BORDERSETUP()
	FL_PapyrusDateCounter = 4
	ossafe_ini_open("undertale.ini")
	pd = ini_read_real("Papyrus", "PD", 0)
	ini_write_real("Papyrus", "PD", (pd + 1))
	ossafe_ini_close()
	ossafe_savedata_save()
	global.interact = 0
	instance_create(0, 0, obj_persistentfader)
	caster_free(all)
	room_goto(room_tundra_paproom)
}
