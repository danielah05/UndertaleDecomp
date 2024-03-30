goof = (sin((siner / 5)) * 10)
siner += 1
draw_sprite_ext(spr_undyneb_hair, (siner / 5), (x - 60), (((y - 60) + (goof / 3)) + (s_i * 2)), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_undyneb_noanim, 0, (x - 4), (y + 10), 2, 2, 0, c_white, 1)
if (shock == 0)
{
    if (smooch == 0)
        draw_sprite_ext(spr_undyneb_face3, face, x, ((6 + y) - 50), 2, 2, 0, c_white, 1)
    if (smooch == 1)
    {
        if (s_a > -50)
        {
            s_i += 0.125
            s_a -= 0.5
        }
        draw_sprite_ext(spr_undyneb_smooch, floor(s_i), ((x + 22) + (s_i * 2)), ((((6 + y) - 50) + 26) + s_i), 2, 2, s_a, c_white, 1)
    }
    if (smooch == 2)
        draw_sprite_ext(spr_undyneb_smooch_s, floor(s_i), ((x + 22) + (s_i * 2)), ((((6 + y) - 50) + 26) + s_i), 2, 2, s_a, c_white, 1)
}
if (shock == 1)
    draw_sprite_ext(spr_undyneface_fatal, 0, x, ((6 + y) - 50), 2, 2, 0, c_white, 1)
