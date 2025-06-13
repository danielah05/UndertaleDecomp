myinteract = 0
image_xscale = 1
image_yscale = 1
image_speed = 0
candymade = 0
if (FL_RuinsCandyTaken > 3)
{
	candy = scr_marker(x, (y + 2), spr_candydish2)
	candy.depth = 900000
	candy.image_index = 1
	candy.image_speed = 0
	sprite_index = spr_candydish2
	candymade = 1
}
