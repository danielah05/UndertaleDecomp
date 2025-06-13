draw_sprite(sprite_index, 0, x, y)
if (d == 1)
{
	draw_set_color(c_gray)
	scr_setfont(fnt_small)
	if (global.osflavor >= OSFlavors.Playstation)
	{
		var scale = 1
		if (os_type == os_psvita)
			scale = 2
		scr_drawtext_centered_scaled(160, 180, scr_gettext("title_press_button_console"), scale, scale)
	}
	else
		draw_text(120, 180, string_hash_to_newline(scr_gettext("title_press_button_pc")))
}
if (global.osflavor >= OSFlavors.Playstation)
	proceed = gamepad_button_check_any((obj_time.j_ch - 1))
else
	proceed = control_check_pressed(InteractButton)
if (ballamount == 3)
{
	if keyboard_check_pressed(ord("L"))
	{
		ballamount = 4
		snd_play(snd_ballchime)
	}
}
if (ballamount == 2)
{
	if keyboard_check_pressed(ord("L"))
		ballamount = 3
}
if (ballamount == 1)
{
	if keyboard_check_pressed(ord("A"))
		ballamount = 2
}
if (ballamount == 0)
{
	if keyboard_check_pressed(ord("B"))
		ballamount = 1
}
if control_check_pressed(CancelButton)
{
	special_x += 1
	if (special_x >= 5)
	{
		alarm[0] = 1800
		alarm[1] = -1
		d = 0
		drawpw = 1
	}
}
if (drawpw == 1)
{
	d = 0
	alarm[0] = 999
	draw_set_color(c_white)
	scr_setfont(fnt_maintext)
	if (pw1 == 0 && pw2 == 0 && pw3 == 0)
		draw_text(20, 180, string_hash_to_newline(scr_gettext("obj_titleimage_activity_0")))
	if (pw1 == 1)
		draw_text(20, 170, string_hash_to_newline(scr_gettext("obj_titleimage_activity_a")))
	if (pw2 == 1)
		draw_text(20, 190, string_hash_to_newline(scr_gettext("obj_titleimage_activity_b")))
	if (pw3 == 1)
		draw_text(20, 210, string_hash_to_newline(scr_gettext("obj_titleimage_activity_c")))
}
