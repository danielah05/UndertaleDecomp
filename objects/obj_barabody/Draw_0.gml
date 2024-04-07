draw_sprite_ext(spr_baraball, 0, (x + 110), (arm1 + (sin((siner / 4)) * 3)), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_baraball, 0, (x + 120), (arm2 + (cos((siner / 4)) * 2)), 2, 2, 0, c_white, 1)
draw_sprite_ext(hand2pic, 0, (x + 140), ((hand + (cos((siner / 4)) * 4)) + 16), 2, 2, ((sin((siner / 4)) * 4) - 30), c_white, 1)
draw_sprite_ext(spr_baraball, 0, (x - 10), (arm1 + (sin((siner / 4)) * 3)), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_baraball, 0, (x - 20), (arm2 + (cos((siner / 4)) * 2)), 2, 2, 0, c_white, 1)
draw_sprite_ext(hand1pic, 0, (x - 10), ((hand + (cos((siner / 4)) * 4)) + 16), 2, 2, (sin((siner / 4)) * 4), c_white, 1)
draw_sprite_ext(spr_baralegs, 0, (x + 64), (pantsy + (sin((siner / 4)) * 1)), (2 + (sin((siner / 4)) * 0.05)), (2 - (sin((siner / 4)) * 0.05)), 0, c_white, 1)
draw_sprite_ext(spr_barashoes, 0, (x + 64), shoesy, (2 + (sin((siner / 4)) * 0.1)), (2 - (sin((siner / 4)) * 0.05)), 0, c_white, 1)
draw_sprite_ext(bodypic, 0, x, (armory + (sin((siner / 4)) * 2)), 2, 2, 0, c_white, 1)
draw_sprite_ext(headpic, 0, x, (heady + (sin((siner / 4)) * 4)), 2, 2, 0, c_white, 1)
if (pause == 0)
    siner += 1
if (pause == 1)
    x = (parent.x + 28)
if (shaker > 0 && pause == 0)
{
    siner += 0.5
    x += sin((siner / 2))
}
