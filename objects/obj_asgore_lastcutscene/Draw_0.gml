if (con >= 4 && instance_exists(obj_btparent))
{
	if (obj_btparent.image_alpha > 0)
		obj_btparent.image_alpha -= 0.02
}
if (con >= 12 && instance_exists(obj_borderparent))
{
	obj_battlecontroller.drawbinfo = 0
	with (obj_hpname)
		instance_destroy()
	if (obj_borderparent.image_alpha > 0)
		obj_borderparent.image_alpha -= 0.02
}
if (asgore == 1)
{
	if (remove == 0)
	{
		draw_sprite_ext(spr_asgore_kneel, 0, asgorex, asgorey, 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_asgore_lastface, global.faceemotion, (asgorex + 136), (asgorey - 8), 2, 2, 0, c_white, 1)
	}
	if (remove == 1)
	{
		ry += 2
		if (ry < 49)
			draw_sprite_part_ext(spr_asgore_kneel, 0, 0, (0 + (ry * 2)), 183, (97 - (ry * 2)), asgorex, (asgorey + (ry * 4)), 2, 2, c_white, 1)
		if (ry < 27)
			draw_sprite_part_ext(spr_asgore_lastface, global.faceemotion, 0, (0 + (ry * 2)), 53, (54 - (ry * 2)), (asgorex + 136), ((asgorey - 8) + (ry * 4)), 2, 2, c_white, 1)
	}
}
if (con == 2)
{
	global.border = 0
	SCR_BORDERSETUP()
	global.mnfight = -2
	global.myfight = -2
	with (obj_dmgwriter)
		instance_destroy()
	con = 3
	alarm[4] = 50
}
if (con == 4)
{
	global.typer = 63
	global.msc = 0
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_243")
	global.msg[1] = scr_gettext("obj_asgore_lastcutscene_244")
	global.msg[2] = scr_gettext("obj_asgore_lastcutscene_245")
	global.msg[3] = scr_gettext("obj_asgore_lastcutscene_246")
	con = 5
	saddude = 1
	if (murder == 1)
	{
		global.msg[0] = scr_gettext("obj_asgore_lastcutscene_251")
		con = 20
	}
	scr_blcon_x((x + 300), (y + 20))
	blcon.sprite_index = spr_blconsm
}
if (con == 5 && instance_exists(OBJ_WRITER) == false)
{
	con = 6
	chokemusic = caster_load("music/chokedup.ogg")
	alarm[4] = 45
}
if (con == 7)
{
	caster_loop(chokemusic, 1, 1)
	saddude = 2
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_275")
	global.msg[1] = scr_gettext("obj_asgore_lastcutscene_276")
	global.msg[2] = scr_gettext("obj_asgore_lastcutscene_277")
	global.msg[3] = scr_gettext("obj_asgore_lastcutscene_278")
	global.msg[4] = scr_gettext("obj_asgore_lastcutscene_279")
	global.msg[5] = scr_gettext("obj_asgore_lastcutscene_280")
	global.msg[6] = scr_gettext("obj_asgore_lastcutscene_281")
	global.msg[7] = scr_gettext("obj_asgore_lastcutscene_282")
	global.msg[8] = scr_gettext("obj_asgore_lastcutscene_283")
	global.msg[9] = scr_gettext("obj_asgore_lastcutscene_284")
	global.msg[10] = scr_gettext("obj_asgore_lastcutscene_285")
	global.msg[11] = scr_gettext("obj_asgore_lastcutscene_286")
	var textOffset = (os_type == os_xboxone ? 0 : 6)
	scr_blcon_ofs((x + 270), (y + 20), 0, textOffset, 0)
	con = 8
}
if (con == 8 && instance_exists(OBJ_WRITER) == false)
{
	con = 9
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_294")
	global.msg[1] = scr_gettext("obj_asgore_lastcutscene_295")
	global.msg[2] = scr_gettext("obj_asgore_lastcutscene_296")
	global.msg[3] = scr_gettext("obj_asgore_lastcutscene_297")
	global.msg[4] = scr_gettext("obj_asgore_lastcutscene_298")
	global.msg[5] = scr_gettext("obj_asgore_lastcutscene_299")
	global.msg[6] = scr_gettext("obj_asgore_lastcutscene_300")
	global.msg[7] = scr_gettext("obj_asgore_lastcutscene_301")
	global.msg[8] = scr_gettext("obj_asgore_lastcutscene_302")
	global.msg[9] = scr_gettext("obj_asgore_lastcutscene_303")
	global.msg[10] = scr_gettext("obj_asgore_lastcutscene_304")
	global.msg[11] = scr_gettext("obj_asgore_lastcutscene_305")
	textOffset = (os_type == os_xboxone ? 0 : 6)
	scr_blcon_ofs((x + 270), (y + 20), 0, textOffset, 0)
	con = 10
}
if (con == 8 || con == 10 || con == 18 || con == 19)
	scr_textskip()
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
	fightbt2 = instance_create((global.idealborder[0] + 50), (global.idealborder[2] + 50), obj_anybt)
	fightbt2.type = 0
	fightbt2.sprite_index = scr_getsprite(spr_fightbt)
	sparebt2 = instance_create((global.idealborder[1] - 150), (global.idealborder[2] + 50), obj_anybt)
	sparebt2.type = 1
	sparebt2.sprite_index = scr_getsprite(spr_sparebt_bandage)
	obj_heart.x = -999
	fkhrt = instance_create(320, (global.idealborder[2] + 60), obj_fakeheart)
	con = 11
}
if (con == 15)
{
	caster_free(all)
	con = 16
	alarm[4] = 30
}
if (con == 17)
{
	msb = caster_load("music/musicbox.ogg")
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_340")
	global.msg[1] = scr_gettext("obj_asgore_lastcutscene_341")
	global.msg[2] = scr_gettext("obj_asgore_lastcutscene_342")
	global.msg[3] = scr_gettext("obj_asgore_lastcutscene_343")
	global.msg[4] = scr_gettext("obj_asgore_lastcutscene_344")
	scr_blcon_ofs((x + 270), (y + 20), 0, 6, 0)
	con = 18
}
if (con == 18 && instance_exists(OBJ_WRITER) == false)
{
	caster_loop(msb, 1, 1)
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_352")
	global.msg[1] = scr_gettext("obj_asgore_lastcutscene_353")
	global.msg[2] = scr_gettext("obj_asgore_lastcutscene_354")
	global.msg[3] = scr_gettext("obj_asgore_lastcutscene_355")
	global.msg[4] = scr_gettext("obj_asgore_lastcutscene_356")
	global.msg[5] = scr_gettext("obj_asgore_lastcutscene_357")
	global.msg[6] = scr_gettext("obj_asgore_lastcutscene_358")
	global.msg[7] = scr_gettext("obj_asgore_lastcutscene_359")
	scr_blcon_ofs((x + 270), (y + 20), 0, 6, 0)
	con = 19
	ossafe_ini_open("undertale.ini")
	IK = ini_read_real("Flowey", "IK", 0)
	CHANGE = ini_read_real("Flowey", "CHANGE", 0)
	K = ini_read_real("Flowey", "K", 0)
	SK = ini_read_real("Flowey", "SK", 0)
	ossafe_ini_close()
	q = 0
	if (global.kills == 0)
	{
		if (CHANGE == 0)
		{
			if (SK == 0)
			{
				if (IK > 0)
					q = 1
			}
		}
	}
	if (K == 1)
	{
		if (SK == 0)
			q = 1
	}
	if (q == 1)
		con = 130
}
if (con == 19 && instance_exists(OBJ_WRITER) == false)
{
	con = 18.5
	alarm[4] = 50
}
if (con == 19.5)
	con = 20
