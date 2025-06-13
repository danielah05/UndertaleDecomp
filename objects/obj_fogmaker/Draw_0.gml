dr += 1
if (dr > 3)
{
	fog_r += 1
	dr = 0
}
if (s == 0)
	fog_alpha = (obj_mainchara.x / 440)
if (fog_alpha > 1 && s == 0 && global.plot > 99)
	fog_alpha = (1 + (1 - fog_alpha))
i = 0
j = 0
repeat (3)
{
	repeat (13)
	{
		draw_sprite_part_ext(spr_tundrafog, 0, fog_r, 0, 80, 80, (i * 80), (j * 80), 1, 1, c_white, fog_alpha)
		i += 1
	}
	j += 1
	i = 0
}
if (fog_r >= 80)
	fog_r -= 80
