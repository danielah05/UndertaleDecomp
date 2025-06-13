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
	if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0])
		alarm[5] = 2
}
if (global.hurtanim[myself] == 1)
{
	global.faceemotion = 6
	caster_stop(global.batmusic)
	con = 15
	global.hurtanim[myself] = 99
}
if (global.hurtanim[myself] == 2 && con == 20)
{
	with (dmgwriter)
		alarm[2] = 15
	con = 20.1
	global.myfight = 0
	global.mnfight = 99
}
if (global.hurtanim[myself] == 5)
{
	if (global.damage > 0)
		global.damage = (20000 + round(random(2964)))
	instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
	with (obj_dmgwriter)
		alarm[2] = 30
	global.myfight = 0
	global.mnfight = 1
	global.hurtanim[myself] = 0
}
if (global.hurtanim[myself] == 5)
{
	global.damage = (20000 + round(random(2964)))
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
		if (mycommand >= 50)
		{
			gen = instance_create(x, y, obj_lavafiregen)
			gen.dmg = global.monsteratk[myself]
		}
		else
			gen = instance_create((((global.idealborder[0] + global.idealborder[1]) / 2) - 30), (global.idealborder[2] + 2), obj_vulkincloudbul)
		attacked = 1
	}
	global.msg[0] = scr_gettext("obj_mkid_battle_450")
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
				global.msg[0] = scr_gettext("obj_mkid_battle_479")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			global.heard = 1
		}
	}
}
if (con == 15)
{
	FL_AnimationIndex = 1
	wht = scr_marker(-2, -2, spr_pixwht)
	wht.image_speed = 0
	wht.image_xscale = 400
	wht.image_yscale = 400
	wht.image_alpha = 0
	wht.depth = -9000
	con = 16
}
if (con == 16)
{
	wht.image_alpha += 0.02
	if (global.tempvalue[13] == 1)
		wht.image_alpha += 0.02
	if (wht.image_alpha >= 1)
	{
		con = 17
		alarm[4] = 45
		if (global.tempvalue[13] == 1)
			alarm[4] = 15
	}
}
if (con == 18)
{
	global.faceemotion = 0
	undyne = instance_create(210, 20, obj_mkid_b_body)
	undyne.sprite_index = spr_undyneb_fatal
	undyne.image_index = 0
	undyne.type = 1
	shk = instance_create(0, 0, obj_objshake)
	shk.obj = undyne
	mypart1.x = 70
	with (wht)
		instance_destroy()
	con = 19
	shudder = 8
	alarm[3] = 1
	global.hurtanim[myself] = 3
}
if (con == 20.1)
{
	con = 20.2
	alarm[4] = 80
	if (global.tempvalue[13] == 1)
		alarm[4] = 30
}
if (con == 21.2)
{
	global.msc = 0
	global.typer = 33
	skiptext = 0
	global.faceemotion = 0
	FL_AnimationIndex = 2
	global.msg[0] = scr_gettext("obj_mkid_battle_553")
	scr_blcon_x((mypart1.x - 65), (mypart1.y - 110))
	obj_blconwideslave.sprite_index = spr_blconabove
	blcon.depth = -2000
	OBJ_WRITER.depth = -3000
	con = 23
}
if (con == 23 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 1
	global.typer = 39
	global.msg[0] = scr_gettext("obj_mkid_battle_565")
	global.msg[1] = scr_gettext("obj_mkid_battle_566")
	scr_blcon_x((undyne.x + 160), undyne.y)
	con = 24
}
if (con == 24 && instance_exists(OBJ_WRITER) == false)
{
	global.typer = 33
	global.msg[0] = scr_gettext("obj_mkid_battle_574")
	scr_blcon_x((mypart1.x - 65), (mypart1.y - 110))
	obj_blconwideslave.sprite_index = spr_blconabove
	con = 25
}
if (con == 25 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 2
	global.typer = 39
	global.msg[0] = scr_gettext("obj_mkid_battle_584")
	global.msg[1] = scr_gettext("obj_mkid_battle_585")
	scr_blcon_x((undyne.x + 160), undyne.y)
	con = 26
}
if (con == 26 && instance_exists(OBJ_WRITER) == false)
{
	FL_AnimationIndex = 3
	con = 27
	alarm[4] = 30
	if (global.tempvalue[13] == 1)
	{
		mypart1.hspeed = -12
		con = 199
		alarm[4] = 10
	}
}
if (con == 28)
{
	mypart1.hspeed = -2
	con = 29
	alarm[4] = 30
}
if (con == 30)
{
	con = 31
	mypart1.hspeed = 0
	alarm[4] = 30
}
if (con == 32)
{
	mypart1.hspeed = -8
	con = 33
	alarm[4] = 80
}
if (con == 34)
{
	siner = instance_create(undyne.x, undyne.y, obj_generalsiner)
	siner.idealww = 4
	global.faceemotion = 3
	global.typer = 40
	global.msg[0] = scr_gettext("obj_mkid_battle_632")
	global.msg[1] = scr_gettext("obj_mkid_battle_633")
	global.msg[2] = scr_gettext("obj_mkid_battle_634")
	global.msg[3] = scr_gettext("obj_mkid_battle_635")
	global.msg[4] = scr_gettext("obj_mkid_battle_636")
	scr_blcon_x((undyne.x + 160), undyne.y)
	con = 35
}
if (con == 34 && instance_exists(OBJ_WRITER) == false)
{
	if (OBJ_WRITER.stringno == 1)
		siner.idealww = 6
	if (OBJ_WRITER.stringno == 2)
		siner.idealww = 8
	if (OBJ_WRITER.stringno == 3)
		siner.idealww = 10
	if (OBJ_WRITER.stringno == 4)
		siner.idealww = 12
}
if (con == 35 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 4
	global.typer = 42
	global.msg[0] = scr_gettext("obj_mkid_battle_655")
	global.msg[1] = scr_gettext("obj_mkid_battle_656")
	global.msg[2] = scr_gettext("obj_mkid_battle_657")
	scr_blcon_x((undyne.x + 160), undyne.y)
	con = 36
}
if (con == 35 && instance_exists(OBJ_WRITER) == false)
{
	if (OBJ_WRITER.stringno == 1)
		siner.idealww = 15
	if (OBJ_WRITER.stringno == 2)
		siner.idealww = 20
	if (OBJ_WRITER.stringno == 3)
		siner.idealww = 25
}
if (con == 36 && instance_exists(OBJ_WRITER) == false)
{
	if (siner.idealww != 45)
		snd_play(snd_vaporized)
	siner.idealww = 45
	if (siner.ww >= 45)
	{
		con = 37
		alarm[4] = 60
	}
}
if (con == 38)
{
	vol = 0
	global.faceemotion = 5
	siner.idealww = 8
	global.typer = 41
	global.msg[0] = scr_gettext("obj_mkid_battle_689")
	global.msg[1] = scr_gettext("obj_mkid_battle_690")
	scr_blcon_x((undyne.x + 160), undyne.y)
	con = 39
}
if (con == 39 && instance_exists(OBJ_WRITER) == false)
{
	vol = 0
	truthmusic = caster_load("music/x_undyne_pre.ogg")
	caster_loop(truthmusic, vol, 0.9)
	global.faceemotion = 5
	global.typer = 41
	global.msg[0] = scr_gettext("obj_mkid_battle_702")
	global.msg[1] = scr_gettext("obj_mkid_battle_703")
	global.msg[2] = scr_gettext("obj_mkid_battle_704")
	global.msg[3] = scr_gettext("obj_mkid_battle_705")
	global.msg[4] = scr_gettext("obj_mkid_battle_706")
	global.msg[5] = scr_gettext("obj_mkid_battle_707")
	global.msg[6] = scr_gettext("obj_mkid_battle_708")
	global.msg[7] = scr_gettext("obj_mkid_battle_709")
	global.msg[8] = scr_gettext("obj_mkid_battle_710")
	global.msg[9] = scr_gettext("obj_mkid_battle_711")
	global.msg[10] = scr_gettext("obj_mkid_battle_712")
	global.msg[11] = scr_gettext("obj_mkid_battle_713")
	global.msg[12] = scr_gettext("obj_mkid_battle_714")
	global.msg[13] = scr_gettext("obj_mkid_battle_715")
	global.msg[14] = scr_gettext("obj_mkid_battle_716")
	global.msg[15] = scr_gettext("obj_mkid_battle_717")
	global.msg[16] = scr_gettext("obj_mkid_battle_718")
	global.msg[17] = scr_gettext("obj_mkid_battle_719")
	scr_blcon_x((undyne.x + 160), undyne.y)
	con = 40
}
if (con == 40 && instance_exists(OBJ_WRITER) == false)
{
	global.typer = 42
	global.msg[0] = scr_gettext("obj_mkid_battle_728")
	scr_blcon_x((undyne.x + 160), undyne.y)
	con = 41
}
if (con == 40 || con == 41)
{
	if (vol <= 0.8)
		vol += 0.02
	caster_set_volume(truthmusic, vol)
}
if (con == 41 && instance_exists(OBJ_WRITER) == false)
{
	caster_free(truthmusic)
	risesfx = caster_load("music/f_destroyed2.ogg")
	vol = 0
	pit = 0.5
	caster_loop(risesfx, 0, 0.5)
	siner.idealww = 50
}
if (con == 41 && instance_exists(OBJ_WRITER) == false)
{
	wht = scr_marker(-2, -2, spr_pixwht)
	wht.image_speed = 0
	wht.image_xscale = 400
	wht.image_yscale = 400
	wht.image_alpha = 0
	con = 42
}
if (con == 42)
{
	wht.image_alpha += 0.01
	if (wht.image_alpha >= 1)
	{
		con = 43
		alarm[4] = 55
	}
}
if (con == 42)
{
	if (vol < 1)
		vol += 0.01
	if (pit < 2)
		pit += 0.01
	caster_set_volume(risesfx, vol)
	caster_set_pitch(risesfx, pit)
}
if (con == 43)
{
	if (vol > 0)
		vol -= 0.03
	if (pit < 2)
		pit += 0.02
	caster_set_volume(risesfx, vol)
	caster_set_pitch(risesfx, pit)
}
if (con == 44)
{
	with (wht)
		instance_destroy()
	caster_free(risesfx)
	undyne.sprite_index = spr_undynex_example
	undyne.y = -40
	siner.yy = 0
	siner.y = 0
	con = 45
	alarm[4] = 30
}
if (con == 46)
{
	siner.idealww = 0
	con = 47
	alarm[4] = 100
}
if (con == 47)
{
	if (siner.ww > 0)
		siner.ww -= 0.5
}
if (con == 48)
{
	with (siner)
		instance_destroy()
	global.typer = 93
	global.msc = 0
	global.msg[0] = scr_gettext("obj_mkid_battle_827")
	scr_blcon_x((undyne.x + 163), (undyne.y + 50))
	con = 49
}
if (con == 49 && instance_exists(OBJ_WRITER) == false)
{
	global.battlegroup = BattleGroup.UndyneTheUndying
	caster_free(all)
	room_restart()
}
if (con >= 20 && con <= 47)
	scr_textskip()
