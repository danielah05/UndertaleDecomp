draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1)
if (s_i >= 0 && s_i <= 5)
{
    s_i += 0.334
    draw_sprite_ext(spr_strike, s_i, (x + 20), (y - 40), 1.5, 1.5, 0, c_white, 1)
}
