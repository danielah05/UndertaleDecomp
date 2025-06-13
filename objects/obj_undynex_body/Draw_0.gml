if (movetype == 2)
{
	larm.visible = true
	if (slashno == 0 && larm.image_angle > -104)
	{
		facetype = 1
		larm.image_angle -= 35
		larm.x -= 4
		larm.y -= 4
		heady -= 2
	}
	if (slashno == 0 && larm.image_angle <= -104)
	{
		larm.image_angle = -104
		alarm[1] = 5
		slashno = 0.1
	}
	if (slashno == 1.1)
	{
		slashno = 1
		alarm[1] = 2
	}
	if (slashno == 1)
	{
		facetype = 0
		larm.depth = 4
		larm.image_angle += (220/3)
	}
	if (slashno == 2)
	{
		larm.x = larm.xstart
		larm.y = larm.ystart
		larm.image_angle = 66
		slash = instance_create((larm.x - 180), (larm.y + 20), obj_npc_marker)
		slash.sprite_index = spr_undyneb_smear
		slash.visible = true
		slash.image_alpha = 1
		slash2 = instance_create((larm.x - 180), (larm.y + 20), obj_npc_marker)
		slash2.sprite_index = spr_undyneb_smear
		slash2.visible = true
		slash2.image_alpha = 1
		slashno = 3
	}
	if (slashno == 3)
	{
		if (heady < 6)
			heady += 3
		slash.image_alpha -= 0.1
		slash2.image_alpha -= 0.1
		slash2.y += 24
		larm.image_angle += 0.5
		if (larm.image_angle > 70)
		{
			with (slash)
				instance_destroy()
			with (slash2)
				instance_destroy()
			slashno = 4
			alarm[1] = 3
		}
	}
	if (slashno == 5)
	{
		if (heady > 0)
			heady -= 1
		larm.image_angle -= 15
		if (larm.image_angle <= 6)
		{
			heady = 0
			larm.depth = 7
			larm.image_angle = 0
			slashno = 0
			movetype = 0
			arm_v = 0
			larm.visible = false
		}
	}
}
siner += 1.4
if (pause == 1)
	siner = 0
s_f = sin((siner / 6))
s_f2 = sin((siner / 3))
s_f3 = sin((siner / 14))
draw_sprite_ext(spr_undynex_hair, 0, (x + 85), (((y + (s_f * 3)) + heady) + 4), 2, 2, (70 - (s_f * 15)), c_white, 1)
draw_sprite_ext(spr_undynex_legs, 0, (x + 100), (y + 164), 2, 2, 0, c_white, 1)
if (arm_v == 0)
	draw_sprite_ext(spr_undynex_leftarm, 0, ((x + 64) + (s_f * 5)), ((y + 78) + (s_f * 5)), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_undynex_rightarm, 0, ((x + 136) + (s_f2 * 3)), (((y + 78) + (s_f * 6)) + (s_f2 * 2)), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_undynex_torso, 0, (x + 100), ((y + 78) + (s_f * 4)), 2, 2, (-((s_f * 4))), c_white, 1)
draw_sprite_ext(spr_undynex_pants, 0, (x + 100), ((y + 122) + (s_f * 2)), 2, 2, (s_f * 2), c_white, 1)
if (facetype == 0)
{
	if (pause == 0)
		draw_sprite_ext(spr_undynex_face1, floor((siner / 3)), (x + 100), (((y + 28) + (s_f * 2)) + heady), 2, 2, 0, c_white, 1)
	if (pause == 1)
		draw_sprite_ext(spr_undynex_face_damage, floor((siner / 3)), (x + 100), (((y + 28) + (s_f * 2)) + heady), 2, 2, 0, c_white, 1)
}
if (facetype == 1)
	draw_sprite_ext(spr_undynex_face_laugh, floor((siner / 3)), (x + 100), (((y + 28) + (s_f * 2)) + heady), 2, 2, 0, c_white, 1)
if (facetype == 2)
	draw_sprite_ext(spr_undynex_face_e, global.faceemotion, (x + 100), (((y + 28) + (s_f * 2)) + heady), 2, 2, 0, c_white, 1)
if (facetype != 0)
	eyetimer = 0
eyetimer += 1
if (eyetimer >= 10)
{
	draw_sprite_ext(spr_undynex_eyebeam, 0, (x + 110), ((y + 24) + (s_f * 2)), ((eyetimer - 10) / 4), (2.5 - ((eyetimer - 10) / 20)), (-((s_f3 * 32))), c_white, (1.5 - ((eyetimer - 10) / 20)))
	if (eyetimer >= 40)
		eyetimer = 0
}
if (movetype == 2)
	arm_v = 1
if (shakify > 0)
{
	x = ((xstart + random(shakify)) - random(shakify))
	y = ((ystart + random(shakify)) - random(shakify))
}
