if (con == 1)
{
	if (obj_mainchara.y <= 170 && global.interact == 0 && FL_DogShrineXboxProgress == 0)
	{
		global.interact = 1
		caster_free(-3)
		alarm[4] = 30
		con = 2
	}
}
if (con == 3)
{
	loopnoise = caster_loop(mus_rotate, 1, 1)
	instance_create(-80, 10, obj_dogdozer)
	con = 4
}
if (con == 4)
{
	if (!instance_exists(obj_dogdozer))
	{
		caster_free(loopnoise)
		con = 5
	}
}
if (con == 5)
{
	fallnoise = snd_play(snd_fall2)
	aa = 95
	os[0] = spr_ds3_sign
	ox[0] = 45
	oy[0] = 57
	os[1] = spr_ds3_cashbox
	ox[1] = 75
	oy[1] = 56
	os[2] = spr_ds3_coinbox
	ox[2] = 106
	oy[2] = 56
	os[3] = spr_inuslot_pre
	ox[3] = 142
	oy[3] = 10
	for (i = 0; i < 4; i += 1)
	{
		oo[i] = instance_create(ox[i], (oy[i] - aa), obj_ds3_marker)
		oo[i].sprite_index = os[i]
		with (oo[i])
		{
			gravity = 0.5
			image_speed = 0
		}
	}
	timer = 0
	con = 21
}
if (con == 21)
{
	timer += 1
	if (timer >= 20)
	{
		for (i = 0; i < 4; i += 1)
		{
			with (oo[i])
			{
				gravity = 0
				vspeed = 0
				instance_destroy()
			}
		}
		// Daniela: the way snd_stop was being done here causes a crash, mightve been an engine change breaking that line of code
		// snd_stop(fallnoise)
		snd_stop(snd_fall2)
		snd_play(snd_impact)
		instance_create(0, 0, obj_shaker)
		con = 22
		alarm[4] = 10
		inuslot = instance_create(ox[3], oy[3], obj_inuslot)
		global.currentsong = mus_dogshrine_xbox
		if (FL_TruePacifist == 1)
			global.currentsong = 411
		caster_loop(global.currentsong, 1, 1)
		with (oo[3])
			instance_destroy()
	}
}
if (con == 23)
{
	FL_DogShrineXboxProgress = 1
	con = 25
	global.interact = 0
	global.facing = 0
}
