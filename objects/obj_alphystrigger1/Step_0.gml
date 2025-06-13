if (con == 1)
{
	FL_AnimationIndex = 0
	alphys = instance_create((obj_slidingdoor.x + 10), (obj_slidingdoor.y + 5), obj_alphys_actor)
	alphys.d = 1
	alphys.depth = (obj_slidingdoor.depth + 1)
	lab = caster_load("music/lab.ogg")
	smash = caster_load("music/mettsmash.ogg")
	gameshow = caster_load("music/mtgameshow.ogg")
	instance_create(0, 0, obj_musfadeout)
	obj_mainchara.cutscene = true
	con = 2
	alarm[4] = 50
}
if (con == 2)
	view_xview_set(0, (view_xview_get(0) + 2))
if (con == 3)
{
	con = 4
	alarm[4] = 30
}
if (con == 5)
{
	with (obj_slidingdoor)
		event_user(0)
	con = 6
	alarm[4] = 15
}
if (con == 7)
{
	alphys.d = 0
	alphys.vspeed = 2
	con = 8
	alarm[4] = 15
}
if (con == 9)
{
	with (obj_slidingdoor)
		event_user(1)
	con = 10
}
if (con == 10)
{
	if (alphys.y >= (obj_mainchara.y - 4))
	{
		con = 11
		alarm[4] = 60
		alphys.vspeed = 0
		alphys.image_speed = 0
	}
}
if (con == 12)
{
	snd_play(snd_noise)
	with (obj_labdarkness)
		instance_destroy()
	con = 13
	alarm[4] = 80
}
if (con == 14)
{
	alphys.sprite_index = alphys.lsprite
	alphys.direction = 180
	alphys.speed = 3
	con = 15
	alarm[4] = 25
}
if (con == 16)
{
	alphys.speed = 0
	blc = instance_create(alphys.x, (alphys.y - 6), obj_cosmeticblcon)
	snd_play(snd_b)
	con = 17
	alarm[4] = 60
}
if (con == 18)
{
	with (blc)
		instance_destroy()
	alphys.fun = true
	alphys.sprite_index = spr_alphys_freaked
	global.facechoice = 6
	global.faceemotion = 3
	global.typer = 47
	global.msc = 0
	global.msg[0] = scr_gettext("obj_alphystrigger1_166")
	instance_create(0, 0, obj_dialoguer)
	con = 19
}
if (con == 19 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_alphystrigger1_175")
	global.msg[1] = scr_gettext("obj_alphystrigger1_176")
	instance_create(0, 0, obj_dialoguer)
	con = 20
	alphys.sprite_index = alphys.lsprite
	alphys.image_speed = 0.334
}
if (con == 20)
{
	looktimer += 1
	if (looktimer > 8)
	{
		rr = floor(random(4))
		if (rr == 0)
			alphys.sprite_index = alphys.lsprite
		if (rr == 1)
			alphys.sprite_index = alphys.rsprite
		if (rr == 2)
			alphys.sprite_index = alphys.usprite
		if (rr == 3)
			alphys.sprite_index = alphys.dsprite
		looktimer = 0
	}
}
if (con == 20 && instance_exists(OBJ_WRITER) == false)
{
	con = 21
	alarm[4] = 100
}
if (con == 21)
	alphys.image_speed -= 0.0033
