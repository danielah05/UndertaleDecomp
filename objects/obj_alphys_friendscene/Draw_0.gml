draw_sprite_ext(spr_adate_bodycoat, 0, x, y, 2, 2, 0, c_white, image_alpha)
if (shock == 0)
{
    if (smooch == 0)
        draw_sprite_ext(spr_adate_head, face, x, y, 2, 2, 0, c_white, image_alpha)
    if (smooch == 1)
    {
        if (smooch_ang > -50)
        {
            smooch_ang -= 0.5
            s_i += 0.25
        }
        draw_sprite_ext(spr_adate_smooch, floor(s_i), (x + 44), (y + 40), 2, 2, smooch_ang, c_white, image_alpha)
    }
    if (smooch == 2)
    {
        if (smooch_ang > -50)
        {
            smooch_ang -= 0.5
            s_i += 0.25
        }
        draw_sprite_ext(spr_adate_smooch_s, floor(s_i), (x + 44), (y + 40), 2, 2, smooch_ang, c_white, image_alpha)
    }
}
if (shock == 1)
    draw_sprite_ext(spr_alphysface_hit, 0, x, (y - 2), 2, 2, 0, c_white, 1)