if (con == 20 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 5
	caster_free(all)
	instance_create((asgorex + 190), (asgorey - 30), obj_spinbullet_lastgen)
	con = 21
	alarm[4] = 70
}
if (con == 22)
{
	obj_spinbullet_last.targetx = (asgorex + 190)
	obj_spinbullet_last.targety = (asgorey + 110)
	with (obj_spinbullet_last)
	{
		move_towards_point(targetx, targety, 2)
		friction = -0.5
	}
	if (hearts == 1)
	{
		with (specbullet)
			speed = 0
	}
	con = 23
	alarm[4] = 20
}
if (con == 24)
{
	alarm[2] = 1
	snd_play(snd_damage)
	shudder = 16
	global.faceemotion = 4
	if (hearts == 1)
	{
		ssx = specbullet.x
		ssy = specbullet.y
	}
	with (obj_spinbullet_last)
		instance_destroy()
	if (hearts == 1)
		specbullet = instance_create(ssx, ssy, obj_spinbullet_last)
	con = 25
}
if (con == 30)
{
	ddd = instance_create(x, y, obj_vaporized_new)
	with (ddd)
		scr_newvapordata(NewMonsterVapor.Asgore)
	remove = 1
	ddd.sprite_index = spr_asgore_kneeldeath
	ddd.ht = ht
	ddd.wd = wd
	room_speed = 10
	con = 31
	alarm[4] = 40
}
if (con == 32)
{
	room_speed = 30
	asgore = 0
	fh = instance_create((asgorex + 190), (asgorey + 110), obj_asgfakeheart)
	con = 33
	alarm[4] = 40
}
if (con == 34)
{
	with (specbullet)
		move_towards_point(obj_asgfakeheart.x, obj_asgfakeheart.y, 4)
	con = 35
	alarm[4] = 35
}
if (con == 36)
{
	depth = 1
	with (obj_spinbullet_last)
		instance_destroy()
	with (obj_asgfakeheart)
		event_user(0)
	con = 37
	alarm[4] = 110
	if (murder == 1)
		alarm[4] = 60
}
if (con == 38)
{
	global.faceemotion = 0
	flowey = 1
	fimg = 0
	if (murder == 0)
	{
		con = 95
		alarm[4] = 60
		ossafe_ini_open("undertale.ini")
		won = ini_read_real("General", "Won", 0)
		if (won > 0)
		{
			con = 119
			alarm[4] = 60
		}
	}
	else
		con = 150
}
if (con == 45)
{
	caster_free(all)
	con = 46
	alarm[4] = 20
}
if (con == 47)
{
	FL_KilledAsgore = 1
	global.stretch = 1.5
	strike = instance_create((asgorex + 195), (asgorey + 150), obj_slice)
	con = 49
	alarm[4] = global.damagetimer
}
if (con == 50)
{
	alarm[2] = 1
	snd_play(snd_damage)
	shudder = 16
	global.faceemotion = 6
	con = 51
}
if (con == 58)
{
	ddd = instance_create(x, y, obj_vaporized_new)
	with (ddd)
		scr_newvapordata(NewMonsterVapor.Asgore)
	remove = 1
	ddd.sprite_index = spr_asgore_kneeldeath
	ddd.ht = ht
	ddd.wd = wd
	room_speed = 10
	con = 59
	alarm[4] = 40
}
if (con == 60)
{
	room_speed = 30
	asgore = 0
	fh = instance_create((asgorex + 180), (asgorey + 100), obj_asgfakeheart)
	con = 62
	alarm[4] = 90
}
if (con == 63)
{
	obj_asgfakeheart.shake = 0
	spb = instance_create((asgorex + 190), (asgorey - 15), obj_spinbullet_lastgen)
	spb.speed = 20
	con = 64
	alarm[4] = 50
}
if (con == 65)
{
	obj_spinbullet_last.targetx = (obj_asgfakeheart.x + 2)
	obj_spinbullet_last.targety = (obj_asgfakeheart.y + 2)
	with (obj_spinbullet_last)
	{
		move_towards_point(targetx, targety, 2)
		friction = -0.5
	}
	con = 66
	alarm[4] = 18
}
if (con == 67)
	con = 36
