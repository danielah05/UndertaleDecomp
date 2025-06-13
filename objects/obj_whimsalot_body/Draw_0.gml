siner += 1
goof = sin((siner / 5))
if (pause == 1)
{
	siner = 0
	x = (parent.x + 21)
}
draw_sprite_ext(spr_whimsalot_wing_r, (siner / 15), (x + 60), ((y + 40) - (goof * 2)), 2, 2, ((sin((siner / 2.5)) * 30) - 15), c_white, 1)
draw_sprite_ext(spr_whimsalot_wing_r, (siner / 15), (x + 14), ((y + 40) - (goof * 2)), -2, 2, (((-(sin((siner / 2.5)))) * 30) + 15), c_white, 1)
draw_sprite_ext(spr_whimsalot_body, (siner / 18), x, ((y + 50) + (goof * 6)), 2, 2, 0, c_white, 1)
if (pause == 0)
	draw_sprite_ext(spr_whimsalot_head, (siner / 10), (x + 6), (y + (goof * 8)), 2, 2, 0, c_white, 1)
if (pause == 1)
	draw_sprite_ext(spr_whimsalot_head_hurt, (siner / 10), (x + 6), (y + (goof * 8)), 2, 2, 0, c_white, 1)
