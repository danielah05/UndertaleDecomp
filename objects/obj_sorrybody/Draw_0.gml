if (pause == 1)
{
	draw_sprite_ext(spr_sorry_body, 0, x, (y + 64), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryleg, 0, (x - 2), (y + 128), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryleg, 0, (x + 2), (y + 128), -2, 2, 0, c_white, 1)
	if (FL_AnimationIndex == 0)
	{
		draw_sprite_ext(spr_sorryarm, 0, (x - 44), (y + 32), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_sorryarm, 0, (x + 46), (y + 32), -2, 2, 0, c_white, 1)
	}
	draw_sprite_ext(spr_sorry_head, 0, x, y, 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorry_face, global.faceemotion, x, (y + 12), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryear_l, 0, (x - 32), (y - 22), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryear_l, 0, (x + 32), (y - 22), -2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryhat, hat, x, (y - 20), 2, 2, 0, c_white, 1)
	if (FL_AnimationIndex == 1)
	{
		draw_sprite_ext(spr_sorryarm_headgrab, 0, (x - 44), (y + 32), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_sorryarm_headgrab, 0, (x + 46), (y + 32), -2, 2, 0, c_white, 1)
	}
	if (FL_AnimationIndex == 2)
	{
		draw_sprite_ext(spr_sorryarm_behind, 0, (x - 44), (y + 32), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_sorryarm_behind, 0, (x + 46), (y + 32), -2, 2, 0, c_white, 1)
	}
	if (FL_AnimationIndex >= 3)
	{
		draw_sprite_ext(spr_sorryarm_behind, 0, (x - 44), (y + 32), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_sorryarm_drawing, FL_AnimationIndex, (x + 52), (y + 28), -2, 2, 0, c_white, 1)
	}
}
if (freeze == false && back == false && pause == 0)
{
	siner += 1
	if (intense == 1)
		siner += 1
	draw_sprite_ext(spr_sorrytail, 0, (x + (sin((siner / 12)) * 46)), (y + 88), (sin((siner / 12)) * 2), 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorry_body, 0, x, ((y + 64) + (sin((siner / 6)) * 2)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryleg, 0, ((x - 2) - (sin((siner / 6)) * 2)), (y + 128), 2, (2 + (cos((siner / 3)) * 0.1)), 0, c_white, 1)
	draw_sprite_ext(spr_sorryleg, 0, ((x + 2) + (sin((siner / 6)) * 2)), (y + 128), -2, (2 + (cos((siner / 3)) * 0.1)), 0, c_white, 1)
	if (FL_AnimationIndex == 0)
	{
		draw_sprite_ext(spr_sorryarm, FL_AnimationIndex, ((x - 44) + (sin((siner / 3)) * 2)), (y + 32), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_sorryarm, FL_AnimationIndex, ((x + 46) - (sin((siner / 3)) * 2)), (y + 32), -2, 2, 0, c_white, 1)
	}
	draw_sprite_ext(spr_sorry_head, 0, x, (y + (sin((siner / 6)) * 3)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorry_face, global.faceemotion, x, ((y + 12) + (sin((siner / 6)) * 4)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryear_l, 0, (x - 32), ((y - 22) + (sin((siner / 6)) * 1)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryear_l, 0, (x + 32), ((y - 22) + (sin((siner / 6)) * 1)), -2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryhat, hat, x, ((y - 20) + (sin((siner / 6)) * 5)), 2, 2, 0, c_white, 1)
	if (FL_AnimationIndex == 1)
	{
		draw_sprite_ext(spr_sorryarm_headgrab, FL_AnimationIndex, ((x - 44) + (sin((siner / 3)) * 2)), (y + 32), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_sorryarm_headgrab, FL_AnimationIndex, ((x + 46) - (sin((siner / 3)) * 2)), (y + 32), -2, 2, 0, c_white, 1)
	}
	if (FL_AnimationIndex == 2)
	{
		draw_sprite_ext(spr_sorryarm_behind, FL_AnimationIndex, ((x - 44) + (sin((siner / 3)) * 2)), (y + 32), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_sorryarm_behind, FL_AnimationIndex, ((x + 46) - (sin((siner / 3)) * 2)), (y + 32), -2, 2, 0, c_white, 1)
	}
	if (FL_AnimationIndex >= 3)
	{
		draw_sprite_ext(spr_sorryarm_behind, FL_AnimationIndex, ((x - 44) + (sin((siner / 3)) * 2)), (y + 32), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_sorryarm_drawing, FL_AnimationIndex, ((x + 52) - (sin((siner / 3)) * 2)), (y + 28), -2, 2, 0, c_white, 1)
	}
}
if (back == true)
{
	tailsiner += (1 + tail_t)
	siner += 1
	if (intense == 1)
		siner += 1
	if (armtype == 0)
	{
		draw_sprite_ext(spr_sorryarm, 0, ((x - 44) + (sin((siner / 3)) * 2)), (y + 32), 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_sorryarm, 0, ((x + 46) - (sin((siner / 3)) * 2)), (y + 32), -2, 2, 0, c_white, 1)
	}
	if (armtype == 1)
	{
		arm_a = (sin((siner / 8)) * 22)
		armspr = spr_sorryarm_close
		if (arm_a <= -16)
		{
			armspr = spr_sorryarm_open
			if (madetrash == 0)
			{
				madetrash = 1
				repeat diff
					instance_create(((x - 54) + arm_a), (((y + 32) + 8) + arm_a), obj_sorry_trashball)
				if instance_exists(obj_sosorry)
				{
					if (obj_sosorry.myplot >= 5)
					{
						with (obj_sorry_trashball)
							stop = -1
					}
				}
			}
		}
		if (arm_a > 0)
			madetrash = 0
		draw_sprite_ext(armspr, 0, ((x - 20) + arm_a), (((y + 32) + 20) + arm_a), 2, 2, ((-(sin((siner / 4)))) * 15), c_white, 1)
		arm_b = (sin(((24 + siner) / 8)) * 22)
		armspr = spr_sorryarm_close
		if (arm_b <= -16)
		{
			armspr = spr_sorryarm_open
			if (madetrash_b == 0)
			{
				madetrash_b = 1
				repeat diff
					instance_create(((x + 54) - arm_b), (((y + 32) + 8) + arm_b), obj_sorry_trashball)
				if instance_exists(obj_sosorry)
				{
					if (obj_sosorry.myplot >= 5)
					{
						with (obj_sorry_trashball)
							stop = -1
					}
				}
			}
		}
		if (arm_b > 0)
			madetrash_b = 0
		draw_sprite_ext(armspr, 0, ((x + 22) - arm_b), (((y + 32) + 20) + arm_b), -2, 2, (sin(((12 + siner) / 4)) * 15), c_white, 1)
	}
	draw_sprite_ext(spr_sorryhat, hat, x, ((y - 20) + (sin((siner / 6)) * 5)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorry_headback, 0, x, (y + (sin((siner / 6)) * 3)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryleg, 0, ((x - 2) - (sin((siner / 6)) * 2)), (y + 128), 2, (2 + (cos((siner / 3)) * 0.1)), 0, c_white, 1)
	draw_sprite_ext(spr_sorryleg, 0, ((x + 2) + (sin((siner / 6)) * 2)), (y + 128), -2, (2 + (cos((siner / 3)) * 0.1)), 0, c_white, 1)
	draw_sprite_ext(spr_sorryear_l, 0, (x - 32), ((y - 22) + (sin((siner / 6)) * 1)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorryear_l, 0, (x + 32), ((y - 22) + (sin((siner / 6)) * 1)), -2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_sorry_bodyback, 0, x, ((y + 64) + (sin((siner / 6)) * 2)), 2, 2, 0, c_white, 1)
	if (tailtype == 0)
	{
		minpull = (sin((tailsiner / 12)) * 1.7)
		if (minpull > 0)
			minpull += 0.3
		if (minpull < 0)
			minpull -= 0.3
		for (i = 0; i < 16; i += 1)
		{
			if (minpull >= 0)
				g = -1
			if (minpull < 0)
				g = 1
			draw_sprite_ext(spr_sorrytail_curveback, 0, (x + (sin((tailsiner / 12)) * 40)), ((y + 82) + (sin((siner / 6)) * 2)), (minpull + ((i * 0.04) * g)), 2, 0, c_white, 1)
		}
	}
	if (tailtype == 1)
	{
		rot = (sin((tailsiner / 12)) * 80)
		cut = 1
		if (rot >= 46 || rot <= -46)
			cut = 0.5
		if (rot >= 49 || rot <= -49)
			cut = 0.25
		if (rot >= 52 || rot <= -52)
			cut = 0
		add = ((extend - (abs(sin((tailsiner / 12))) * extend)) * cut)
		if (abs(rot) < 58)
		{
			draw_sprite_ext(spr_sorrytail_vert, 0, x, ((y + 42) - (add * 15)), (2 - (add / 4)), (2 + add), (sin((tailsiner / 12)) * 80), ch_color, 1)
			if collision_line(x, ((y + 42) - (add * 15)), (x + lengthdir_x((130 + (60 * add)), (rot - 90))), (((y + 42) - (add * 15)) + lengthdir_y((130 + (60 * add)), (rot - 90))), obj_heart, false, true)
				event_user(1)
			if collision_line((x - 2), ((y + 42) - (add * 15)), ((x + lengthdir_x((130 + (60 * add)), (rot - 90))) - 2), (((y + 42) - (add * 15)) + lengthdir_y((130 + (60 * add)), (rot - 90))), obj_heart, false, true)
				event_user(1)
			if collision_line((x + 2), ((y + 42) - (add * 15)), ((x + lengthdir_x((130 + (60 * add)), (rot - 90))) + 2), (((y + 42) - (add * 15)) + lengthdir_y((130 + (60 * add)), (rot - 90))), obj_heart, false, true)
				event_user(1)
			madech = 0
		}
		if (rot >= 58)
		{
			if (madech == 0)
			{
				madech = 1
				if (ch == 0)
					ch = choose(1, 1, 0)
				else if (ch == 1)
					ch = choose(0, 0, 1)
				else
					ch = choose(0, 1)
				if (ch == 0)
					ch_color = 16754964
				else
					ch_color = 4235519
			}
			if (ch == 0)
				ch_color2 = merge_color(c_white, c_soulblue, abs(sin((siner / 2))))
			if (ch == 1)
				ch_color2 = merge_color(c_white, c_orange, abs(sin((siner / 2))))
			draw_sprite_ext(spr_sorrytail_curveback, 0, (x + (sin((tailsiner / 12)) * 44)), (y + 80), 2, 2, ((sin((tailsiner / 12)) * 60) - 60), ch_color2, 1)
		}
		if (rot <= -58)
		{
			if (madech == 0)
			{
				madech = 1
				if (ch == 0)
					ch = choose(1, 1, 0)
				else if (ch == 1)
					ch = choose(0, 0, 1)
				else
					ch = choose(0, 1)
				if (ch == 0)
					ch_color = 16754964
				else
					ch_color = 4235519
			}
			if (ch == 0)
				ch_color2 = merge_color(c_white, c_soulblue, abs(sin((siner / 2))))
			if (ch == 1)
				ch_color2 = merge_color(c_white, c_orange, abs(sin((siner / 2))))
			draw_sprite_ext(spr_sorrytail_curveback, 0, (x + (sin((tailsiner / 12)) * 44)), (y + 80), -2, 2, ((sin((tailsiner / 12)) * 60) + 60), ch_color2, 1)
		}
	}
	if (o_o == 0)
		o_o = 1
	else
		o_o = 0
}
if (shimmy == 1)
	x += (cos((siner / 12)) * 6)
