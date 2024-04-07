function scr_shop_draw_talkmenu()
{
	var menu_x = 15
	var text_x = (menu_x + 15)
	draw_text(text_x, 210, string_hash_to_newline(scr_gettext("shop_exit_submenu")))
	var heart_y = 134
	if (global.language == "ja")
	    heart_y -= 2
	draw_sprite(spr_heartsmall, 0, menu_x, (heart_y + (menuc[3] * 20)))
}
