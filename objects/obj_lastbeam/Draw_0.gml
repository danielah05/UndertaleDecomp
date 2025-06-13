timer += 1
siner += 1
col = old_make_color_hsv((siner * 11), 190, 250)
col2 = old_make_color_hsv(((siner + 3) * 11), 190, 250)
col3 = old_make_color_hsv(((siner + 5) * 11), 140, 250)
if (timer == beamtime)
{
	hits = 0
	alarm[5] = 1
	obj_btparent.depth = -2000
	depth = -1000
	obj_heart.depth = -2100
	shaken = 0
	menu[0] = obj_fightbt
	menux[0] = obj_fightbt.x
	menuy[0] = obj_fightbt.y
	menu[1] = obj_itembt
	menux[1] = obj_itembt.x
	menuy[1] = obj_itembt.y
	menu[2] = obj_sparebt
	menux[2] = obj_sparebt.x
	menuy[2] = obj_sparebt.y
	svol1 = 0.8
	svol2 = 0
	s1 = caster_play(beamsfx, svol1, 1)
	s2 = caster_loop(beamsfx2, 1, 1)
	ar = 0.7
	bw = 60
	if (range == 1)
		bw = 220
	if (range == 2)
		bw = 120
	mbw = bw
	bw = 0
}
if (timer > beamtime)
{
	if (timer < (beamtime + 6))
		bw += (mbw / 5)
	if (bw > 0)
	{
		if (svol2 < 0.8)
			svol2 += 0.05
		caster_set_volume(s2, svol2)
		ob = ((sin((siner / 2)) * (mbw / 5)) * (bw / mbw))
		draw_set_alpha(ar)
		if (home == 0)
		{
			draw_triangle_color(x, y, ((x + bw) + ob), (room_height + 10), ((x - bw) - ob), (room_height + 10), col, col2, col2, 0)
			draw_triangle_color(x, y, ((x + bw) + (ob / 2)), (room_height + 10), ((x - bw) - (ob / 2)), (room_height + 10), col, col2, col2, 0)
			draw_triangle_color(x, y, ((x + bw) - ob), (room_height + 10), ((x - bw) + ob), (room_height + 10), col, col3, col3, 0)
			draw_sprite_ext(spr_beamcircle, 0, x, y, ((7 + (sin((siner / 2)) * 3.75)) * (bw / mbw)), ((7 + (sin((siner / 2)) * 3.75)) * (bw / mbw)), 0, col, ar)
			draw_sprite_ext(spr_beamcircle, 0, x, y, ((6 + (sin((siner / 2)) * 2.5)) * (bw / mbw)), ((6 + (sin((siner / 2)) * 2.5)) * (bw / mbw)), 0, col, ar)
			draw_sprite_ext(spr_beamcircle, 0, x, y, ((5 + sin((siner / 2))) * (bw / mbw)), ((5 + sin((siner / 2))) * (bw / mbw)), 0, col2, ar)
		}
		if (home == 1)
		{
			targetx = mouse_x
			targety = mouse_y
			tt = lengthdir_x(600, point_direction(x, y, targetx, targety))
			tt2 = lengthdir_y(600, point_direction(x, y, targetx, targety))
			draw_line_width_color(x, y, (x + tt), (y + tt2), (bw + (ob * 2)), col, col2)
			draw_line_width_color(x, y, (x + tt), (y + tt2), (bw + ob), col, col2)
			draw_line_width_color(x, y, (x + tt), (y + tt2), bw, col, col3)
			factor = (mbw / 60)
			draw_sprite_ext(spr_beamcircle, 0, x, y, (((7 + (sin((siner / 2)) * 3)) * (bw / mbw)) * factor), (((7 + (sin((siner / 2)) * 3)) * (bw / mbw)) * factor), 0, col, ar)
			draw_sprite_ext(spr_beamcircle, 0, x, y, (((6 + (sin((siner / 2)) * 2)) * (bw / mbw)) * factor), (((6 + (sin((siner / 2)) * 2)) * (bw / mbw)) * factor), 0, col, ar)
			draw_sprite_ext(spr_beamcircle, 0, x, y, (((5 + sin((siner / 2))) * (bw / mbw)) * factor), (((5 + sin((siner / 2))) * (bw / mbw)) * factor), 0, col2, ar)
		}
		if (last > 0 && timer == 120)
		{
			shaken = 1
			bw += 100
			mbw += 80
			caster_set_pitch(s2, 1.3)
			blcon = instance_create(400, 50, obj_blconwdflowey)
			global.msc = 0
			global.msg[0] = scr_gettext("obj_lastbeam_230")
			global.typer = 88
			blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
			blcon.depth = -2000
			blconwd.depth = -2200
		}
		if (timer == 190 || timer == 340)
		{
			if (last > 0)
			{
				with (blcon)
					instance_destroy()
				with (blconwd)
					instance_destroy()
			}
		}
		if (last > 0 && timer == 240)
		{
			shaken = 2
			bw += 400
			mbw += 260
			caster_set_pitch(s2, 1.8)
			blcon = instance_create(400, 50, obj_blconwdflowey)
			global.msc = 0
			global.msg[0] = scr_gettext("obj_lastbeam_255")
			global.typer = 88
			blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
			blcon.depth = -2000
			blconwd.depth = -2200
		}
		if (shaken == 1)
		{
			for (i = 0; i < 3; i += 1)
			{
				menu[i].x = ((menux[i] + random(4)) - random(4))
				menu[i].y = ((menuy[i] + random(4)) - random(4))
			}
		}
		if (shaken == 2)
		{
			for (i = 0; i < 3; i += 1)
			{
				menu[i].vspeed += 0.5
				menu[i].image_angle += (random(4) - random(4))
			}
			global.bmenucoord[0] = 1
			global.mercy = 3
		}
		draw_set_alpha(1)
		if (timer > ((beamtime + 80) + last))
		{
			if (svol2 > 0)
				svol2 -= 0.1
			caster_set_volume(s2, svol2)
			bw -= (mbw / 12)
			ar -= 0.04
			if (bw <= 0)
			{
				caster_stop(s2)
				global.mnfight = 3
				global.msg[0] = scr_gettext("obj_lastbeam_296")
				instance_destroy()
			}
		}
	}
}
scr_binfowrite()
