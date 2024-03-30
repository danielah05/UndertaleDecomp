siner += 1
for (i = 0; i < image_yscale; i += 1)
{
    if (i == 0)
        draw_sprite_ext(spr_hotland_rededge_top, image_index, (x + (cos(((siner + (i * 4)) / 12)) * 10)), (y + (i * 40)), 1, 1, 0, c_white, abs(sin(((i / 2) - (siner / 12)))))
    if (i > 0)
        draw_sprite_ext(sprite_index, image_index, (x + (cos(((siner + (i * 4)) / 12)) * 10)), (y + (i * 40)), 1, 1, 0, c_white, abs(sin(((i / 2) - (siner / 12)))))
}
