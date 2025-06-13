if (timera > 0)
	timera -= 1
timerb -= 1
draw_set_color(c_black)
ossafe_fill_rectangle(35, 26, (surface_get_width(application_surface) - 35), (surface_get_height(application_surface) - 26))
draw_set_color(c_white)
old_halign = draw_get_halign()
old_font = draw_get_font()
old_color = draw_get_color()
old_alpha = draw_get_alpha()
draw_set_halign(fa_center)
draw_set_font(font_face)
draw_set_color(c_white)
if (disconnect_message != 4)
{
	draw_text_transformed(xx, yy, main_message, font_scale_1, font_scale_1, 0)
	draw_set_alpha(((60 - timera) / 60))
	draw_text_transformed(xx, y, sub_message, font_scale_2, font_scale_2, 0)
}
if (disconnect_message == 4 && timerb >= 0)
{
	timerleft = string(floor((timerb / 60)))
	draw_text_transformed(xx, yy, main_message, font_scale_1, font_scale_1, 0)
	if (global.language == "en")
		draw_text_transformed(((xx - 2) + random(4)), ((yy + 60) + random(4)), (("Reconnect in " + timerleft) + " or your data will be ERASED!"), font_scale_2, font_scale_2, 0)
	else
		draw_text_transformed(((xx - 2) + random(4)), ((yy + 100) + random(4)), ("はやく　せつぞくしないと\nデータが　きえちゃうよ\nのこり： " + timerleft), font_scale_2, font_scale_2, 0)
}
draw_set_alpha(old_alpha)
draw_set_halign(old_halign)
draw_set_font(old_font)
draw_set_color(old_color)
