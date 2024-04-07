if (frozen == false)
    siner += 1.2
if (desperate == 0)
{
    siner -= 0.2
    draw_sprite_ext(sprite_index, image_index, x, (y + (sin((siner / 2)) * 3)), 1, 1, 0, image_blend, 1)
    draw_sprite_ext(spr_nostrils, (siner / 8), (x + 32), ((y + 12) + (sin((siner / 2)) * 6)), 1, 1, 0, image_blend, 1)
}
if (desperate == 1)
{
    draw_sprite_ext(sprite_index, image_index, x, (y + (sin((siner / 2)) * 3)), 1, 1, 0, image_blend, 1)
    draw_sprite_ext(spr_nostrils, (siner / 8), (x + 32), ((y + 14) + (sin((siner / 2)) * 7)), 1, 1, 0, image_blend, 1)
}
