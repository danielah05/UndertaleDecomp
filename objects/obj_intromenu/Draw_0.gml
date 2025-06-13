siner_o += 1
if (naming == 3)
{
	if (mlevel > 0)
		draw_background(bg_floweyglow, 0, -120)
	if (mlevel == 1)
	{
		if (fk == 0)
			draw_sprite(spr_flowey, 0, 147, 169)
	}
	if (mlevel == 2)
		draw_sprite(spr_chairiel, 0, 125, 138)
	if (mlevel == 3)
	{
		draw_sprite(spr_chairiel_sleep, (siner_o / 8), 125, 138)
		draw_sprite(spr_papyrus_d_darkbg, 0, 241, 151)
		draw_sprite(spr_sans_shrug1_dark, 0, 271, 164)
	}
	if (mlevel == 4)
	{
		var sans_y = 33
		if (global.language == "ja")
			sans_y -= 5
		var pap_x = 243
		if (global.language == "ja")
			pap_x += 8
		draw_sprite(spr_chairiel_sleep, (siner_o / 8), 125, 138)
		draw_sprite(spr_papyrus_cape_dark, 0, pap_x, 151)
		draw_sprite(spr_undyne_youremine_dark, 0, (pap_x - 3), 103)
		draw_sprite(spr_sans_shrug1_dark, 0, 63, sans_y)
	}
	if (mlevel == 5)
	{
		draw_sprite(spr_chairiel_sleep, (siner_o / 8), 125, 138)
		draw_sprite(spr_alphys_d_dark, 0, 270, 167)
		draw_sprite(spr_papyrus_cape_dark, 0, 272, 132)
		draw_sprite(spr_undyne_youremine_dark, 0, 269, 84)
		draw_sprite(scr_getsprite(spr_out_to_lunch_sign), 0, 20, 169)
	}
	if (mlevel == 6)
	{
		draw_sprite(spr_toriel_d_dark, 0, 143, 138)
		draw_sprite(spr_papyrus_d_darkbg, 0, 119, 147)
		draw_sprite(spr_sans_d_dark, 0, 172, 161)
		draw_sprite(spr_undyne_d_dark, 0, 99, 136)
		draw_sprite(spr_alphys_d_dark2, 0, 74, 158)
		draw_sprite(spr_asgore_d_dark, 0, 195, 130)
		draw_sprite(spr_napstablook_d, 0, 9, 157)
		draw_sprite(spr_mettex_dark, 0, 28, 139)
		draw_sprite(spr_mkid_d_dark, 0, 262, 162)
	}
}
scr_namingscreen()
if (naming == 3)
{
	var version = "1.12"
	if (os_type == os_ps4)
		version += "-4"
	if (os_type == os_psvita)
		version += "-V"
	if (os_type == os_xboxone)
		version = "1.13X"
	draw_set_color(c_gray)
	scr_setfont(fnt_small)
	scr_drawtext_centered(160, 232, (("UNDERTALE v" + version) + " (C) Toby Fox 2015-2022"))
}
