if (pause == 0)
{
    siner += 1
    timer += 1
    draw_sprite_ext(spr_parsnik_headwrap, 0, (x + 14), ((y + 24) + (sin((1.5 + (siner / 5))) * 2)), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_parsnik_snake1, floor((siner / 6)), (x + 32), ((y + 52) + (sin((siner / 5)) * 1.5)), 2, 2, (sin((siner / 5)) * 6), c_white, 1)
    draw_sprite_ext(spr_parsnik_snake5, floor(((siner + 8) / 6)), (x + 74), ((y + 52) + (sin((2 + (siner / 5))) * 1.5)), 2, 2, ((-(sin((2 + (siner / 5))))) * 6), c_white, 1)
    draw_sprite_ext(spr_parsnik_snake2, floor(((siner + 2) / 5.5)), (x + 38), ((y + 46) + (sin((0.5 + (siner / 5))) * 1.5)), 2, 2, (sin((siner / 5)) * 2), c_white, 1)
    draw_sprite_ext(spr_parsnik_snake4, floor(((siner + 6) / 5.5)), (x + 60), ((y + 46) + (sin((1.5 + (siner / 5))) * 1.5)), 2, 2, ((-(sin((siner / 5)))) * 2), c_white, 1)
    draw_sprite_ext(spr_parsnik_snake3, floor(((siner + 4) / 5)), (x + 52), ((y + 50) + (sin((1 + (siner / 5))) * 1.5)), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_parsnik_head, floor((siner / 12)), (x + 24), (y + 46), 2, 2, 0, c_white, 1)
}
else
{
    siner = 0
    timer = 0
    draw_sprite_ext(spr_parsnik_hurt, 0, x, y, 1, 1, 0, c_white, 1)
}