if (con == 99)
{
	FL_SparedSpecific = 1
	instance_create(0, 0, obj_unfader)
	cc = caster_get_volume(global.batmusic)
	con = 100
	alarm[4] = 15
}
if (con == 100)
{
	cc *= 0.6
	caster_set_volume(global.batmusic, cc)
}
if (con == 101)
{
	caster_free(global.batmusic)
	instance_create(0, 0, obj_persistentfader)
	room_goto(global.currentroom)
}
if (con == 200)
{
	siner = instance_create(undyne.x, undyne.y, obj_generalsiner)
	siner.idealww = 4
	global.faceemotion = 5
	siner.idealww = 8
	global.typer = 40
	global.msg[0] = scr_gettext("obj_mkid_battle_883")
	global.msg[1] = scr_gettext("obj_mkid_battle_884")
	scr_blcon_x((undyne.x + 166), undyne.y)
	con = 201
}
if (con == 201)
	scr_textskip()
if (con == 201 && instance_exists(OBJ_WRITER) == false)
{
	risesfx = caster_load("music/f_destroyed2.ogg")
	vol = 0
	pit = 0.5
	caster_loop(risesfx, 0, 0.5)
	siner.idealww = 50
	wht = scr_marker(-2, -2, spr_pixwht)
	wht.image_speed = 0
	wht.image_xscale = 400
	wht.image_yscale = 400
	wht.image_alpha = 0
	con = 202
}
if (con == 202)
{
	wht.image_alpha += 0.02
	if (wht.image_alpha >= 1)
	{
		con = 203
		alarm[4] = 55
	}
}
if (con == 202)
{
	if (vol < 1)
		vol += 0.02
	if (pit < 2)
		pit += 0.02
	caster_set_volume(risesfx, vol)
	caster_set_pitch(risesfx, pit)
}
if (con == 203)
{
	if (vol > 0)
		vol -= 0.03
	if (pit < 2)
		pit += 0.02
	caster_set_volume(risesfx, vol)
	caster_set_pitch(risesfx, pit)
}
if (con == 204 && instance_exists(OBJ_WRITER) == false)
{
	global.battlegroup = BattleGroup.UndyneTheUndying
	caster_free(all)
	room_restart()
}
if (global.myfight == 4)
{
	if (global.mercyuse == false)
	{
		con = 99
		global.myfight = -99
		global.mnfight = -99
		scr_mercystandard()
	}
}
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
	scr_mercystandard()