if (flowey == 1)
{
	draw_sprite_ext(spr_flowey_riseanim, fimg, 285, 150, 2, 2, 0, c_white, 1)
	if (murder == 1 && fimg >= 8)
		draw_sprite_ext(spr_flowey_as, global.faceemotion, 285, 150, 2, 2, 0, c_white, 1)
	if (fimg < 8)
		fimg += 0.5
}
if (flowey == 3)
{
	draw_sprite_ext(spr_flowey_toskull, fimg2, 285, 150, 2, 2, 0, c_white, 1)
	if (fimg2 < 4)
		fimg2 += 0.04
}
if (flowey == 4)
{
	draw_sprite_ext(spr_flowey_skulllaugh, fimg2, 285, 150, 2, 2, 0, c_white, 1)
	fimg2 += 0.5
}
if (con == 96)
{
	global.msc = 0
	global.typer = 66
	if (hearts == 1)
	{
		global.msg[0] = scr_gettext("obj_asgore_lastcutscene_623")
		ossafe_ini_open("undertale.ini")
		truename = ini_read_real("Flowey", "truename", 0)
		ossafe_ini_close()
		if (truename == 1)
			global.msg[0] = scr_gettext("obj_asgore_lastcutscene_627")
		global.msg[1] = scr_gettext("obj_asgore_lastcutscene_628")
	}
	if (hearts == 0)
	{
		global.msg[0] = scr_gettext("obj_asgore_lastcutscene_632")
		global.msg[1] = scr_gettext("obj_asgore_lastcutscene_633")
		ossafe_ini_open("undertale.ini")
		truename = ini_read_real("Flowey", "truename", 0)
		ossafe_ini_close()
		if (truename == 1)
		{
			global.msg[0] = scr_gettext("obj_asgore_lastcutscene_639")
			global.msg[1] = scr_gettext("obj_asgore_lastcutscene_640")
		}
	}
	scr_blcon_x(360, 140)
	obj_blconwideslave.sprite_index = spr_blconsm
	con = 97
}
if (con == 97 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_651")
	scr_blcon_x(360, 140)
	obj_blconwideslave.sprite_index = spr_blconsm
	con = 100
}
if (con == 100)
{
	rowdy = 1
	radius = 400
	angle = 0
	for (i = 0; i < 6; i += 1)
	{
		ang[i] = (i * 60)
		xx = (lengthdir_x(radius, ang[i]) + 320)
		yy = (lengthdir_y(radius, ang[i]) + 170)
		heart[i] = instance_create(xx, yy, obj_spinbullet_last)
		heart[i].image_speed = 0
		if (i == 0)
			heart[i].sprite_index = spr_heartyellow
		if (i == 1)
			heart[i].sprite_index = spr_heartorange
		if (i == 2)
			heart[i].sprite_index = spr_heartpurple
		if (i == 3)
			heart[i].sprite_index = spr_heartblue
		if (i == 4)
			heart[i].sprite_index = spr_heartaqua
		if (i == 5)
			heart[i].sprite_index = spr_heartgreen
	}
	fimg2 = 0
	con = 99.5
}
if (con == 99.5 && instance_exists(OBJ_WRITER) == false)
{
	cym = caster_load("music/cymbal.ogg")
	con = 102
	flowey = 3
	global.typer = 67
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_692")
	instance_create(120, 350, OBJ_WRITER)
}
if (con == 102 && instance_exists(OBJ_WRITER) == false)
{
	caster_play(cym, 1, 1)
	snd_play(snd_floweylaugh)
	flowey = 4
	con = 103
	wht = 0
	alarm[4] = 2
}
if (con == 104)
{
	rowdy = 2
	con = 105
	with (heart[0])
		secrettrick = 1
	alarm[4] = 160
	if (global.osflavor > 2)
		alarm[4] += 90
}
if (con == 106)
{
	white_blocker = scr_marker(-10, -10, spr_pixwht)
	white_blocker.image_xscale = 900
	white_blocker.image_yscale = 900
	global.filechoice = 8
	global.currentroom = room_flowey_endchoice
	scr_saveprocess()
	if (global.osflavor == OSFlavors.PC)
	{
		if file_exists("undertale.exe")
			file_rename("undertale.exe", "flowey.exe")
	}
	ossafe_ini_open("undertale.ini")
	ini_write_real("FFFFF", "F", 1)
	ossafe_ini_close()
	ossafe_savedata_save()
	con = 107
}
if (con == 120)
{
	rowdy = 1
	radius = 400
	angle = 0
	for (i = 0; i < 6; i += 1)
	{
		ang[i] = (i * 60)
		xx = (lengthdir_x(radius, ang[i]) + 320)
		yy = (lengthdir_y(radius, ang[i]) + 170)
		heart[i] = instance_create(xx, yy, obj_spinbullet_last)
		heart[i].image_speed = 0
		if (i == 0)
			heart[i].sprite_index = spr_heartyellow
		if (i == 1)
			heart[i].sprite_index = spr_heartorange
		if (i == 2)
			heart[i].sprite_index = spr_heartpurple
		if (i == 3)
			heart[i].sprite_index = spr_heartblue
		if (i == 4)
			heart[i].sprite_index = spr_heartaqua
		if (i == 5)
			heart[i].sprite_index = spr_heartgreen
	}
	fimg2 = 0
	con = 121
}
if (con == 121)
{
	global.msc = 0
	global.typer = 6
	if (won == 1)
	{
		global.msg[0] = scr_gettext("obj_asgore_lastcutscene_769")
		global.msg[1] = scr_gettext("obj_asgore_lastcutscene_770")
		global.msg[2] = scr_gettext("obj_asgore_lastcutscene_771")
		global.msg[3] = scr_gettext("obj_asgore_lastcutscene_772")
		ossafe_ini_open("undertale.ini")
		kill = ini_read_real("Flowey", "K", 0)
		if (kill == 1)
		{
			global.msg[0] = scr_gettext("obj_asgore_lastcutscene_778")
			global.msg[1] = scr_gettext("obj_asgore_lastcutscene_779")
			global.msg[2] = scr_gettext("obj_asgore_lastcutscene_780")
			global.msg[3] = scr_gettext("obj_asgore_lastcutscene_781")
			global.msg[4] = scr_gettext("obj_asgore_lastcutscene_782")
			global.msg[5] = scr_gettext("obj_asgore_lastcutscene_783")
			global.msg[6] = scr_gettext("obj_asgore_lastcutscene_784")
		}
	}
	if (won == 2)
		global.msg[0] = scr_gettext("obj_asgore_lastcutscene_792")
	if (won >= 3)
		global.msg[0] = scr_gettext("obj_asgore_lastcutscene_796")
	con = 122
	scr_blcon_x(390, 140)
	obj_blconwideslave.depth = -9000
	OBJ_WRITER.depth = -90000
}
if (con == 122 && instance_exists(OBJ_WRITER) == false)
{
	rowdy = 2
	with (heart[0])
		secrettrick = 1
	cym = caster_load("music/cymbal.ogg")
	caster_play(cym, 1, 1)
	con = 123
	wht = 0
	alarm[4] = 150
}
if (con == 130 && instance_exists(OBJ_WRITER) == false)
{
	con = 131
	alarm[4] = 50
}
if (con == 132 && instance_exists(OBJ_WRITER) == false)
{
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "SK", 1)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.typer = 63
	global.msc = 0
	caster_stop(all)
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_831")
	global.msg[1] = scr_gettext("obj_asgore_lastcutscene_832")
	global.msg[2] = scr_gettext("obj_asgore_lastcutscene_833")
	global.msg[3] = scr_gettext("obj_asgore_lastcutscene_834")
	global.msg[4] = scr_gettext("obj_asgore_lastcutscene_835")
	global.msg[5] = scr_gettext("obj_asgore_lastcutscene_836")
	global.msg[6] = scr_gettext("obj_asgore_lastcutscene_837")
	global.msg[7] = scr_gettext("obj_asgore_lastcutscene_838")
	global.msg[8] = scr_gettext("obj_asgore_lastcutscene_839")
	global.msg[9] = scr_gettext("obj_asgore_lastcutscene_840")
	global.msg[10] = scr_gettext("obj_asgore_lastcutscene_841")
	global.msg[11] = scr_gettext("obj_asgore_lastcutscene_842")
	scr_blcon_x((x + 270), (y + 20))
	con = 133
	remdepth = depth
}
if (con == 133 && instance_exists(OBJ_WRITER) == false)
{
	cut = caster_load("music/sfx_cinematiccut.ogg")
	caster_play(cut, 1, 0.9)
	alarm[4] = 80
	con = 134
	wht = 0
	depth = -999999
}
if (con == 134)
{
	draw_set_color(c_white)
	draw_set_alpha(wht)
	wht += 0.2
	ossafe_fill_rectangle(-10, -10, 999, 999)
	draw_set_alpha(1)
	con = 134
}
if (con == 135)
{
	con = 136
	snd_play(snd_damage)
	alarm[4] = 80
}
if (con == 136)
{
	draw_set_color(c_black)
	draw_set_alpha(1)
	ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (con == 137)
{
	depth = remdepth
	global.faceemotion = 0
	global.msc = 0
	global.typer = 64
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_898")
	global.msg[1] = scr_gettext("obj_asgore_lastcutscene_899")
	global.msg[2] = scr_gettext("obj_asgore_lastcutscene_900")
	global.msg[3] = scr_gettext("obj_asgore_lastcutscene_901")
	global.msg[4] = scr_gettext("obj_asgore_lastcutscene_902")
	global.msg[5] = scr_gettext("obj_asgore_lastcutscene_903")
	scr_blcon_x((x + 270), (y + 20))
	con = 138
}
if (con == 138 && instance_exists(OBJ_WRITER) == false)
{
	con = 139
	alarm[4] = 30
}
if (con == 140)
	con = 58
if (rowdy == 1)
{
	angle += 4
	if (radius > 180)
		radius -= 5
	radius += (sin((angle / 16)) * 2)
	for (i = 0; i < 6; i += 1)
	{
		ang[i] = ((i * 60) + angle)
		xx = (lengthdir_x(radius, ang[i]) + 320)
		yy = (lengthdir_y(radius, ang[i]) + 170)
		heart[i].x = xx
		heart[i].y = yy
	}
}
if (rowdy == 2)
{
	angle += 1
	if (radius > 0)
		radius -= 1.5
	for (i = 0; i < 6; i += 1)
	{
		ang[i] = ((i * 60) + angle)
		xx = (lengthdir_x(radius, ang[i]) + 320)
		yy = (lengthdir_y(radius, ang[i]) + 170)
		heart[i].x = xx
		heart[i].y = yy
	}
}
if (con == 999)
{
	draw_set_color(c_white)
	draw_set_alpha(wht)
	wht += 0.01
	ossafe_fill_rectangle(-10, -10, 999, 999)
	draw_set_alpha(1)
}
if (con == 124)
{
	caster_free(all)
	instance_create(0, 0, obj_persistentfader)
	room_goto(room_castle_exit)
}
if (con == 150)
{
	global.msc = 0
	global.typer = 6
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_979")
	global.msg[1] = scr_gettext("obj_asgore_lastcutscene_980")
	global.msg[2] = scr_gettext("obj_asgore_lastcutscene_981")
	global.msg[3] = scr_gettext("obj_asgore_lastcutscene_982")
	global.msg[4] = scr_gettext("obj_asgore_lastcutscene_983")
	global.msg[5] = scr_gettext("obj_asgore_lastcutscene_984")
	con = 151
	scr_blcon_ofs(390, 140, 0, 6, 0)
	obj_blconwideslave.depth = -9000
	OBJ_WRITER.depth = -90000
}
if (con == 151 && instance_exists(OBJ_WRITER) == false)
{
	global.msc = 0
	global.typer = 102
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_995")
	con = 152
	scr_blcon_ofs(390, 140, 0, 6, 0)
	obj_blconwideslave.depth = -9000
	OBJ_WRITER.depth = -90000
}
if (con == 152 && instance_exists(OBJ_WRITER) == false)
{
	global.msc = 0
	global.typer = 103
	global.msg[0] = scr_gettext("obj_asgore_lastcutscene_1006")
	con = 153
	scr_blcon_x(390, 140)
	obj_blconwideslave.depth = -9000
	OBJ_WRITER.depth = -90000
}
if (con == 153 && instance_exists(OBJ_WRITER) == false)
{
	instance_create(285, 150, obj_floweygonk)
	instance_destroy()
}
