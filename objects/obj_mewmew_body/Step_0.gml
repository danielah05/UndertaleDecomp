swingtimer = 0
if (swingtimer >= 60 && swingtimer <= 67)
{
	vx += 25
	image_xscale -= 0.5
}
if (swingtimer >= 120 && swingtimer <= 127)
{
	image_xscale += 0.5
	vx -= 25
}
if (swingtimer == 130)
	swingtimer = 0
if (hitcon == 1)
{
	snd_play(snd_damage)
	shakex = 10
	remfe = global.faceemotion
	tail_timer = -10
	head = 1
	headx = (41 * image_xscale)
	heady = (16 * image_yscale)
	headrot = 0
	hitcon = 2
}
if (hitcon == 2)
{
	hit_timer += 1
	heady -= 12
	headrot += 18
	if (heady <= -80)
	{
		heady = -80
		headx = (3 * image_xscale)
		hitcon = 3
	}
}
if (hitcon == 3)
{
	heady += 12
	headrot += 18
	if (heady >= (14 * image_yscale))
	{
		snd_play(snd_noise)
		shakey = 8
		headrot = 0
		heady = (14 * image_yscale)
		hitcon = 4
		if (hit_special == 2)
			hitcon = 3.5
		hit_timer = 0
	}
}
if (hitcon == 3.5)
{
	hit_timer += 1
	if (hit_timer >= 60)
	{
		hitcon = 4
		hit_timer = 0
	}
}
if (hitcon == 4)
{
	if (hit_special >= 1)
		hitcount = 0
	if (hitcount >= 4)
	{
		hit_timer += 1
		if (hit_timer >= 10)
			hitcon = 8
	}
	else
	{
		with (obj_dmgwriter)
			instance_destroy()
		blcon = instance_create(386, 36, obj_blconwdflowey)
		mycommand = round(random(100))
		global.msg[0] = scr_gettext("obj_mewmew_body_105")
		global.msg[1] = scr_gettext("obj_mewmew_body_106")
		global.msg[2] = scr_gettext("obj_mewmew_body_107")
		if (hitcount == 1)
		{
			global.msg[0] = scr_gettext("obj_mewmew_body_110")
			global.msg[1] = scr_gettext("obj_mewmew_body_111")
			global.msg[2] = scr_gettext("obj_mewmew_body_112")
			global.msg[3] = scr_gettext("obj_mewmew_body_113")
		}
		if (hitcount == 2)
		{
			global.msg[0] = scr_gettext("obj_mewmew_body_117")
			global.msg[1] = scr_gettext("obj_mewmew_body_118")
		}
		if (hitcount >= 3)
			global.msg[0] = scr_gettext("obj_mewmew_body_122")
		if (hit_special == 1)
			global.msg[0] = scr_gettext("obj_mewmew_body_127")
		if (hit_special == 2)
			global.msg[0] = scr_gettext("obj_mewmew_body_132")
		global.typer = 33
		blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
		hitcon = 5
	}
}
if (hitcon == 5)
{
	if (!instance_exists(blconwd))
	{
		with (blcon)
			instance_destroy()
		hitcon = 8
		if (hit_special == 2)
			hitcon = 15
	}
}
if (hitcon == 8)
{
	headx += (((41 * image_xscale) - headx) / 2)
	heady += (((16 * image_yscale) - heady) / 2)
	if (abs((headx - 82)) <= 3)
	{
		image_index = 0
		tail_timer = -10
		headx = 82
		heady = 32
		headrot = 0
		head = 0
		hitcon = 0
		hitcount += 1
		global.faceemotion = remfe
		global.hurtanim[0] = 2
	}
}
if (hitcon == 15)
{
	depth = -9999
	whiteval = 0
	whitefade = 1
	snd_play(mus_explosion)
	hitcon = 16
}
if (hitcon == 16)
{
	whiteval += 0.03
	if (whiteval >= 4)
	{
		FL_MadMewMewStatus = MadMewMewStatus.Killed
		ossafe_ini_open("undertale.ini")
		ini_write_real("Alphys", "M", 3)
		ossafe_ini_close()
		ossafe_savedata_save()
		with (obj_mewmew_boss)
			event_user(4)
	}
}
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
// Daniela: sick debug code btw lmao
if (global.debug == true)
{
}
if (attack_mode == 1)
{
	attack_msg = 1
	msg_num = 0
	msg_timer = 0
	msg_side = 0
	sprite_index = spr_boss_mewmew_attack
	hspeed = 10
	x -= 40
	vx = 0
	friction = 0.8
	image_xscale = 2
	attack_mode = 2
}
if (attack_mode == 2)
{
	attack_timer += 1
	if (attack_timer >= attack_timer_max)
	{
		shot_timer = 0
		shot_count = 0
		rep += 1
		if (rep < maxrep)
		{
			x = (xstart + 40)
			y = ystart
			hspeed = -10
			friction = 0.8
			vx = 200
			image_xscale = -2
			attack_timer = 0
			attack_mode = 3
		}
	}
}
if (attack_mode == 3)
{
	attack_timer += 1
	if (attack_timer >= attack_timer_max)
	{
		shot_timer = 0
		shot_count = 0
		rep += 1
		if (rep < maxrep)
		{
			vx = 0
			x = (xstart - 40)
			y = ystart
			hspeed = 10
			friction = 0.8
			image_xscale = 2
			attack_timer = 0
			attack_mode = 2
		}
	}
}
if (attack_mode == 2 || attack_mode == 3)
{
	shot_timer += 1
	if (shot_timer == 999)
	{
		if (shot_timer == 5)
		{
			hx[0] = 0
			hy[0] = 0
			hx[1] = 0
			hy[1] = 0
			with (obj_hearthalf)
			{
				obj_mewmew_body.hx[side] = x
				obj_mewmew_body.hy[side] = y
			}
		}
		for (i = 0; i < 2; i += 1)
		{
			dbul[i] = instance_create(((x + (93 * image_xscale)) + vx), (y + 56), obj_halfbullet)
			dbul[i].hx = hx[i]
			dbul[i].hy = hy[i]
			with (dbul[i])
			{
				dont_disappear_hspeed = 1
				move_towards_point((hx + 7), (hy + 7), 6)
				friction = -0.5
			}
		}
	}
	if (shot_timer == shot_a || shot_timer == shot_b || shot_timer == shot_c)
	{
		if (shot_timer == 5)
			pos = choose(0, 1, 2)
		i = 0
		hx[0] = xpos[pos]
		hy[0] = ypos[pos]
		snd_stop(snd_break1)
		snd_play(snd_break1)
		dbul[i] = instance_create(((x + (93 * image_xscale)) + vx), (y + 56), obj_halfbullet)
		dbul[i].hx = hx[i]
		dbul[i].hy = hy[i]
		with (dbul[i])
		{
			type = 3
			sprite_index = spr_mmbul_nyanya
			dont_disappear_hspeed = 1
			move_towards_point((hx + 7), (hy + 7), 4)
			image_angle = direction
			friction = -0.3
		}
	}
	if (rep >= maxrep)
	{
		attack_mode = 4
		attack_timer = 0
	}
}
if (attack_mode == 4)
{
	attack_timer += 1
	if (attack_timer >= 30)
	{
		vx = 0
		rep = 0
		attack_mode = 0
		attack_msg = 0
		with (OBJ_WRITER)
			instance_destroy()
		with (OBJ_NOMSCWRITER)
			instance_destroy()
		global.turntimer = 5
		global.msg[0] = scr_gettext("obj_mewmew_body_347")
		x = xstart
		y = ystart
		hspeed = 0
		image_xscale = 2
		sprite_index = spr_boss_mewmew_idle
	}
}
if (attack_msg == 1)
{
	global.typer = 92
	global.msc = 0
	msg_timer += 1
	if (msg_timer >= 10)
	{
		msg_timer = -20
		global.msg[0] = " %%"
		if (pattern < 9)
		{
			global.msg[0] = scr_gettext("obj_mewmew_body_371")
			if (msg_num == 1)
				global.msg[0] = scr_gettext("obj_mewmew_body_372")
			if (msg_num == 2)
				global.msg[0] = scr_gettext("obj_mewmew_body_371")
			if (msg_num == 3)
				global.msg[0] = scr_gettext("obj_mewmew_body_372")
			if (msg_num == 4)
				global.msg[0] = scr_gettext("obj_mewmew_body_371")
			if (msg_num == 5)
				global.msg[0] = scr_gettext("obj_mewmew_body_372")
			if (msg_num == 6)
				global.msg[0] = scr_gettext("obj_mewmew_body_371")
			if (msg_num == 7)
				global.msg[0] = scr_gettext("obj_mewmew_body_372")
		}
		if (pattern >= 9 && pattern <= 12)
		{
			global.msg[0] = scr_gettext("obj_mewmew_body_383")
			if (msg_num == 1)
				global.msg[0] = scr_gettext("obj_mewmew_body_384")
			if (msg_num == 2)
				global.msg[0] = scr_gettext("obj_mewmew_body_385")
			if (msg_num == 3)
				global.msg[0] = scr_gettext("obj_mewmew_body_386")
			if (msg_num == 4)
				global.msg[0] = scr_gettext("obj_mewmew_body_387")
			if (msg_num >= 5)
				global.msg[0] = scr_gettext("obj_mewmew_body_388")
			msg_timer = -35
		}
		if (pattern >= 13)
		{
			global.msg[0] = scr_gettext("obj_mewmew_body_394")
			if (msg_num == 1)
				global.msg[0] = scr_gettext("obj_mewmew_body_395")
			if (msg_num == 2)
				global.msg[0] = scr_gettext("obj_mewmew_body_396")
			if (msg_num == 3)
				global.msg[0] = scr_gettext("obj_mewmew_body_397")
			if (msg_num == 4)
				global.msg[0] = scr_gettext("obj_mewmew_body_398")
			if (msg_num == 5)
				global.msg[0] = scr_gettext("obj_mewmew_body_399")
			if (msg_num == 6)
				global.msg[0] = scr_gettext("obj_mewmew_body_400")
		}
		wr[msg_num] = instance_create((50 + (msg_side * 410)), 90, OBJ_WRITER)
		if (msg_side == 0)
			msg_side = 1
		else
			msg_side = 0
		if (msg_num >= 2)
		{
			if instance_exists(wr[(msg_num - 2)])
			{
				with (wr[(msg_num - 2)])
					instance_destroy()
			}
		}
		if (rep >= (maxrep - 1))
			msg_timer = -400
		msg_num += 1
	}
}
