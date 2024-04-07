if (desperate == 0 && acon == 0)
{
    if (frozen == false)
        siner += 0.8
    growth = (1 + (cos((siner / 6)) * 0.03))
    ssx = ((sin((siner / 3)) * 4) * image_xscale)
    ssy = (cos((siner / 3)) * 4)
    draw_sprite_ext(sprite_index, image_index, (x - ssx), (y + ssy), image_xscale, growth, 0, image_blend, 1)
}
if (desperate == 1 && acon == 0)
{
    if (frozen == false)
        siner += 1.2
    growth = (1 + (cos((siner / 6)) * 0.03))
    ssx = ((sin((siner / 3)) * 5) * image_xscale)
    ssy = (cos((siner / 3)) * 8)
    draw_sprite_ext(sprite_index, image_index, (x - ssx), ((y + ssy) + 2), image_xscale, growth, 0, image_blend, 1)
}
xr = (-image_xscale)
if (acon == 2)
{
    draw_sprite_ext(spr_fa_seq_b, reach, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    if (reach > 0)
        reach -= 1
    if (reach <= 0)
    {
        acon = 0
        reach2 = 0
        reach3 = 0
        reach = 0
        acon2 = 0
        made = 0
    }
}
if (acon == 1)
{
    if (acon2 == 1 || acon2 == 3)
    {
        if (reach2 < 13)
            reach2 += 2
        draw_sprite_ext(spr_fa_stemunder, reach2, (x + (xr * 36)), (y + 195), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    }
    draw_sprite_ext(spr_fa_seq_b, reach, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    if (reach < 11)
        reach += 2
    if (reach == 12)
        reach = 11
    else if (acon2 == 0)
        acon2 = 1
    if (acon2 == 1)
    {
        if (reach2 == 14)
            reach2 = 13
        if (reach2 == 13 && made == 0)
        {
            made = 1
            venu = instance_create((x - (135 * xr)), (y + 138), obj_venus_pl)
            venu.boss = id
            if (image_xscale > 0)
            {
                with (venu)
                {
                    sider = 1
                    image_xscale = -1
                }
            }
            if (image_xscale < 0)
            {
                with (venu)
                    sider = 0
            }
        }
    }
    if (acon2 == 3)
        reach2 += 1
    if (reach2 >= 39)
        acon = 2
}
