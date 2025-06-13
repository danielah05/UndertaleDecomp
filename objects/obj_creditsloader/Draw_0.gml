if (a_con == 4)
{
	with (asriel)
		instance_destroy()
	a2 = scr_marker(286, 140, spr_kidasriel_front_kawaii)
	a2.depth = 100000
	a2.image_xscale = 2
	a2.image_yscale = 2
	a2.image_index = 0
	a_con = 5
	alarm[4] = 60
}
if (a_con == 6)
{
	global.typer = 85
	global.msc = 0
	global.msg[0] = scr_gettext("obj_creditsloader_449")
	global.msg[1] = scr_gettext("obj_creditsloader_450")
	scr_blcon_ofs((a2.x + 80), a2.y, 0, 6, 0)
	a_con = 7
}
if (a_con == 7 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.stringno == 1)
		a2.image_index = 1
}
if (a_con == 7 && instance_exists(OBJ_WRITER) == false)
{
	a_con = 8
	alarm[4] = 50
	ch = instance_create(300, 300, obj_creditsheart)
	snd_play(snd_impact)
	specialfade = 15
	drawbar = 1
}
if (a_con == 8)
	a2.image_alpha -= 0.06
if (a_con == 9)
{
	alarm[5] = 10
	active = true
	a_con = 10
}
if (a_con == 2)
{
	a_con = 3
	global.typer = 86
	global.msc = 0
	global.msg[0] = scr_gettext("obj_creditsloader_492")
	global.msg[1] = scr_gettext("obj_creditsloader_493")
	scr_blcon_x((asriel.x + 80), (asriel.y - 20))
}
if (a_con == 3 && instance_exists(OBJ_WRITER) == false)
{
	caster_stop(horror)
	a_con = 4
	instance_create(0, 0, obj_flasher)
	snd_play(snd_break2)
}
if (active == true)
	mytimer += 1
if (mytimer == 10)
{
	lastsong = caster_load("music/end/express_myself.ogg")
	caster_play(lastsong, 1, 1)
	memory = 0
	alarm[5] = 1
}
if (credno >= 60 && memory == 0)
{
	alarm[5] = 90
	memory = 2
}
if (memory == 2 && credno >= 252)
{
	alarm[5] = -1
	cb = instance_create(320, 240, obj_creditboss)
	cb.alarm[0] = 60
	cb.type = 2
	memory = 3
}
if (memory == 3 && instance_exists(obj_creditboss) == false)
{
	alarm[5] = 60
	memory = 4
}
if (memory == 4 && credno >= 596)
{
	memory = 7
	alarm[5] = 100
}
if (memory == 7 && credno >= 716)
{
	memory = 6
	alarm[5] = 160
}
if (memory == 6 && credno >= 881)
{
	memory = -2
	st_y = 500
	st_t = 0
	st_f = 1
	alarm[5] = -1
}
if (drawbar == 1)
{
	scr_setfont(fnt_maintext)
	draw_set_color(c_lime)
	draw_set_alpha(specialfade)
	scr_drawtext_centered_scaled(320, 20, scr_gettext("credits_specialthanks"), 2, 2)
	specialfade -= 0.05
	draw_set_alpha(1)
	draw_sprite(spr_hpname, 0, 260, 450)
	draw_sprite_ext(spr_infinitysign, 0, 296, 452, 2, 2, 0, c_yellow, 1)
}
if (memory == -2 && (!instance_exists(obj_creditbullet)))
{
	drawbar = 0
	st_t += 1
	if (st_t < 150 && st_y > 50)
	{
		st_f += 0.25
		st_y -= st_f
		st_f2 = 1
	}
	if (st_t > 240 && st_y < 500)
	{
		vol = 0.8
		l_alpha = 0
		st_y += st_f2
		st_f2 += 0.25
		st_f3 = 0
		st_y2 = 500
	}
	scr_setfont(fnt_maintext)
	draw_set_color(c_yellow)
	if (hitno > 0)
	{
		scr_drawtext_centered_scaled(320, st_y, scr_gettext("credits_touched"), 2, 2)
		draw_set_font(fnt_maintext)
		for (i = 0; i < hitno; i += 1)
			scr_drawtext_centered(320, ((st_y + 40) + (i * 20)), hitname[i])
	}
	scr_setfont(fnt_maintext)
	if (hitno <= 0)
	{
		ossafe_ini_open("undertale.ini")
		ini_write_real("reset", "s_key", 1)
		ossafe_ini_close()
		ossafe_savedata_save()
		scr_drawtext_centered_scaled(320, st_y, scr_gettext("credits_door"), 4, 4)
	}
	if (st_t >= 320)
	{
		draw_set_color(c_white)
		st_y2 -= 2
		scr_drawtext_centered_scaled(320, st_y2, scr_gettext("credits_finalthanks"), 2, 2)
		if (st_y2 <= -400)
		{
			if (st_y2 >= -410)
				l_alpha = 0
			depth = -9000
			draw_set_color(c_black)
			draw_set_alpha(l_alpha)
			l_alpha += (1/120)
			ossafe_fill_rectangle(-10, -10, 999, 999)
			if (st_y2 <= -830)
			{
				caster_free(lastsong)
				do_room_goto = true
			}
		}
	}
}
if (ting == 1)
{
	snd_stop(snd_block2)
	snd_play(snd_block2)
	ting = 0
}
