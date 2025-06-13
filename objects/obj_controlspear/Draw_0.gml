draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, 1)
if (active == true)
{
	draw_set_color(c_white)
	ossafe_fill_rectangle((view_xview_get(view_current) + 16), (view_yview_get(view_current) + 180), (view_xview_get(view_current) + 304), (view_yview_get(view_current) + 235))
	draw_set_color(c_black)
	ossafe_fill_rectangle((view_xview_get(view_current) + 19), (view_yview_get(view_current) + 183), (view_xview_get(view_current) + 301), (view_yview_get(view_current) + 232))
	draw_set_color(c_white)
	scr_setfont(fnt_maintext)
	buffer = -1
	if (everselect == 0)
		mytext = scr_gettext("obj_controlspear_89")
	if (global.osflavor >= OSFlavors.Playstation)
		mytext = scr_gettext("obj_controlspear_90")
	if (everselect != 0)
		mytext = " "
	if (everselect > 1)
		everselect -= 1
	if (active == true)
	{
		if obj_time.left
		{
			if (image_angle < 170)
				image_angle += 1.5
		}
		if obj_time.right
		{
			if (image_angle > 10)
				image_angle -= 1.5
		}
	}
	select = 0
	draw_set_color(c_red)
	getdir = image_angle
	xdir = lengthdir_x(300, getdir)
	ydir = lengthdir_y(300, getdir)
	col = -4
	col2 = collision_line(x, y, (x + xdir), (y + ydir), undyne, false, true)
	if collision_line(x, y, (x + xdir), (y + ydir), teabox, false, true)
	{
		if (everselect < 2)
		{
			if (!snd_isplaying(snd_squeak))
				snd_play(snd_squeak)
		}
		everselect = 3
		select = teabox
		mytext = ((scr_gettext("obj_controlspear_132") + "#") + scr_gettext("obj_controlspear_select"))
	}
	if collision_line(x, y, (x + xdir), (y + ydir), hotchocolate, false, true)
	{
		if (everselect < 2)
		{
			if (!snd_isplaying(snd_squeak))
				snd_play(snd_squeak)
		}
		everselect = 3
		select = hotchocolate
		mytext = ((scr_gettext("obj_controlspear_143") + "#") + scr_gettext("obj_controlspear_select"))
	}
	if collision_line(x, y, (x + xdir), (y + ydir), soda, false, true)
	{
		if (everselect < 2)
		{
			if (!snd_isplaying(snd_squeak))
				snd_play(snd_squeak)
		}
		everselect = 3
		select = soda
		mytext = ((scr_gettext("obj_controlspear_154") + "#") + scr_gettext("obj_controlspear_select"))
	}
	if collision_line(x, y, (x + xdir), (y + ydir), sugar, false, true)
	{
		if (everselect < 2)
		{
			if (!snd_isplaying(snd_squeak))
				snd_play(snd_squeak)
		}
		everselect = 3
		select = sugar
		mytext = ((scr_gettext("obj_controlspear_165") + "#") + scr_gettext("obj_controlspear_select"))
	}
	if (col2 == undyne)
	{
		if (everselect < 2)
		{
			if (!snd_isplaying(snd_squeak))
				snd_play(snd_squeak)
		}
		everselect = 3
		select = undyne
		mytext = ((scr_gettext("obj_controlspear_176") + "#") + scr_gettext("obj_controlspear_select"))
	}
	if (image_angle >= 53 && image_angle <= 66)
	{
		if (everselect < 2)
		{
			if (!snd_isplaying(snd_squeak))
				snd_play(snd_squeak)
		}
		select = 9
		everselect = 3
		mytext = ((scr_gettext("obj_controlspear_192") + "#") + scr_gettext("obj_controlspear_select"))
	}
	if (image_angle >= 17 && image_angle <= 41)
	{
		if (everselect < 2)
		{
			if (!snd_isplaying(snd_squeak))
				snd_play(snd_squeak)
		}
		select = 10
		everselect = 3
		mytext = ((scr_gettext("obj_controlspear_204") + "#") + scr_gettext("obj_controlspear_select"))
	}
	if (control_check_pressed(InteractButton) && active == true && buffer < 1 && select != 0)
	{
		global.facechoice = 5
		global.msc = 0
		global.faceemotion = 0
		active = 2
		if (select == undyne)
		{
			global.faceemotion = 1
			global.msg[0] = scr_gettext("obj_controlspear_218")
			global.msg[1] = scr_gettext("obj_controlspear_219")
			if (sel_undyne > 0)
			{
				global.faceemotion = 5
				global.msg[0] = scr_gettext("obj_controlspear_223")
			}
			sel_undyne += 1
		}
		if (select == sugar)
		{
			global.faceemotion = 9
			global.msc = 708
			if (sel_sugar > 0)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_controlspear_235")
			}
			sel_sugar += 1
		}
		if (select == soda)
		{
			global.faceemotion = 9
			global.msg[0] = scr_gettext("obj_controlspear_243")
			global.msg[1] = scr_gettext("obj_controlspear_244")
			global.msg[2] = scr_gettext("obj_controlspear_245")
			global.msg[3] = scr_gettext("obj_controlspear_246")
			global.msg[4] = scr_gettext("obj_controlspear_247")
			global.msg[5] = scr_gettext("obj_controlspear_248")
			global.msg[6] = scr_gettext("obj_controlspear_249")
			if (sel_soda > 0)
				global.msg[0] = scr_gettext("obj_controlspear_253")
			sel_soda += 1
		}
		if (select == hotchocolate)
		{
			global.faceemotion = 9
			global.msg[0] = scr_gettext("obj_controlspear_261")
			global.msg[1] = scr_gettext("obj_controlspear_262")
			global.msg[2] = scr_gettext("obj_controlspear_263")
			global.msg[3] = scr_gettext("obj_controlspear_264")
			if (sel_hotchocolate > 0)
				global.msg[0] = scr_gettext("obj_controlspear_268")
			sel_hotchocolate += 1
		}
		if (select == teabox)
		{
			global.faceemotion = 9
			global.msg[0] = scr_gettext("obj_controlspear_276")
			obj_undynedate_inside.con = 300
			active = 3
		}
		if (select == 9)
		{
			global.faceemotion = 2
			global.msg[0] = scr_gettext("obj_controlspear_284")
			global.msg[1] = scr_gettext("obj_controlspear_285")
		}
		if (select == 10)
		{
			global.faceemotion = 3
			global.msg[0] = scr_gettext("obj_controlspear_291")
			global.msg[1] = scr_gettext("obj_controlspear_292")
		}
		gh = instance_create(0, 0, obj_dialoguer)
		if (select != sugar)
			gh.side = 1
	}
	draw_set_color(c_white)
	var linebreak = string_pos("#", mytext)
	if (linebreak > 0)
	{
		var line1 = string_copy(mytext, 1, (linebreak - 1))
		var line2 = string_copy(mytext, (linebreak + 1), string_length(mytext))
	}
	else
	{
		line1 = mytext
		line2 = ""
	}
	scr_drawtext_icons(24, 192, line1)
	if (linebreak > 0)
		scr_drawtext_icons(24, 210, line2)
}
if (active == 2 && instance_exists(OBJ_WRITER) == false)
{
	active = true
	buffer = 12
}
