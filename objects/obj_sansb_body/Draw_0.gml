inv_check = 0
inv_timer += 1
if (global.inv >= 45 && inv_timer >= 5)
{
	inv_check = 1
	inv_timer = 0
}
if (global.inv >= 60 && inv_timer >= 4)
{
	inv_check = 1
	inv_timer = 0
}
if (global.inv >= 75 && inv_timer >= 3)
{
	inv_check = 1
	inv_timer = 0
}
if (lac >= 4 && global.hp <= 10 && inv_timer >= 2)
{
	inv_check = 1
	inv_timer = 0
}
if (inv_check == 0)
	damageturn = 0
y = (global.idealborder[2] - 130)
if (bounce == 3)
{
	siner += 1
	yoff = (sin((siner / 18)) * 2)
}
if (bounce == 2)
{
	siner += 1
	yoff = (sin((siner / 15)) * 4)
}
if (bounce == 1)
{
	siner += 1
	yoff = sin((siner / 3))
	xoff = cos((siner / 6))
}
if (bounce == 0)
{
	siner = 0
	yoff = 0
	xoff = 0
}
if (deadtest == 0)
{
	draw_sprite_ext(spr_sansb_legs, 0, x, (y + 90), 2, 2, 0, c_white, 1)
	if (movearm == 0)
		draw_sprite_ext(spr_sansb_torso, FL_AnimationIndex, (x + xoff), ((y + 42) + (yoff / 1.5)), 2, 2, 0, c_white, 1)
	if (movearm == 1)
	{
		if (arm_i >= 11)
			arm_i = 11
		draw_sprite_ext(spr_sansb_rightstrike, floor((arm_i / 2)), x, (y + 42), 2, 2, 0, c_white, 1)
		if (arm_i == 2)
			headx = -4
		if (arm_i == 4)
			headx = -8
		if (arm_i == 6)
			headx = 10
		if (arm_i == 8)
			headx = 4
		if (arm_i < 11)
			arm_i += aspeed
		else
			arm_i = 11
	}
	if (movearm == 2)
	{
		if (arm_i >= 11)
			arm_i = 11
		draw_sprite_ext(spr_sansb_handup, floor((arm_i / 2)), x, (y + 42), 2, 2, 0, c_white, 1)
		if (arm_i == 0)
			heady = 4
		if (arm_i == 2)
			heady = 10
		if (arm_i == 4)
			heady = 4
		if (arm_i == 6)
			heady = -4
		if (arm_i == 8)
			heady = 0
		if (arm_i < 11)
			arm_i += aspeed
		else
			arm_i = 11
	}
	if (movearm == 3)
	{
		if (arm_i >= 9)
			arm_i = 9
		draw_sprite_ext(spr_sansb_handdown, floor((arm_i / 2)), x, (y + 42), 2, 2, 0, c_white, 1)
		if (arm_i == 0)
			heady = 0
		if (arm_i == 2)
			heady = 0
		if (arm_i == 4)
			heady = 6
		if (arm_i == 6)
			heady = 10
		if (arm_i < 9)
			arm_i += aspeed
		else
			arm_i = 9
	}
	if (movearm == 4)
	{
		if (arm_i >= 10)
			arm_i = 10
		draw_sprite_ext(spr_sansb_rightstrike, floor((5 - (arm_i / 2))), x, (y + 42), 2, 2, 0, c_white, 1)
		if (arm_i >= 10)
			headx = 0
		if (arm_i == 8)
			headx = -4
		if (arm_i == 6)
			headx = -8
		if (arm_i == 4)
			headx = 10
		if (arm_i == 2)
			headx = 4
		if (arm_i < 10)
			arm_i += aspeed
		else
			arm_i = 10
	}
	if (facetype == 0)
		draw_sprite_ext(spr_sansb_face, global.faceemotion, ((x + xoff) + headx), ((y + yoff) + heady), 2, 2, 0, c_white, 1)
	if (sweat == 1)
		draw_sprite_ext(spr_sansb_face_sweat, 0, ((x + xoff) + headx), ((y + yoff) + heady), 2, 2, 0, c_white, 1)
	if (sweat == 2)
		draw_sprite_ext(spr_sansb_face_sweat, 1, ((x + xoff) + headx), ((y + yoff) + heady), 2, 2, 0, c_white, 1)
	if (sweat == 3)
		draw_sprite_ext(spr_sansb_face_sweat, 2, ((x + xoff) + headx), ((y + yoff) + heady), 2, 2, 0, c_white, 1)
	if (facetype == 1)
	{
		f_i += 1
		draw_sprite_ext(spr_sansb_blueeye, floor((f_i / 2)), ((x + xoff) + headx), ((y + yoff) + heady), 2, 2, 0, c_white, 1)
	}
}
if (deadtest == 1)
{
	draw_sprite_ext(spr_sansb_legs_sit, 0, (x + legx), ((y + 100) + legy), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sansb_torso, FL_AnimationIndex, (x + xoff), ((y + 62) + (yoff / 1.5)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sansb_face, global.faceemotion, (x + xoff), ((y + yoff) + 30), 2, 2, 0, c_white, 1)
}
if (drawborder == 1)
{
	draw_set_color(c_white)
	for (i = 0; i < 5; i += 1)
		draw_rectangle((global.idealborder[0] + i), (global.idealborder[2] + i), (global.idealborder[1] + i), (global.idealborder[3] + i), true)
}
if (fac == 1)
{
	intensity = 25
	global.idealborder[0] = 240
	global.idealborder[1] = 400
	global.idealborder[2] = (global.idealborder[3] - 160)
	bounce = 0
	facetype = 1
	movearm = 3
	arm_i = 0
	heady = 0
	headx = 0
	with (obj_sansb)
		p_cut = 1
	fac = 2
	alarm[7] = 7
}
if (fac == 3)
{
	event_user(10)
	fac = 4
	alarm[7] = 14
}
if (fac == 5)
{
	fac = 6
	alarm[7] = 10
	movearm = 2
	arm_i = 0
	heady = 0
	headx = 0
	facetype = 0
	bs = instance_create(0, 0, obj_bonestab)
	bs.dir = 0
	bs.height = 55
	bs.warning = 6
	bs.retain = 30
	for (i = 0; i < 20; i += 1)
	{
		scr_sbo((135 - (sin((i / 3)) * 28)), 12, (40 + (i * 2)), 2)
		bone.siner = (i * 3)
		scr_sbo((90 - (sin((i / 3)) * 28)), 12, (40 + (i * 2)), 0)
		bone.siner = (i * 3)
	}
}
if (fac == 7)
{
	intensity = 15
	fac = 8
	alarm[7] = 10
}
if (fac == 9)
{
	movearm = 1
	arm_i = 0
	heady = 0
	headx = 0
	fac = 9.1
	alarm[7] = 8
	obj_heart.movement = 1
	obj_heart.speed = 0
	obj_heart.sprite_index = spr_heart_battle_pl
	snd_play(snd_bell)
}
if (fac == 10.1)
{
	with (obj_sansb)
		p_cut = 1
	fac = 10
	alarm[7] = 37
}
if (fac == 11)
{
	movearm = 0
	arm_i = 0
	heady = 0
	headx = 0
	gb = instance_create(0, 0, obj_gasterblaster)
	gb.idealrot = 90
	gb.idealx = (global.idealborder[0] - 50)
	gb.idealy = (global.idealborder[2] + 20)
	gb.image_xscale = 2
	gb.image_yscale = 2
	gb = instance_create(640, 480, obj_gasterblaster)
	gb.idealrot = -90
	gb.idealx = (global.idealborder[1] + 50)
	gb.idealy = (global.idealborder[3] - 20)
	gb.image_xscale = 2
	gb.image_yscale = 2
	gb = instance_create(0, 0, obj_gasterblaster)
	gb.idealrot = 0
	gb.idealx = (global.idealborder[0] + 20)
	gb.idealy = (global.idealborder[2] - 60)
	gb.image_xscale = 2
	gb.image_yscale = 2
	gb = instance_create(640, 480, obj_gasterblaster)
	gb.idealrot = 180
	gb.idealx = (global.idealborder[1] - 20)
	gb.idealy = (global.idealborder[3] + 60)
	gb.image_xscale = 2
	gb.image_yscale = 2
	obj_gasterblaster.pause = 10
	obj_gasterblaster.terminal = 8
	fac = 12
	alarm[7] = 25
}
if (fac == 13)
{
	movearm = 0
	arm_i = 0
	heady = 0
	headx = 0
	gb = instance_create(0, 0, obj_gasterblaster)
	gb.idealrot = 45
	gb.idealx = (global.idealborder[0] - 50)
	gb.idealy = (global.idealborder[2] - 50)
	gb.image_xscale = 2
	gb.image_yscale = 2
	gb = instance_create(640, 0, obj_gasterblaster)
	gb.idealrot = -45
	gb.idealx = (global.idealborder[1] + 50)
	gb.idealy = (global.idealborder[2] - 50)
	gb.image_xscale = 2
	gb.image_yscale = 2
	gb = instance_create(0, 480, obj_gasterblaster)
	gb.idealrot = 135
	gb.idealx = (global.idealborder[0] - 50)
	gb.idealy = (global.idealborder[3] + 50)
	gb.image_xscale = 2
	gb.image_yscale = 2
	gb = instance_create(640, 480, obj_gasterblaster)
	gb.idealrot = -135
	gb.idealx = (global.idealborder[1] + 50)
	gb.idealy = (global.idealborder[3] + 50)
	gb.image_xscale = 2
	gb.image_yscale = 2
	obj_gasterblaster.pause = 10
	obj_gasterblaster.terminal = 8
	fac = 14
	alarm[7] = 25
}
if (fac == 15)
{
	movearm = 0
	arm_i = 0
	heady = 0
	headx = 0
	gb = instance_create(0, 0, obj_gasterblaster)
	gb.idealrot = 90
	gb.idealx = (global.idealborder[0] - 50)
	gb.idealy = (global.idealborder[2] + 20)
	gb.image_xscale = 2
	gb.image_yscale = 2
	gb = instance_create(640, 480, obj_gasterblaster)
	gb.idealrot = -90
	gb.idealx = (global.idealborder[1] + 50)
	gb.idealy = (global.idealborder[3] - 20)
	gb.image_xscale = 2
	gb.image_yscale = 2
	gb = instance_create(0, 0, obj_gasterblaster)
	gb.idealrot = 0
	gb.idealx = (global.idealborder[0] + 20)
	gb.idealy = (global.idealborder[2] - 60)
	gb.image_xscale = 2
	gb.image_yscale = 2
	gb = instance_create(640, 480, obj_gasterblaster)
	gb.idealrot = 180
	gb.idealx = (global.idealborder[1] - 20)
	gb.idealy = (global.idealborder[3] + 60)
	gb.image_xscale = 2
	gb.image_yscale = 2
	obj_gasterblaster.pause = 10
	obj_gasterblaster.terminal = 8
	fac = 16
	alarm[7] = 20
}
if (fac == 17)
{
	gb = instance_create(0, 240, obj_gasterblaster)
	gb.idealrot = 90
	gb.idealx = (global.idealborder[0] - 100)
	gb.idealy = (global.idealborder[2] + 80)
	gb.image_xscale = 3
	gb.image_yscale = 3
	gb.pause = 20
	gb.terminal = 15
	gb = instance_create(640, 240, obj_gasterblaster)
	gb.idealrot = -90
	gb.idealx = (global.idealborder[1] + 100)
	gb.idealy = (global.idealborder[2] + 80)
	gb.image_xscale = 3
	gb.image_yscale = 3
	gb.pause = 20
	gb.terminal = 15
	fac = 18
	alarm[7] = 90
}
if (fac == 19)
{
	ossafe_ini_open("undertale.ini")
	intr = ini_read_real("Sans", "Intro", 0)
	ini_write_real("Sans", "Intro", (intr + 1))
	ossafe_ini_close()
	ossafe_savedata_save()
	global.faceemotion = 0
	FL_AnimationIndex = 0
	global.msc = 0
	global.typer = 109
	global.msg[0] = scr_gettext("obj_sansb_body_1446")
	global.msg[1] = scr_gettext("obj_sansb_body_1447")
	if (intr == 1)
	{
		global.msg[0] = scr_gettext("obj_sansb_body_1450")
		global.msg[1] = scr_gettext("obj_sansb_body_1451")
	}
	if (intr >= 2)
		global.msg[0] = scr_gettext("obj_sansb_body_1455")
	scr_blcon_x((obj_sansb.x + 120), (y - 10))
	fac = 20
}
if (fac == 20 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 0
	FL_AnimationIndex = 0
	bounce = 1
	with (obj_borderparent)
		instaborder = 0
	global.msg[0] = scr_gettext("obj_sansb_body_1468")
	global.border = 0
	fac = 21
	alarm[7] = 5
}
if (fac == 22)
{
	global.bmenuno = 0
	with (obj_sansb)
		normalfight = 1
	caster_loop(global.batmusic, 0.9, 1)
	global.mnfight = 3
	global.myfight = 0
	fac = -1
}
if (smasher == 1)
{
	if (smashcon == 0)
	{
		obj_heart.x = (global.idealborder[0] + (floor((global.idealborder[1] - global.idealborder[0])) / 2))
		obj_heart.y = (global.idealborder[2] + (floor((global.idealborder[3] - global.idealborder[2])) / 2))
		obj_heart.speed = 0
		obj_heart.movement = 1
		obj_heart.sprite_index = spr_heart_battle_pl
		smashdir = choose(0, 1, 2, 3)
		repeat (10)
		{
			if (prevsmash == smashdir)
				smashdir = choose(0, 1, 2, 3)
		}
		if (smashdir == prevsmash)
		{
			smashdir += 1
			if (smashdir > 3)
				smashdir = 0
		}
		prevsmash = smashdir
		smashcon = 1
		aspeed = 1
		if (smashlv == 2)
			aspeed = 2
		if (smashdir == 0)
		{
			movearm = 3
			arm_i = 0
			heady = 0
			headx = 0
		}
		if (smashdir == 1)
		{
			movearm = 1
			arm_i = 0
			heady = 0
			headx = 0
		}
		if (smashdir == 2)
		{
			movearm = 2
			arm_i = 0
			heady = 0
			headx = 0
		}
		if (smashdir == 3)
		{
			movearm = 4
			arm_i = 0
			heady = 0
			headx = 0
		}
		alarm[8] = 8
		if (smashlv == 2)
			alarm[8] = 4
	}
	if (smashcon == 2)
	{
		xtimer = 0
		intensity = 16
		if (smashdir == 0)
			event_user(10)
		if (smashdir == 1)
			event_user(11)
		if (smashdir == 2)
			event_user(12)
		if (smashdir == 3)
			event_user(13)
		smashcon = 3
	}
	if (smashcon == 3)
	{
		xtimer += 1
		if (obj_heart.speed < intensity && xtimer >= 5)
		{
			xtimer = 0
			bs = instance_create(0, 0, obj_bonestab)
			bs.warning = 12
			bs.height = 25
			bs.retain = 4
			bs.dir = smashdir
			smashcon = 4
			alarm[8] = 18
			if (smashlv == 1)
				alarm[8] = 12
			if (smashlv == 1)
				bs.warning = 9
			if (smashlv == 1)
				bs.retain = -2
			if (smashlv == 2)
				alarm[8] = 7
			if (smashlv == 2)
				bs.retain = -7
			if (smashlv == 2)
				bs.height = 40
			if (smashlv == 2)
				warning = 11
		}
	}
	if (smashcon == 5)
	{
		if (smashlv == 2)
			aspeed = 2
		smashdir = choose(0, 1, 2, 3)
		smashcon = 1
		if (smashdir == 0)
		{
			movearm = 3
			arm_i = 0
			heady = 0
			headx = 0
		}
		if (smashdir == 1)
		{
			movearm = 1
			arm_i = 0
			heady = 0
			headx = 0
		}
		if (smashdir == 2)
		{
			movearm = 2
			arm_i = 0
			heady = 0
			headx = 0
		}
		if (smashdir == 3)
		{
			movearm = 4
			arm_i = 0
			heady = 0
			headx = 0
		}
		smashcon = 1
		smashamt += 1
		alarm[8] = 8
		if (smashlv == 2)
			alarm[8] = 7
		if (smashamt > smashmax)
		{
			if (!instance_exists(obj_menubone_maker))
				instance_create(0, 0, obj_menubone_maker)
			smashcon = -1
			smashamt = 0
			smasher = 0
			with (obj_heart)
				movement = 1
			with (obj_heart)
				sprite_index = spr_heart
			with (obj_heart)
				speed = 0
			movearm = 0
			arm_i = 0
			heady = 0
			headx = 0
			alarm[8] = -1
			with (obj_sansb)
				attacked = 0
			global.mnfight = 3
		}
	}
}
if (lac == 4)
{
	obj_heart.speed = 0
	global.idealborder[0] = 240
	global.idealborder[1] = 400
	global.idealborder[2] = (global.idealborder[3] - 160)
	obj_heart.movement = 1
	obj_heart.sprite_index = spr_heart_battle_pl
	smasher = 1
	smashcon = 0
	smashamt = 0
	smashlv = 2
	xtimer = 0
	lac = 5
}
if (lac == 5)
{
	if (smashamt == 3 && smashcon == 3 && xtimer == 3)
	{
		b1 = instance_create((global.idealborder[0] - 110), (global.idealborder[2] - 300), obj_bonewall_normal)
		b1.sprite_index = spr_s_bonewall_wide
		b1.vspeed = 11
		b1 = instance_create((global.idealborder[1] - 70), (global.idealborder[3] + 300), obj_bonewall_normal)
		b1.sprite_index = spr_s_bonewall_wide
		b1.vspeed = -11
		b1 = instance_create((global.idealborder[0] - 110), (global.idealborder[2] - 525), obj_bonewall_normal)
		b1.sprite_index = spr_s_bonewall_wide
		b1.vspeed = 11
		b1 = instance_create((global.idealborder[1] - 70), (global.idealborder[3] + 525), obj_bonewall_normal)
		b1.sprite_index = spr_s_bonewall_wide
		b1.vspeed = -11
		b1 = instance_create((global.idealborder[0] - 110), (global.idealborder[2] - 750), obj_bonewall_normal)
		b1.sprite_index = spr_s_bonewall_wide
		b1.vspeed = 11
		b1 = instance_create((global.idealborder[1] - 70), (global.idealborder[3] + 750), obj_bonewall_normal)
		b1.sprite_index = spr_s_bonewall_wide
		b1.vspeed = -11
	}
	if (smashamt == 4 && smashcon == 3 && xtimer >= 0)
	{
		smashcon = -1
		smasher = -1
		obj_heart.speed = 0
		lac = 6
		alarm[5] = 60
		obj_heart.movement = 1
		obj_heart.sprite_index = spr_heart_battle_pl
	}
}
if (lac == 7)
{
	intensity = 25
	aspeed = 2
	movearm = 4
	arm_i = 0
	heady = 0
	headx = 0
	lac = 8
	alarm[5] = 6
}
if (lac == 9)
{
	event_user(13)
	lac = 10
	alarm[5] = 8
}
if (lac == 11)
{
	movearm = 1
	arm_i = 0
	heady = 0
	headx = 0
	lac = 12
	alarm[5] = 6
}
if (lac == 13)
{
	intensity = 15
	event_user(11)
	lac = 14
	alarm[5] = 10
}
if (lac == 14)
{
	obj_heart.jumpstage = 0
	global.idealborder[1] += 15
}
if (lac == 15)
{
	lac = 16
	alarm[5] = 40
}
if (lac == 16)
{
	global.idealborder[0] -= 30
	global.idealborder[1] += 10
	repeater = 1
	rp_x = 0
	obj_heart.speed = 0
	if (obj_heart.x > 40)
		obj_heart.x -= 10
	global.idealborder[2] += 1
	global.idealborder[3] -= 0.5
}
if (lac == 17)
{
	for (i = 0; i < 45; i += 1)
	{
		scr_sbo((70 - (sin((i / 2)) * 25)), -30, (10 + (i * 2)), 2)
		bone.siner = (i * 3)
		bone.x += 15
		scr_sbo((30 - (sin((i / 2)) * 25)), -30, (10 + (i * 2)), 0)
		bone.siner = (i * 3)
		bone.x += 15
	}
	lac = 18
	alarm[5] = 100
}
if (lac == 19)
{
	scr_sbo(50, -30, 10, 2)
	bone.x += 15
	scr_sbo(50, -30, 10, 2)
	bone.x += 30
	scr_sbo(50, -30, 10, 2)
	bone.x += 45
	scr_sbo(50, -30, 21, 0)
	bone.x += 15
	scr_sbo(50, -30, 21, 0)
	bone.x += 30
	scr_sbo(50, -30, 21, 0)
	bone.x += 45
	scr_sbo(50, -30, 31, 2)
	bone.x += 15
	scr_sbo(50, -30, 31, 2)
	bone.x += 30
	scr_sbo(50, -30, 31, 2)
	bone.x += 45
	scr_sbo(50, -30, 41, 0)
	bone.x += 15
	scr_sbo(50, -30, 41, 0)
	bone.x += 30
	scr_sbo(50, -30, 41, 0)
	bone.x += 45
	scr_sbo(50, -30, 50, 2)
	bone.x += 15
	scr_sbo(50, -30, 50, 2)
	bone.x += 30
	scr_sbo(50, -30, 50, 2)
	bone.x += 45
	scr_sbo(50, -30, 59, 0)
	bone.x += 15
	scr_sbo(50, -30, 59, 0)
	bone.x += 30
	scr_sbo(50, -30, 59, 0)
	bone.x += 45
	scr_sbo(50, -30, 67, 2)
	bone.x += 15
	scr_sbo(50, -30, 67, 2)
	bone.x += 30
	scr_sbo(50, -30, 67, 2)
	bone.x += 45
	scr_sbo(50, -30, 78, 0)
	bone.x += 15
	scr_sbo(50, -30, 78, 0)
	bone.x += 30
	scr_sbo(50, -30, 78, 0)
	bone.x += 45
	scr_sbo(50, -30, 87, 2)
	bone.x += 15
	scr_sbo(50, -30, 87, 2)
	bone.x += 30
	scr_sbo(50, -30, 87, 2)
	bone.x += 45
	for (i = 0; i < 24; i += 1)
	{
		scr_sbo((90 - i), -30, (100 + i), 2)
		bone.x += 15
		scr_sbo((10 + i), -30, (100 + i), 0)
		bone.x += 15
	}
	lac = 20
	alarm[5] = 134
}
if (lac == 21)
{
	lac = 23
	global.idealborder[1] = 640
	obj_heart.hspeed = 11
}
if (lac == 23)
{
	if (global.idealborder[1] > 420)
		global.idealborder[1] -= 18
	if (obj_heart.hspeed <= 0)
	{
		global.faceemotion = 0
		FL_AnimationIndex = 0
		repeater = 0
		lac = 24
		alarm[5] = 5
	}
}
if (lac == 25)
{
	bs = instance_create(0, 0, obj_bonestab)
	bs.retain = 15
	bs.warning = 12
	bs.height = 50
	bs.dir = 1
	aspeed = 1
	movearm = 4
	arm_i = 0
	heady = 0
	headx = 0
	lac = 26
	alarm[5] = 28
}
if (lac == 27)
{
	with (obj_heart)
		speed = 0
	sh = instance_create(0, 0, obj_sansshadowgen)
	sh.level = 3
	lac = 28
}
if (repeater == 1)
{
	movearm = 0
	rp_x += 0.05
	x -= floor((30 + rp_x))
	if (x < -100)
	{
		global.faceemotion = choose(0, 1, 3, 4, 5)
		FL_AnimationIndex = choose(0, 0, 0, 1)
		x = 740
	}
}
if (lac == 50)
{
	obj_heart.speed = 0
	obj_heart.movement = 1
	obj_heart.sprite_index = spr_heart_battle_pl
	gt = 0
	gin = 1
	lac = 51
	o_o = 0
	gnum = 0
}
if (lac == 51)
{
	if (o_o == 1)
	{
		disx = lengthdir_x(150, (gt * 10))
		disy = lengthdir_y(150, (gt * 10))
		gb[gnum] = instance_create(0, 0, obj_gasterblaster)
		if instance_exists(gb[gnum])
		{
			gb[gnum].idealrot = (-90 + (gt * 10))
			gb[gnum].idealx = ((disx + global.idealborder[0]) + ((global.idealborder[1] - global.idealborder[0]) / 2))
			gb[gnum].idealy = ((disy + global.idealborder[2]) + ((global.idealborder[3] - global.idealborder[2]) / 2))
			gb[gnum].x = (((disx * 3) + global.idealborder[0]) + ((global.idealborder[1] - global.idealborder[0]) / 2))
			gb[gnum].y = (((disy * 3) + global.idealborder[2]) + ((global.idealborder[3] - global.idealborder[2]) / 2))
			gb[gnum].terminal = 0
			gb[gnum].pause = 15
			gb[gnum].image_yscale = 2
		}
		gt += gin
		if (gin < 1.7)
			gin += 0.015
		gnum += 1
		o_o = 0
	}
	else
		o_o = 1
	if (gt >= 190)
	{
		with (obj_heart)
			slam_pain = 1
		pdd = -1
		bounce = 0
		intensity = 30
		aspeed = 2
		lc_t = 0
		lc_c = 0
		lc_a = 0
		lac = 52
		alarm[5] = 30
	}
}
if (lac == 53)
{
	if (lc_t == 0)
	{
		dd = choose(1, 2, 3, 4)
		repeat (8)
		{
			if (dd == pdd)
				dd = choose(1, 2, 3, 4)
		}
		if (lc_c == 0)
		{
			dd = 1
			facetype = 1
		}
		if (lc_c == 18)
			dd = 2
		movearm = dd
		arm_i = 0
		heady = 0
		headx = 0
	}
	if (lc_t == (8 / aspeed))
	{
		if (lc_c == 18)
			lc_a = 21
		if (lc_c == 17)
			lc_a = 12
		if (dd == 1)
			event_user(11)
		if (dd == 3)
			event_user(10)
		if (dd == 2)
			event_user(12)
		if (dd == 4)
			event_user(13)
	}
	if (lc_t == (((lc_a * 2) + (8 / aspeed)) + 4))
	{
		if (lc_c == 18)
			intensity = 2
		if (dd == 3)
			dd = 2
		else if (dd == 1)
			dd = 4
		else if (dd == 4)
			dd = 1
		else if (dd == 2)
			dd = 3
		pdd = dd
		if (lc_c == 18)
		{
			dd = 3
			sweat = 3
			global.faceemotion = 9
		}
		movearm = dd
		arm_i = 0
		heady = 0
		headx = 0
	}
	if (lc_t == (((lc_a * 2) + ((8 / aspeed) * 2)) + 4))
	{
		if (dd == 1)
			event_user(11)
		if (dd == 3)
			event_user(10)
		if (dd == 2)
			event_user(12)
		if (dd == 4)
			event_user(13)
		if (lc_c == 18)
			lc_a = 21
	}
	lc_t += 1
	if (lc_t == (((lc_a * 4) + ((8 / aspeed) * 2)) + 7))
	{
		lc_t = 0
		lc_c += 1
		if (lc_c == 11)
		{
			lc_a = 1
			caster_set_volume(global.batmusic, 0.8)
			intensity = 20
		}
		if (lc_c == 12)
		{
			lc_a = 2
			intensity = 20
		}
		if (lc_c == 13)
		{
			lc_a = 0
			aspeed = 1
			intensity = 16
			sweat = 1
			facetype = 0
			global.faceemotion = 0
		}
		if (lc_c == 14)
		{
			lc_a = 2
			caster_set_volume(global.batmusic, 0.7)
			intensity = 14
		}
		if (lc_c == 15)
		{
			lc_a = 4
			caster_set_volume(global.batmusic, 0.5)
			intensity = 12
		}
		if (lc_c == 16)
		{
			lc_a = 6
			caster_set_volume(global.batmusic, 0.25)
			intensity = 12
		}
		if (lc_c == 17)
		{
			lc_a = 8
			caster_set_volume(global.batmusic, 0.15)
			aspeed = 0.5
			intensity = 11
			sweat = 2
			global.faceemotion = 2
		}
		if (lc_c == 18)
		{
			lc_a = 15
			caster_set_volume(global.batmusic, 0.07)
			intensity = 8
		}
		if (lc_c == 19)
		{
			lac = 60
			caster_set_volume(global.batmusic, 0)
			movearm = 0
			headx = 0
			heady = 0
			bounce = 2
			test_timer_on = 0
		}
	}
}
if (lac == 60)
{
	lac = 61
	alarm[5] = 80
}
if (lac == 62)
{
	sleep_c = 9
	obj_heart.movement = 1
	obj_heart.speed = 0
	obj_heart.sprite_index = spr_heart
	sweat = 3
	global.faceemotion = 9
	FL_AnimationIndex = 0
	global.msc = 0
	global.typer = 109
	global.msg[0] = scr_gettext("obj_sansb_body_2091")
	global.msg[1] = scr_gettext("obj_sansb_body_2092")
	global.msg[2] = scr_gettext("obj_sansb_body_2093")
	global.msg[3] = scr_gettext("obj_sansb_body_2094")
	global.msg[4] = scr_gettext("obj_sansb_body_2095")
	scr_blcon_x((obj_sansb.x + 120), (y - 10))
	lac = 63
}
if (lac == 63 && instance_exists(OBJ_WRITER) == false)
{
	FL_AnimationIndex = 0
	lac = 64
	alarm[5] = 300
}
if (lac == 65)
{
	global.msc = 0
	global.typer = 109
	global.msg[0] = scr_gettext("obj_sansb_body_2111")
	global.msg[1] = scr_gettext("obj_sansb_body_2112")
	global.msg[2] = scr_gettext("obj_sansb_body_2113")
	global.msg[3] = scr_gettext("obj_sansb_body_2114")
	global.msg[4] = scr_gettext("obj_sansb_body_2115")
	global.msg[5] = scr_gettext("obj_sansb_body_2116")
	global.msg[6] = scr_gettext("obj_sansb_body_2117")
	global.msg[7] = scr_gettext("obj_sansb_body_2118")
	global.msg[8] = scr_gettext("obj_sansb_body_2119")
	global.msg[9] = scr_gettext("obj_sansb_body_2120")
	global.msg[10] = scr_gettext("obj_sansb_body_2121")
	global.msg[11] = scr_gettext("obj_sansb_body_2122")
	global.msg[12] = scr_gettext("obj_sansb_body_2123")
	global.msg[13] = scr_gettext("obj_sansb_body_2124")
	scr_blcon_x((obj_sansb.x + 120), (y - 10))
	lac = 66
}
if (lac == 66 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 0
	lac = 67
	alarm[5] = 300
}
if (lac == 68)
{
	global.msc = 0
	global.typer = 109
	global.msg[0] = scr_gettext("obj_sansb_body_2141")
	global.msg[1] = scr_gettext("obj_sansb_body_2142")
	global.msg[2] = scr_gettext("obj_sansb_body_2143")
	scr_blcon_x((obj_sansb.x + 120), (y - 10))
	lac = 69
}
if (lac == 69 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 0
	lac = 70
	alarm[5] = 300
}
if (lac == 71)
{
	global.msc = 0
	global.typer = 109
	global.msg[0] = scr_gettext("obj_sansb_body_2161")
	global.msg[1] = scr_gettext("obj_sansb_body_2162")
	global.msg[2] = scr_gettext("obj_sansb_body_2163")
	global.msg[3] = scr_gettext("obj_sansb_body_2164")
	global.msg[4] = scr_gettext("obj_sansb_body_2165")
	global.msg[5] = scr_gettext("obj_sansb_body_2166")
	global.msg[6] = scr_gettext("obj_sansb_body_2167")
	global.msg[7] = scr_gettext("obj_sansb_body_2168")
	global.msg[8] = scr_gettext("obj_sansb_body_2169")
	global.msg[9] = scr_gettext("obj_sansb_body_2170")
	scr_blcon_x((obj_sansb.x + 120), (y - 10))
	lac = 72
}
if (lac == 72 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 0
	lac = 73
	alarm[5] = 300
}
if (lac == 74)
{
	global.msc = 0
	global.typer = 109
	global.msg[0] = scr_gettext("obj_sansb_body_2188")
	global.msg[1] = scr_gettext("obj_sansb_body_2189")
	global.msg[2] = scr_gettext("obj_sansb_body_2190")
	global.msg[3] = scr_gettext("obj_sansb_body_2191")
	global.msg[4] = scr_gettext("obj_sansb_body_2192")
	global.msg[5] = scr_gettext("obj_sansb_body_2193")
	scr_blcon_x((obj_sansb.x + 120), (y - 10))
	lac = 75
}
if (lac == 75 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 0
	lac = -1
}
if (lac == 999)
{
	obj_heart.speed = 0
	lac = 6
	obj_heart.movement = 1
	b1 = instance_create(-40, (global.idealborder[2] - 120), obj_bonewall_normal)
	b1.sprite_index = spr_s_bonewall_tall
	b1.hspeed = 7
	b1 = instance_create(720, (global.idealborder[3] - 80), obj_bonewall_normal)
	b1.sprite_index = spr_s_bonewall_tall
	b1.hspeed = -8
	b1 = instance_create((global.idealborder[0] - 110), (global.idealborder[2] - 150), obj_bonewall_normal)
	b1.sprite_index = spr_s_bonewall_wide
	b1.vspeed = 6
	b1 = instance_create((global.idealborder[1] - 70), (global.idealborder[3] + 150), obj_bonewall_normal)
	b1.sprite_index = spr_s_bonewall_wide
	b1.vspeed = -6
	lac = 10
}
if (test_timer_on == 1)
	test_timer += 1
if (mk_c == 1)
{
	mk_c_timer += 1
	if (mk_c_timer >= 15)
	{
		FL_AnimationIndex = 1
		global.faceemotion = 3
		mk_c = 2
		bs = instance_create(0, 0, obj_bonestab)
		bs.retain = 300
		bs.height = 100
		bs.dir = 0
		bs.warning = 0
	}
}
if (global.damagetimer > 0 && dodge == 0)
	dodge = 1
if (dodge == 1)
{
	timerbonus = global.damagetimer
	dg_t = 0
	dg_x = x
	hspeed = -12
	dodge = 2
}
if (dodge == 2)
{
	if (x < (dg_x - 60) && dg_t < 20)
	{
		if (hspeed < 0)
			hspeed += 2
		else
			hspeed = 0
	}
	dg_t += 1
	if (dg_t >= (20 + timerbonus))
	{
		if (hspeed < 12)
			hspeed += 2
		if (x >= (dg_x - 13))
		{
			hspeed = 0
			x = dg_x
			dodge = 0
			global.damagetimer = -1
		}
	}
}
if (death_c == 1)
{
	snd_play(snd_laz)
	global.faceemotion = 0
	asleep = 0
	sweat = 0
	bounce = 0
	dg_t = 0
	dg_x = x
	st = instance_create(x, (y - 30), obj_strike_temp)
	st.image_xscale = 1.5
	st.image_yscale = 1.5
	st.image_speed = 0.334
	hspeed = -12
	death_c = 2
}
if (death_c == 2)
{
	if (x < (dg_x - 60) && dg_t < 50)
	{
		if (hspeed < 0)
			hspeed += 2
		else
		{
			hspeed = 0
			death_c = 3
			global.msc = 0
			global.typer = 109
			global.msg[0] = scr_gettext("obj_sansb_body_2344")
			scr_blcon_x((x + 80), (y - 10))
			alarm[6] = 50
		}
	}
}
if (death_c == 3)
{
	global.faceemotion = 3
	FL_AnimationIndex = 1
	bof_d = 0
}
if (death_c == 4)
{
	with (OBJ_WRITER)
		instance_destroy()
	with (obj_blconwideslave)
		instance_destroy()
	snd_play(snd_laz)
	st = instance_create((x - 10), (y - 30), obj_strike_temp)
	st.image_xscale = 1.5
	st.image_yscale = 1.5
	st.image_speed = 0.25
	death_c = 5
	alarm[6] = 50
	hit_x = x
	global.faceemotion = 6
}
if (death_c == 5)
{
	if (bof_d < 4)
		draw_sprite_ext(spr_bof_what, floor(bof_d), x, (y - 50), 2, 2, 0, c_white, 1)
	bof_d += 1
}
if (death_c == 6)
{
	with (obj_sansb)
	{
		x = (mypart1.x - 60)
		global.damage = 9999999
		dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), (y - 50), obj_dmgwriter)
		with (dmgwriter)
		{
			dmg = 9999999
			drawbar = 0
		}
	}
	snd_play(snd_damage)
	deadtest = 1
	FL_AnimationIndex = 3
	x = (hit_x + 32)
	death_c = 7
	alarm[6] = 4
}
if (death_c == 8)
{
	x = (hit_x - 28)
	death_c = 9
	alarm[6] = 4
}
if (death_c == 10)
{
	FL_AnimationIndex = 3
	x = (hit_x + 24)
	death_c = 11
	alarm[6] = 4
}
if (death_c == 12)
{
	x = (hit_x - 20)
	death_c = 13
	alarm[6] = 4
}
if (death_c == 14)
{
	FL_AnimationIndex = 3
	x = (hit_x + 16)
	death_c = 15
	alarm[6] = 4
}
if (death_c == 16)
{
	x = (hit_x - 12)
	death_c = 17
	alarm[6] = 4
}
if (death_c == 18)
{
	FL_AnimationIndex = 3
	x = (hit_x + 8)
	death_c = 19
	alarm[6] = 4
}
if (death_c == 20)
{
	x = (hit_x - 4)
	death_c = 21
	alarm[6] = 4
}
if (death_c == 22)
{
	xoff = 0
	yoff = 0
	headx = 0
	heady = 0
	legx = 0
	legy = 0
	x = hit_x
	death_c = 23
	alarm[6] = 110
}
if (death_c >= 8 && death_c < 22)
{
	bounce = -1
	xoff = choose(0, -2, 2)
	yoff = choose(0, -2, 2)
	legx = choose(0, -1, 1)
	legy = choose(0, -1, 1)
}
if (death_c == 24)
{
	with (obj_dmgwriter)
		instance_destroy()
	bounce = 3
	deadtest = 1
	global.faceemotion = 4
	FL_AnimationIndex = 4
	death_c = 25
	alarm[6] = 30
}
if (death_c == 26)
{
	global.msc = 0
	global.typer = 107
	global.msg[0] = scr_gettext("obj_sansb_body_2495")
	global.msg[1] = scr_gettext("obj_sansb_body_2496")
	global.msg[2] = scr_gettext("obj_sansb_body_2497")
	global.msg[3] = scr_gettext("obj_sansb_body_2498")
	global.msg[4] = scr_gettext("obj_sansb_body_2499")
	global.msg[5] = scr_gettext("obj_sansb_body_2500")
	global.msg[6] = scr_gettext("obj_sansb_body_2501")
	global.msg[7] = scr_gettext("obj_sansb_body_2502")
	scr_blcon_x((x + 80), (y - 10))
	death_c = 27
}
if (death_c == 27 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.stringno == 0)
		global.faceemotion = 10
	if (OBJ_WRITER.stringno == 1)
		global.faceemotion = 7
	if (OBJ_WRITER.stringno == 2)
		global.faceemotion = 11
	if (OBJ_WRITER.stringno == 3)
		global.faceemotion = 7
	if (OBJ_WRITER.stringno == 4)
		global.faceemotion = 7
	if (OBJ_WRITER.stringno == 5)
		global.faceemotion = 11
	if (OBJ_WRITER.stringno == 6)
		global.faceemotion = 10
	if (OBJ_WRITER.stringno == 7)
		global.faceemotion = 10
}
if (death_c == 27 && instance_exists(OBJ_WRITER) == false)
{
	death_c = 27.1
	alarm[6] = 60
}
if (death_c == 28.1)
{
	bounce = 0
	global.faceemotion = 10
	FL_AnimationIndex = 5
	deadtest = 0
	death_c = 28
	alarm[6] = 80
}
if (death_c == 29)
{
	global.msc = 0
	global.typer = 107
	global.msg[0] = scr_gettext("obj_sansb_body_2539")
	global.msg[1] = scr_gettext("obj_sansb_body_2540")
	scr_blcon_x((x + 80), (y - 10))
	death_c = 30
}
if (instance_exists(OBJ_WRITER) && death_c == 30)
{
	if (OBJ_WRITER.stringno == 0)
		global.faceemotion = 10
	if (OBJ_WRITER.stringno == 1)
	{
		global.faceemotion = 8
		FL_AnimationIndex = 6
	}
}
if (death_c == 30 && instance_exists(OBJ_WRITER) == false)
{
	global.faceemotion = 10
	FL_AnimationIndex = 5
	bounce = 2
	hspeed = -2
	d_sin = 0
	death_c = 31
}
if (death_c == 31)
{
	d_sin += 1
	dsp = (sin((d_sin / 10)) * 1)
	hspeed = (-1 - dsp)
	if (x < -180)
		death_c = 32
}
if (death_c == 32)
{
	global.msc = 0
	global.typer = 107
	global.msg[0] = scr_gettext("obj_sansb_body_2574")
	scr_blcon_x(20, (y - 10))
	death_c = 33
}
if (death_c == 33 && instance_exists(OBJ_WRITER) == false)
{
	death_c = 34
	alarm[6] = 60
}
if (death_c == 35)
{
	ossafe_ini_open("undertale.ini")
	san_d = ini_read_real("Sans", "SK", 0)
	ini_write_real("Sans", "SK", (san_d + 1))
	ossafe_ini_close()
	ossafe_savedata_save()
	snd_play(snd_vaporized)
	death_c = 36
	alarm[6] = 140
	if (global.xp < 99999)
		global.xp = 99999
	scr_levelup()
}
if (death_c == 37)
{
	instance_create(0, 0, obj_unfader)
	death_c = 38
	caster_free(all)
	alarm[6] = 20
}
if (death_c == 39)
{
	instance_create(0, 0, obj_persistentfader)
	do_room_goto = true
}
if (asleep == 1)
{
	asleep_timer += 1
	if (asleep_timer == 10)
		instance_create((x + 20), (y - 10), obj_sans_z_battle)
	if (asleep_timer == 20)
		instance_create((x + 20), (y - 10), obj_sans_z_battle)
	if (asleep_timer == 30)
		instance_create((x + 20), (y - 10), obj_sans_z_battle)
	if (asleep_timer == 80)
		asleep_timer = 0
}
if (sleep_c == 9)
{
	sleep_c = 1
	drawborder = 0
	with (obj_heart)
		ignore_border = 1
	with (obj_borderparent)
		ignore_border = 1
	with (obj_borderparent)
		visible = false
	with (obj_borderparent)
		solid = 0
	instance_create(global.idealborder[0], global.idealborder[2], obj_emptyborder_s)
	with (obj_borderparent)
		instaborder = 1
	instance_create(obj_fightbt.x, obj_fightbt.y, obj_s_fakefightbt)
	with (obj_fightbt)
		visible = false
	global.idealborder[0] = -10
	global.idealborder[3] = 999
	global.faceemotion = 9
	sweat = 3
	bounce = 3
	with (obj_heart)
	{
		ignore_border = 1
		movement = 1
		speed = 0
	}
}
if (sleep_c == 1)
{
	if (lac > 60)
	{
		if (sleep_t < -10)
			sleep_t += 1
	}
	else
		sleep_t += 1
	if (sleep_t < 1200)
	{
		if (obj_heart.x < (obj_emptyborder_s.x + 10))
		{
			snd_play(snd_bell)
			obj_heart.x = (obj_emptyborder_s.x + 78)
			obj_heart.y = (obj_emptyborder_s.y + 78)
			sleep_t = -95
			facetype = 1
			global.faceemotion = 0
		}
	}
	if (sleep_t == -92)
		facetype = 0
	if (sleep_t == 0)
		global.faceemotion = 9
	if (sleep_t == 300)
	{
		global.faceemotion = 12
		if (sweat > 0)
			sweat -= 1
	}
	if (sleep_t == 600)
	{
		global.faceemotion = 13
		if (sweat > 0)
			sweat -= 1
	}
	if (sleep_t == 900)
	{
		global.faceemotion = 14
		if (sweat > 0)
			sweat -= 1
	}
	if (sleep_t == 1200)
	{
		global.faceemotion = 4
		asleep = 1
		sleep_c = 2
	}
}
if (global.km > 40)
	global.km = 40
