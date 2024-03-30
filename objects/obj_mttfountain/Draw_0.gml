siner += 1
pudd.x = ((x - 14) + cos((siner / 2)))
pudd.y = ((y + 59) + sin((siner / 2)))
draw_sprite(spr_mttfountain, floor((siner / 10)), x, y)
draw_sprite(spr_mttfountain_water, floor((siner / 2)), (x + (cos(siner) / 2)), (y + (sin(siner) / 2)))
