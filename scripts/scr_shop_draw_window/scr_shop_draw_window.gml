function scr_shop_draw_window()
{
	var divided = argument0
	var divider_x = scr_shop_divider_pos()
	draw_set_color(c_white)
	ossafe_fill_rectangle(0, 120, 320, 240)
	draw_set_color(c_black)
	if divided
	{
		ossafe_fill_rectangle(4, 124, (divider_x - 1), 236)
		ossafe_fill_rectangle((divider_x + 4), 124, 316, 236)
	}
	else
		ossafe_fill_rectangle(4, 124, 316, 236)
}
