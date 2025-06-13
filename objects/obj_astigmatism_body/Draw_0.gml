if (pause == 1)
{
	anim = 0
	anim2 = 0
	sfactor = 0
	siner = 0
	x = (parent.x + 6)
}
anim += 1
if (anim > 250)
{
	if (sfactor < 1)
		sfactor += 0.05
	siner += 1
}
if (anim > 140 && anim < 180)
{
	anim2 += 1
	if (anim2 > 18)
		anim = 200
}
if (anim > 220 && anim < 280)
{
	anim2 += 1
	if (anim2 >= 33)
		anim = 300
}
if (anim > 480)
{
	if (sfactor > 0)
		sfactor -= 0.07
	anim2 -= 1
	if (anim2 <= 0)
	{
		sfactor = 0
		anim2 = 0
		anim = 0
	}
}
draw_sprite_ext(spr_astigmatism_handl, (anim2 / 3), ((x + 8) + ((sin((siner / 6)) * 2) * sfactor)), ((y + 64) + ((cos((siner / 6)) * 2) * sfactor)), 2, (1.8 + ((cos((siner / 6)) * 0.2) * sfactor)), 0, c_white, 1)
draw_sprite_ext(spr_astigmatism_legl, (anim2 / 3), ((x + 30) + ((cos((siner / 6)) * 2) * sfactor)), ((y + 84) + ((sin((siner / 6)) * 2) * sfactor)), 2, (1.8 + ((sin((siner / 6)) * 0.2) * sfactor)), 0, c_white, 1)
draw_sprite_ext(spr_astigmatism_handl, (anim2 / 3), ((x + 92) - ((sin((siner / 6)) * 2) * sfactor)), ((y + 64) - ((cos((siner / 6)) * 2) * sfactor)), -2, (1.9 - ((cos((siner / 6)) * 0.2) * sfactor)), 0, c_white, 1)
draw_sprite_ext(spr_astigmatism_legl, (anim2 / 3), ((x + 70) - ((cos((siner / 6)) * 2) * sfactor)), ((y + 84) - ((sin((siner / 6)) * 2) * sfactor)), -2, (1.8 - ((sin((siner / 6)) * 0.2) * sfactor)), 0, c_white, 1)
draw_sprite_ext(spr_astigmatism_anim2, (anim2 / 3), x, y, 2, 2, 0, c_white, 1)
