draw_sprite(sprite_index, image_index, x, y)
if (dont == 1 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 1
	dont = 2
	with (obj_darksink)
		caster_stop(water)
	caster_pause(global.currentsong)
	acon = 1
}
if (acon > 0)
{
	wcon = 0
	if (acon == 1)
	{
		if (aanim < 14)
			aanim += 0.1
		else
		{
			aanim = 14
			acon = 2
			alarm[4] = 50
		}
	}
	if (acon == 3)
	{
		tr = caster_load("music/sfx_generate.ogg")
		caster_play(tr, 0.9, 0.75)
		aanim = 0
		acon = 4
		alarm[4] = 50
	}
	if (acon == 4)
	{
		aanim += 0.334
		if (aanim >= 7)
			aanim -= 2
	}
	if (acon == 5)
	{
		caster_free(tr)
		global.battlegroup = BattleGroup.TripleMemoryhead
		global.mercy = 1
		global.border = 0
		FL_TypeHeartTransition = HeartTransitionType.Normal
		instance_create(0, 0, obj_battler)
		acon = 6
		alarm[4] = 32
	}
	if (acon < 7)
		global.interact = 1
	if (acon == 7)
	{
		with (obj_mainchara)
			uncan = 0
		global.mercy = 0
		caster_resume(global.currentsong)
		with (obj_darksink)
			wcon = 0
		myinteract = 0
		alarm[4] = 10
		FL_TrueLabSinkCounter = 10
		FL_TrueLabKeySink = 3
		if (obj_mainchara.x < 110)
			FL_TrueLabKeySink = 2
		if (obj_mainchara.x < 75)
			FL_TrueLabKeySink = 1
		event_user(0)
		FL_MemoryHeadStatus = 1
		acon = -10
	}
	if (acon == 1 || acon == 2)
		draw_sprite(spr_amalgam_sink1, floor(aanim), (x + 6), y)
	if (acon == 4 || acon == 5 || acon == 6)
		draw_sprite(spr_amalgam_sink2, floor(aanim), (x + 6), y)
}
if (wcon == 1)
{
	anim += 1
	draw_sprite(spr_sink_water, floor((anim / 3)), (x + 10), y)
}
if (how_bad_me_key == 1)
{
	kanim += 0.1
	draw_sprite_ext(spr_leverkey, floor(kanim), (x + 13), (y + 6), 1, 1, 0, c_red, 1)
}