if (con == 22)
{
	alphys.image_index = 0
	alphys.sprite_index = alphys.ltsprite
	alphys.fun = false
	con = 23
	alarm[4] = 50
}
if (con == 24)
{
	con = 25
	caster_loop(lab, 1, 1)
	labvolume = 1
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_alphystrigger1_224")
	global.msg[1] = scr_gettext("obj_alphystrigger1_225")
	global.msg[2] = scr_gettext("obj_alphystrigger1_226")
	global.msg[3] = scr_gettext("obj_alphystrigger1_227")
	global.msg[4] = scr_gettext("obj_alphystrigger1_228")
	global.msg[5] = scr_gettext("obj_alphystrigger1_229")
	global.msg[6] = scr_gettext("obj_alphystrigger1_230")
	global.msg[7] = scr_gettext("obj_alphystrigger1_231")
	ossafe_ini_open("undertale.ini")
	ad = ini_read_real("Alphys", "AD", 0)
	ossafe_ini_close()
	global.msg[8] = scr_gettext("obj_alphystrigger1_236")
	if (ad > 0)
		global.msg[8] = scr_gettext("obj_alphystrigger1_237")
	global.msg[9] = scr_gettext("obj_alphystrigger1_238")
	global.msg[10] = scr_gettext("obj_alphystrigger1_239")
	global.msg[11] = scr_gettext("obj_alphystrigger1_240")
	global.msg[12] = scr_gettext("obj_alphystrigger1_241")
	global.msg[13] = scr_gettext("obj_alphystrigger1_242")
	global.msg[14] = scr_gettext("obj_alphystrigger1_243")
	global.msg[15] = scr_gettext("obj_alphystrigger1_244")
	global.msg[16] = scr_gettext("obj_alphystrigger1_245")
	global.msg[17] = scr_gettext("obj_alphystrigger1_246")
	global.msg[18] = scr_gettext("obj_alphystrigger1_247")
	global.msg[19] = scr_gettext("obj_alphystrigger1_248")
	global.msg[20] = scr_gettext("obj_alphystrigger1_249")
	global.msg[21] = scr_gettext("obj_alphystrigger1_250")
	global.msg[22] = scr_gettext("obj_alphystrigger1_251")
	global.msg[23] = scr_gettext("obj_alphystrigger1_252")
	global.msg[24] = scr_gettext("obj_alphystrigger1_253")
	global.msg[25] = scr_gettext("obj_alphystrigger1_254")
	global.msg[26] = scr_gettext("obj_alphystrigger1_255")
	global.msg[27] = scr_gettext("obj_alphystrigger1_256")
	global.msg[28] = scr_gettext("obj_alphystrigger1_257")
	instance_create(0, 0, obj_dialoguer)
}
if (con == 25 && instance_exists(OBJ_WRITER) == false)
{
	labvolume -= 0.03
	caster_set_volume(lab, labvolume)
	if (labvolume <= 0)
	{
		con = 26
		alarm[4] = 60
		caster_stop(lab)
	}
}
if (con == 27)
{
	scr_shake(2, 2, 2)
	caster_play(smash, 0.25, 1)
	scr_bouncer(alphys, 2, 0.8)
	scr_bouncer(obj_mainchara, 2, 0.8)
	con = 28
	alarm[4] = 30
}
if (con == 29)
{
	global.faceemotion = 1
	global.msg[0] = scr_gettext("obj_alphystrigger1_288")
	instance_create(0, 0, obj_dialoguer)
	con = 30
}
if (con == 30 && instance_exists(OBJ_WRITER) == false)
{
	con = 31
	alarm[4] = 30
}
if (con == 32)
{
	scr_shake(3, 3, 2)
	caster_play(smash, 0.4, 1)
	scr_bouncer(alphys, 3, 1)
	scr_bouncer(obj_mainchara, 3, 1)
	con = 33
	alarm[4] = 30
}
if (con == 34)
{
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_alphystrigger1_312")
	instance_create(0, 0, obj_dialoguer)
	con = 35
}
if (con == 35 && instance_exists(OBJ_WRITER) == false)
{
	con = 36
	alarm[4] = 30
	smashamt = 0
}
if (con == 37)
{
	caster_play(smash, (0.5 + smashamt), 1)
	scr_shake(3, 3, 2)
	scr_bouncer(alphys, 4, 1)
	scr_bouncer(obj_mainchara, 4, 1)
	con = 38
	alarm[4] = 30
}
if (con == 39)
{
	con = 37
	smashamt += 0.1
	if (smashamt > 0.4)
		con = 40
}
if (con == 40)
{
	global.faceemotion = 3
	global.msg[0] = scr_gettext("obj_alphystrigger1_344")
	instance_create(0, 0, obj_dialoguer)
	con = 41
}
if (con == 41 && instance_exists(OBJ_WRITER) == false)
{
	con = 42
	alarm[4] = 20
}
if (con == 43)
{
	snd_play(snd_laz)
	wht = instance_create(0, 0, obj_whitesploder)
	con = 44
	alarm[4] = 40
}
if (con == 45)
{
	blk = instance_create((view_xview_get(0) - 2), -2, obj_npc_marker)
	blk.depth = (wht.depth - 2)
	blk.image_alpha = 0
	blk.visible = true
	blk.image_speed = 0
	blk.sprite_index = spr_pixblk
	blk.image_xscale = 200
	blk.image_yscale = 200
	con = 46
}
if (con == 46)
{
	cheer = caster_load("music/mett_cheer.ogg")
	clap = caster_load("music/mett_applause.ogg")
	blk.image_alpha += 0.02
	if (blk.image_alpha >= 1)
	{
		con = 47
		alarm[4] = 30
	}
}
if (con == 48)
{
	with (wht)
		instance_destroy()
	global.typer = 27
	global.facechoice = 0
	global.faceemotion = 0
	global.msc = 0
	obj_mainchara.y = 120
	alphys.y = 120
	global.msg[0] = scr_gettext("obj_alphystrigger1_393")
	global.msg[1] = scr_gettext("obj_alphystrigger1_394")
	con = 49
	global.facing = Direction.Up
	alphys.sprite_index = alphys.usprite
	instance_create(0, 0, obj_dialoguer)
	mett = instance_create(760, 60, obj_mettaton_actor)
	mett.image_speed = 0
	obj_mettwallhole.visible = true
	gamesign = instance_create(720, -40, obj_npc_marker)
	gamesign.sprite_index = spr_gameshowlogo
	if (global.language == "ja")
		gamesign.sprite_index = spr_gameshowlogo_ja
	gamesign.depth = 14
	gamesign.image_speed = 0.2
	gamesign.visible = true
}
if (con == 49 && instance_exists(OBJ_WRITER) == false)
{
	con = 50
	alarm[4] = 20
}
if (con == 51)
{
	snd_play(snd_drumroll)
	con = 52
	alarm[4] = 50
}
if (con == 53)
{
	with (blk)
		instance_destroy()
	snd_play(snd_bell)
	shadow = instance_create(view_xview_get(0), 0, obj_npc_marker)
	shadow.image_speed = 0
	shadow.visible = true
	shadow.image_alpha = 1
	shadow.sprite_index = spr_statueshadow
	shadow.depth = 15
	mett.d = 1
	mett.depth = 10
	con = 54
	alarm[4] = 30
}
if (con == 55)
{
	mett.image_speed = 0.2
	global.msg[0] = scr_gettext("obj_alphystrigger1_441")
	instance_create(0, 0, obj_dialoguer)
	con = 56
}
if (con == 56 && instance_exists(OBJ_WRITER) == false)
{
	caster_play(cheer, 1, 1)
	caster_loop(gameshow, 1, 1)
	shadow.image_alpha = 0.95
	dball = instance_create((view_xview_get(0) + 60), -30, obj_discoball)
	obj_discoball.depth = 13
	con = 57
}
if (con == 57)
{
	repeat (2)
		instance_create((view_xview_get(0) + random(320)), (view_yview_get(0) - 10), obj_confetti)
	if (gamesign.y < (gamesign.ystart + 40))
		gamesign.y += 1
	shadow.image_alpha -= 0.005
	if (shadow.image_alpha < 0.7)
		con = 58
}
if (con == 58)
{
	global.msg[0] = scr_gettext("obj_alphystrigger1_468")
	global.msg[1] = scr_gettext("obj_alphystrigger1_469")
	instance_create(0, 0, obj_dialoguer)
	con = 59
}
if (con == 59 && instance_exists(OBJ_WRITER) == false)
{
	caster_play(clap, 1, 1)
	mett.image_speed = 0.5
	FL_AnimationIndex = 3
	con = 60
	alarm[4] = 90
}
if (con == 60)
{
	conf = instance_create((obj_mainchara.x + random(20)), (view_yview_get(0) - 10), obj_confetti)
	conf.hspeed = (-1 + random(2))
}
if (con == 61)
{
	mett.image_speed = 0.2
	global.msg[0] = scr_gettext("obj_alphystrigger1_493")
	global.msg[1] = scr_gettext("obj_alphystrigger1_494")
	global.msg[2] = scr_gettext("obj_alphystrigger1_495")
	global.msg[3] = scr_gettext("obj_alphystrigger1_496")
	instance_create(0, 0, obj_dialoguer)
	con = 63
}
if (con == 63 && instance_exists(OBJ_WRITER) == false)
{
	mett.image_speed = 0
	snd_play(snd_drumroll)
	con = 64
	alarm[4] = 60
}
if (con == 65)
{
	caster_free(all)
	FL_AnimationIndex = 5
	mett.image_speed = 0.25
	global.msg[0] = scr_gettext("obj_alphystrigger1_514")
	instance_create(0, 0, obj_dialoguer)
	con = 66
}
if (con == 66 && instance_exists(OBJ_WRITER) == false)
{
	if instance_exists(obj_confetti)
	{
		with (obj_confetti)
			instance_destroy()
	}
	active = false
	speed = 0
	global.interact = 1
	caster_free(all)
	con = 67
	alarm[4] = 10
	global.border = 0
	global.battlegroup = BattleGroup.MettatonQuiz
	global.mercy = 1
	instance_create(0, 0, obj_battler)
	talkedto = 0
}
if (con == 68)
{
	with (mett)
		instance_destroy()
	with (shadow)
		instance_destroy()
	with (obj_discoball)
		instance_destroy()
	with (gamesign)
		instance_destroy()
	con = 68.1
	global.interact = 1
	alarm[4] = 14
}
if (con == 69.1 && instance_exists(obj_battler) == false)
{
	global.mercy = 0
	global.interact = 1
	global.currentsong = caster_load("music/lab.ogg")
	con = 70
	alarm[4] = 20
}
if (con == 70)
	global.interact = 1
if (con == 71)
{
	FL_PapyrusCalledAlready = 0
	alphys.sprite_index = alphys.lsprite
	global.msg[0] = scr_gettext("obj_alphystrigger1_566")
	global.msg[1] = scr_gettext("obj_alphystrigger1_567")
	global.typer = 47
	global.facechoice = 6
	global.faceemotion = 1
	global.msc = 0
	instance_create(0, 0, obj_dialoguer)
	con = 72
}
if (con == 72 && instance_exists(OBJ_WRITER) == false)
{
	alphys2 = instance_create(alphys.x, alphys.y, obj_alphys_npc)
	with (alphys)
		instance_destroy()
	con = 73
	alarm[4] = 50
}
if (con == 73)
{
	view_xview_set(0, (view_xview_get(0) - 2))
	global.interact = 1
}
if (con == 74)
{
	caster_loop(global.currentsong, 1, 1)
	obj_mainchara.cutscene = false
	global.interact = 0
	con = 75
	global.plot = 126
	instance_destroy()
}
