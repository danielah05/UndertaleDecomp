draw_sprite(sprite_index, image_index, x, y)
if (active == true)
{
	for (i = 0; i < ammo; i += 1)
		draw_sprite(spr_shotguy_indicator, 0, ((x + 20) + (i * 10)), (y - 2))
}
draw_set_color(c_white)
if (win > 0)
	draw_set_color(c_lime)
draw_rectangle((gridl - 2), (gridu - 2), (gridr + 1), (gridd + 1), true)
if (wintimer >= 50)
	draw_sprite(spr_text_congratulations, 0, ((gridr / 2) + (gridl / 2)), (gridu - 15))
if (restart > false)
{
	if (rstype < 99)
		draw_sprite(spr_text_restart, 0, ((gridr / 2) + (gridl / 2)), (gridu - 15))
	else
		draw_sprite(spr_text_restaurant, 0, ((gridr / 2) + (gridl / 2)), (gridu - 15))
}
if (active == false)
{
	draw_set_color(c_black)
	draw_set_alpha(0.4)
	ossafe_fill_rectangle(-10, -10, 400, 160)
	draw_set_alpha(1)
}
