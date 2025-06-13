siner += 1
if (pause == 1)
{
	alarm[0] += 1
	siner = 0
	x = (parent.x + 60)
}
anim_e += 1
if (anim_e > 30 && anim_e < 60)
	anim_e2 += 1
if (anim_e > 180)
{
	anim_e2 = 0
	anim_e = 0
}
anim_l += 1
if (anim_l >= 60 && anim_l < 120)
	anim_l2 -= 0.5
if (anim_l >= 150 && anim_l < 300)
{
	anim_l2 += 6
	if (anim_l2 >= 0)
	{
		anim_l2 = 0
		anim_l = 300
	}
}
if (anim_l >= 300)
{
	if (anim_l2 == 0)
	{
		anim_l3 = 0
		anim_l2 = -3
	}
	else
	{
		anim_l2 = 0
		if (anim_l3 == 0)
			anim_l3 = choose(-1, 1)
	}
}
if (anim_l > 310)
{
	anim_l3 = 0
	anim_l2 = 0
	anim_l = 0
}
anim_h += 1
if (anim_h > 50 && anim_h < 75)
	anim_h2 += 1
if (anim_h > 100)
	anim_h = 0
anim_m += 1
if (anim_m > 150 && anim_m < 180)
	anim_m2 += 1
if (anim_m > 240 && anim_m < 270)
	anim_m2 += 1
if (anim_m > 300)
{
	anim_m = 0
	anim_m2 = 0
}
if (pause == 0)
{
	if (asleep == 0)
		draw_sprite_ext(spr_finalknight_dragoneyes, (anim_e2 / 3), (((offx + x) + 94) + (sin((siner / 10)) * 6)), ((offy + y) + 70), 2, 2, 0, c_white, 1)
	if (asleep == 1)
		draw_sprite_ext(spr_finalknight_dragoneyes_tired, (anim_e2 / 3), (((offx + x) + 94) + (sin((siner / 10)) * 6)), ((offy + y) + 70), 2, 2, 0, c_white, 1)
	if (asleep == 2)
		draw_sprite_ext(spr_finalknight_dragoneyes_asleep, (anim_e2 / 3), (((offx + x) + 94) + (sin((siner / 10)) * 6)), ((offy + y) + 70), 2, 2, 0, c_white, 1)
}
draw_sprite_ext(spr_finalknight_body, 0, (offx + x), (offy + y), 2, 2, 0, c_white, 1)
if (pause == 0)
{
	if (asleep != 2)
		draw_sprite_ext(spr_finalknight_helmet, (anim_h2 / 4), ((offx + x) + 70), ((offy + y) + 2), 2, 2, 0, c_white, 1)
	if (asleep == 2)
		draw_sprite_ext(spr_finalknight_helmet, 0, ((offx + x) + 70), ((offy + y) + 2), 2, 2, 0, c_white, 1)
}
else
	draw_sprite_ext(spr_finalknight_helmethurt, 0, ((offx + x) + 70), ((offy + y) + 2), 2, 2, 0, c_white, 1)
if (pause == 0)
{
	if (asleep == 0)
		draw_sprite_ext(spr_finalknight_dragonmouth, (anim_m2 / 6), ((offx + x) + 98), ((offy + y) + 84), 2, 2, 0, c_white, 1)
	if (asleep == 1)
		draw_sprite_ext(spr_finalknight_dragonmouth_tired, (anim_m2 / 6), ((offx + x) + 98), ((offy + y) + 84), 2, 2, 0, c_white, 1)
	if (asleep == 2)
		draw_sprite_ext(spr_finalknight_dragonmouth_asleep, (anim_m2 / 6), ((offx + x) + 98), ((offy + y) + 84), 2, 2, 0, c_white, 1)
}
else
	draw_sprite_ext(spr_finalknight_dragonmouth_hurt, 0, ((offx + x) + 98), ((offy + y) + 84), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_finalknight_dragonfur, (siner / 5), ((offx + x) + 64), ((offy + y) + 96), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_finalknight_leftarm, 0, ((offx + x) + anim_l3), ((offy + y) + anim_l2), 2, 2, 0, c_white, 1)
