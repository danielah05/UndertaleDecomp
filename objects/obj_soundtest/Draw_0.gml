if (con == 0)
{
	draw_set_color(c_white)
	scr_setfont(fnt_main)
	scr_drawtext_icons_multiline(120, 50, scr_gettext("soundtest_welcome"), 2)
	buffer += 1
	if (buffer >= 20)
	{
		if control_check_pressed(InteractButton)
		{
			buffer = -10
			con = 1
			songno = 0
			snd_play_ex(mus_st_happytown, 50, true)
		}
	}
}
if (con == 1)
{
	draw_set_color(c_white)
	scr_drawtext_centered_scaled(320, 50, scr_gettext("soundtest_title"), 2, 2)
	if (songno == 0)
	{
		if audio_is_playing(mus_st_happytown)
			draw_set_color(c_yellow)
		else if (control_check_pressed(InteractButton) && gaster == 0)
		{
			audio_stop_all()
			snd_play_ex(mus_st_happytown, 50, true)
		}
		scr_drawtext_centered(320, 200, scr_gettext("soundtest_track_happytown"))
	}
	if (songno == 1)
	{
		if audio_is_playing(mus_st_meatfactory)
			draw_set_color(c_yellow)
		else if (control_check_pressed(InteractButton) && gaster == 0)
		{
			audio_stop_all()
			snd_play_ex(mus_st_meatfactory, 50, true)
		}
		scr_drawtext_centered(320, 200, scr_gettext("soundtest_track_meatfactory"))
	}
	if (songno == 2)
	{
		if audio_is_playing(mus_st_troubledingle)
			draw_set_color(c_yellow)
		else if (control_check_pressed(InteractButton) && gaster == 0)
		{
			audio_stop_all()
			snd_play_ex(mus_st_troubledingle, 50, true)
		}
		scr_drawtext_centered(320, 200, scr_gettext("soundtest_track_troubledingle"))
	}
	if (songno == 3)
	{
		if audio_is_playing(mus_st_him)
			draw_set_color(c_yellow)
		else if (control_check_pressed(InteractButton) && gaster == 0)
		{
			gaster = 1
			audio_stop_all()
			snd_play_ex(mus_st_him, 50, true)
		}
		scr_drawtext_centered(320, 200, scr_gettext("soundtest_track_him"))
	}
	buffer += 1
	if (keyboard_check_pressed(vk_left) && buffer > 0 && active_l < 0)
	{
		if (gaster == 0)
		{
			songno += 1
			if (songno > 3)
				songno = 0
			active_l = 10
		}
		else
		{
			active_l = 2
			songno -= 1
			if (songno < 0)
				songno = 3
		}
	}
	if (keyboard_check_pressed(vk_right) && buffer > 0 && active_r < 0)
	{
		active_r = 10
		songno += 1
		if (songno > 3)
			songno = 0
		if (gaster == 1)
			active_r = 2
	}
	active_l -= 1
	active_r -= 1
	draw_set_color(c_white)
	if (active_l > 0)
		draw_set_color(c_yellow)
	draw_text(50, 200, string_hash_to_newline("<<"))
	draw_set_color(c_white)
	if (active_r > 0)
		draw_set_color(c_yellow)
	draw_text(580, 200, string_hash_to_newline(">>"))
	if (gaster == 1)
		g_timer += 1
	if (g_timer >= 600)
	{
		audio_stop_all()
		con = 3
	}
}
if (con == 3)
{
	draw_text(150, 50, string_hash_to_newline(scr_gettext("soundtest_thanks")))
	seeya_timer += 1
}
