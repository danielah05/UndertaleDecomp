if (active == true)
{
	if (type == 2)
	{
		siner += 1
		y += sin((siner / 6))
		draw_sprite(spr_whimsun, floor((siner / 6)), x, y)
	}
	if (type == 3)
	{
		siner += 1
		draw_sprite_ext(spr_moldsmal, floor((siner / 6)), x, ((y + (sin((siner / 4)) * 10)) + 20), 1, (1 - (sin((siner / 4)) * 0.05)), 0, c_white, 1)
	}
	if (type == 4)
	{
		siner += 1
		draw_sprite_ext(spr_napstabattle_leg, floor((siner / 4)), (x - 2), (y - 6), 2, 2, 0, c_white, 1)
		if (y < (view_yview_get(0) + 240) && FL_NapstablookStatus > NapstablookStatus.NotSet)
		{
			siner2 += 1
			draw_sprite_ext(spr_blookhat, 5, (x + 34), (y - 32), 2, 2, 0, c_white, (siner2 / 100))
		}
	}
	if (type == 5)
	{
		siner += 1
		gosp = spr_migosp
		if (y < (view_yview_get(0) + 240))
			gosp = spr_migosphappy
		if (siner < 15)
			draw_sprite(gosp, 0, x, y)
		if (siner >= 15 && siner <= 18)
			draw_sprite(gosp, 1, x, y)
		if (siner >= 19 && siner <= 21)
			draw_sprite(gosp, 0, x, y)
		if (siner >= 22 && siner <= 25)
			draw_sprite(gosp, 1, x, y)
		if (siner >= 25)
			siner = 0
	}
	if (type == 6)
	{
		siner += 1
		if (siner > 30)
		{
			siner2 += 1
			if (siner2 > 9)
			{
				siner2 = 0
				siner = 0
			}
		}
		draw_sprite(spr_loox, floor((siner2 / 2)), x, (y - 10))
	}
	if (type == 7)
	{
		siner += 1
		draw_sprite(spr_vegetoid, floor((siner / 6)), x, y)
	}
	if (type == 8)
	{
		siner += 1
		draw_sprite(spr_lesserdoge, floor((siner / 10)), x, y)
		if (y < (view_yview_get(0) + 240))
		{
			if (FL_LesserDogStatus == DogStatus.MaxNeckSize)
				mercymod += 2
		}
	}
	if (type == 9)
	{
		siner += 1
		draw_sprite_ext(spr_greatdog_n, floor((siner / 10)), x, y, 2, 2, 0, c_white, 1)
	}
	if (type == 10)
	{
		siner += 1
		draw_sprite(spr_icecap, floor((siner / 10)), x, (y + 16))
	}
	if (type == 13)
	{
		if (y < (view_yview_get(0) + 240))
		{
			part1.sprite_index = spr_movedogeheadb
			part1.image_speed = 0.1
		}
	}
	if (type == 17)
	{
		if (y < (view_yview_get(0) + 240))
		{
			if (emotion == 1)
				emotion = 2
		}
	}
	if (type == 19)
	{
		if (y < (view_yview_get(0) + 260))
		{
			if (msx.stage == 0)
				msx.stage = 1
		}
	}
	if (type == 20)
	{
		if (y < (view_yview_get(0) + 240))
		{
			global.faceemotion = 3
			dummy.rotmod += 0.04
			dummy.speedmod += 0.03
		}
	}
	if (type == 21)
	{
		if (y < (view_yview_get(0) + 240) && bd == 0)
		{
			bd = 1
			with (bara1)
				event_user(2)
		}
	}
	if (type == 22)
	{
		if (y < (view_yview_get(0) + 240))
			obj_vulkinbody.face = spr_vulkinface4
	}
	if (type == 27)
	{
		if (y < (view_yview_get(0) + 300))
		{
			siner2 += 1
			if (siner2 > 25)
				knight.asleep = 1
			if (siner2 > 50)
				knight.asleep = 2
		}
	}
	if (type == 30)
	{
		if (y < (view_yview_get(0) + 260))
		{
			if (eye.anim < 230)
				eye.anim = 235
		}
		else
			eye.anim = 20
	}
	if (type == 31)
	{
		if (y < (view_yview_get(0) + 200))
		{
			if (aa.mega == 0)
			{
				aa.mega = 1
				aa.alarm[0] = -1
				aa.alarm[1] = -1
				aa.alarm[2] = -1
				aa.on = 1
			}
		}
	}
	if (type == 32)
	{
		if (y < (view_yview_get(0) + 200))
			aa.stretchup = 2
	}
	if (type == 33)
	{
		if (y < (view_yview_get(0) + 200))
		{
			graze = 3
			aa.fader = 1
		}
	}
	if (type == 34)
	{
		if (y < (view_yview_get(0) + 200))
		{
			if (aa.melting == 0)
				aa.melting = 1
		}
	}
	if (type == 40)
	{
		image_speed = 0
		image_index = 0
		siner += 0.25
		if (siner >= 0)
			image_index = siner
		if (siner >= 7)
		{
			image_index = 0
			siner = -6
		}
		draw_sprite_ext(spr_boss_mewmew_idle, siner, (x - 35), (y + 15), 2, 2, 0, c_white, image_alpha)
		draw_sprite_ext(spr_boss_mewmew_face, siner2, ((x + 62) - 35), ((y + 18) + 15), 2, 2, 0, c_white, image_alpha)
		if (y < (view_yview_get(0) + 200))
		{
			siner2 = 1
			if (FL_MadMewMewStatus == MadMewMewStatus.Killed)
				siner2 = 8
		}
	}
}
