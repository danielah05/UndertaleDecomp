timer += 1
if (type == 0)
{
	draw_sprite(sprite_index, image_index, x, y)
	draw_sprite_ext(spr_icecavewall_2, abs((sin((timer / 15)) * 2.8)), (x + sin((timer / 7))), (y + cos((timer / 8))), 1, 1, 0, c_white, al)
}
else
{
	draw_sprite(sprite_index, image_index, x, y)
	draw_sprite_ext(spr_icecavewall_2b, abs((sin((timer / 15)) * 2.8)), (x + sin((timer / 7))), (y + cos((timer / 8))), 1, 1, 0, c_white, al)
}
if (timer >= 100 && timer < 150)
	al += 0.02
if (timer >= 300)
{
	al -= 0.02
	if (al <= 0)
	{
		al = 0
		timer = 0
	}
}
