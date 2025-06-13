siner += 1
if (on >= 1 && on <= 4)
{
	if (on == 1 && special == true)
	{
		special = 2
		tenta1 = instance_create((x - 32), y, obj_oniont)
		tenta1.on = 1
		tenta1.type = 2
		tenta1.special = true
		tenta2 = instance_create((x + 8), (y + 20), obj_oniont)
		tenta2.on = 1
		tenta2.type = 3
		tenta2.special = true
	}
	if (on == 1 || on == 2 || on == 3)
	{
		if (onion_blue_alpha < 1)
			onion_blue_alpha += 0.05
	}
	draw_sprite_ext(spr_onionblue, 0, x, y, ((0.1 + onion_blue_alpha) + (sin((siner / 4)) * 0.05)), (onion_blue_alpha + (sin((siner / 4)) * 0.05)), 0, c_white, onion_blue_alpha)
}
if (on == 2 || on == 3 || on == 4)
{
	if (FL_AnimationIndex == 0)
		onionsprite = spr_onionsan_kawaii
	if (FL_AnimationIndex == 1)
		onionsprite = spr_onionsan_yhear
	if (FL_AnimationIndex == 2)
		onionsprite = spr_onionsan_wistful
	if (FL_AnimationIndex == 3)
		onionsprite = spr_onionsan_disappoint
	draw_sprite_part(onionsprite, floor((siner / 6)), 0, 0, 63, floor(onionh), (x - 32), (y - floor(onionh)))
	if (on == 2 || on == 3)
	{
		if (onionh < 63)
			onionh += 0.5
	}
	if (on == 4)
	{
		if (onionh > 0)
			onionh -= 0.5
		else if (onion_blue_alpha > 0)
			onion_blue_alpha -= 0.05
	}
}
if (follow == 1)
{
	if (x < 162)
	{
		x = 162
		hspeed = 0
	}
	if (x > 1048)
	{
		x = 1048
		hspeed = 0
	}
	if (x < (obj_mainchara.x - 4))
	{
		hspeed += 0.17
		x += 1
	}
	if (x > (obj_mainchara.x + 6))
	{
		hspeed -= 0.17
		x -= 1
	}
	friction = 0.1
	x = floor(x)
}