if (global.km >= global.hp)
	global.km = (global.hp - 1)
if (global.km > 0 && global.hp > 1)
{
	km_t += 1
	if (prevhp == global.hp)
	{
		km_bonus = 0
		if (global.inv >= 45)
			km_bonus = choose(0, 1)
		if (global.inv >= 60)
			km_bonus = choose(0, 1, 1)
		if (global.inv >= 75)
			km_bonus = 1
		if (km_t >= (1 + km_bonus) && global.km >= 40)
		{
			km_t = 0
			global.hp -= 1
			global.km -= 1
		}
		if (km_t >= (2 + (km_bonus * 2)) && global.km >= 30)
		{
			km_t = 0
			global.hp -= 1
			global.km -= 1
		}
		if (km_t >= (5 + (km_bonus * 3)) && global.km >= 20)
		{
			km_t = 0
			global.hp -= 1
			global.km -= 1
		}
		if (km_t >= (15 + (km_bonus * 5)) && global.km >= 10)
		{
			km_t = 0
			global.hp -= 1
			global.km -= 1
		}
		if (km_t >= (30 + (km_bonus * 10)))
		{
			km_t = 0
			global.hp -= 1
			global.km -= 1
		}
		if (global.hp <= 0)
			global.hp = 1
	}
	prevhp = global.hp
}
