if (pause == 1 && noanim == 0)
{
	siner = 0
	x = parent.x
}
if (noanim == 1)
{
	siner += 1
	draw_sprite_ext(spr_undyneb_hair, (siner / 5), (x - 60), ((y - 60) + (goof / 3)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_undyneb_noanim, 0, (x - 4), (y + 10), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_undyneb_face2, global.faceemotion, x, ((6 + y) - 50), 2, 2, 0, c_white, 1)
}
if (noanim == 0)
{
	if (sine == 0)
		siner += 1
	goof = (sin((siner / 5)) * 10)
	doof = (cos((siner / 4)) * 10)
	draw_sprite_ext(spr_undyneb_hair, (siner / 5), (x - 60), ((y - 10) + (goof / 2)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_undyneb2_lowerbody, 8, (x + 32), ((y + 102) + 70), 2, (2 - (goof / 60)), 0, c_white, 1)
	if (off == 0)
	{
		draw_sprite_ext(spr_undyneb2_armr, 0, (x + 44), ((y + 60) + (goof / 1.5)), 2, 2, ((doof / 4) + 10), c_white, 1)
		draw_sprite_ext(spr_undyneb2_arml, 0, (x + 22), ((y + 60) + (goof / 1.5)), 2, 2, (doof / 4), c_white, 1)
	}
	if (off == 1)
	{
		draw_sprite_ext(spr_undyneb2_armr, 1, (x + 44), ((y + 60) + (goof / 1.5)), 2, 2, ((doof / 4) + 20), c_white, 1)
		draw_sprite_ext(spr_undyneb2_arml, 1, (x + 22), ((y + 60) + (goof / 1.5)), 2, 2, ((doof / 4) - 10), c_white, 1)
	}
	draw_sprite_ext(spr_undyneb2_upperbody, 8, (x + 20), (((y + 62) + 48) + (goof / 3)), 2, (2 - (goof / 50)), 0, c_white, 1)
	draw_sprite_ext(spr_undyneb_face2, global.faceemotion, (x + (doof / 4)), ((6 + y) + (goof / 1.5)), 2, 2, 0, c_white, 1)
	if (off == 0)
		draw_sprite_ext(spr_undyneb2_spear, 0, (x + 64), ((y + 100) + (goof / 1.5)), 2, 2, ((doof / 4) + 10), c_white, 1)
	if (off == 1)
	{
		bidoof -= 1
		sine = 1
		spearalpha -= 0.03
		draw_sprite_ext(spr_undyneb2_spear, 1, (x + 64), (((y + 100) + (goof / 1.5)) - (bidoof * 2)), 2, 2, (((doof / 4) + 10) + bidoof), c_white, spearalpha)
		if (spearalpha < -0.2)
			noanim = 1
	}
}
