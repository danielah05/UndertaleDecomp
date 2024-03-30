function scr_shop_draw_talktitle()
{
	var line = argument0
	var highlight = argument1
	var text = argument2
	var menu_x = 15
	var text_x = (menu_x + 15)
	var text_space = ((scr_shop_divider_pos() - 10) - text_x)
	if highlight
	    draw_set_colour(c_yellow)
	else
	    draw_set_colour(c_white)
	var scale = 1
	var text_width = string_width(string_hash_to_newline(text))
	if (text_width > text_space)
	    scale = (text_space / text_width)
	draw_text_transformed(text_x, (130 + (20 * line)), string_hash_to_newline(text), scale, 1, 0)
	if highlight
	    draw_set_color(c_white)
}
