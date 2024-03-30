/// @func scr_shop_draw_topmenu(murder)
/// @arg	{bool}	murder
function scr_shop_draw_topmenu(_murder)
{
	var murder = _murder
	var menu_x = (scr_shop_divider_pos() + 15)
	var text_x = (menu_x + 15)
	if murder
	{
	    draw_text(text_x, 130, string_hash_to_newline(scr_gettext("shop_take")))
	    draw_text(text_x, 150, string_hash_to_newline(scr_gettext("shop_steal")))
	    draw_text(text_x, 170, string_hash_to_newline(scr_gettext("shop_read")))
	}
	else
	{
	    draw_text(text_x, 130, string_hash_to_newline(scr_gettext("shop_buy")))
	    draw_text(text_x, 150, string_hash_to_newline(scr_gettext("shop_sell")))
	    draw_text(text_x, 170, string_hash_to_newline(scr_gettext("shop_talk")))
	}
	draw_text(text_x, 190, string_hash_to_newline(scr_gettext("shop_exit")))
	var heart_y = 134
	if (global.language == "ja")
	    heart_y -= 2
	draw_sprite(spr_heartsmall, 0, menu_x, (heart_y + (menuc[0] * 20)))
}
