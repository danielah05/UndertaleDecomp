siner += 1
for (i = 0; i < image_yscale; i += 1)
{
    if (i == 0)
        draw_sprite_ext(spr_hotland_rededge_top, image_index, x, (y + (i * 40)), 1, 1, 0, c_white, abs(sin((siner / 16))))
    if (i > 0)
        draw_sprite_ext(sprite_index, image_index, x, (y + (i * 40)), 1, 1, 0, c_white, abs(sin((siner / 16))))
}
