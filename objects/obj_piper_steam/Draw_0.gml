timer += 1
draw_sprite(spr_steamer_bottom, 0, x, y)
draw_sprite(spr_steamer_top, 0, x, (y + (f_l * 3)))
if (timer == 30)
{
	f_l = 0
	f_d = 1
}
if (timer > 30 && timer < 50)
{
	instance_create((x + 7), ((y + 6) + (f_l * 3)), obj_steamplume2)
	f_l += 0.3
	if (f_l >= 3)
		timer = 50
}
if (timer >= 50 && timer < 90)
{
	f_l -= 0.1
	if (f_l <= 0)
	{
		f_l = 0
		timer = 25
	}
}
