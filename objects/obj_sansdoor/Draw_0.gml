bgalpha = obj_kitchenchecker.bgalpha
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, bgalpha)
if (image_index == 0)
    draw_sprite_ext(spr_weirdlight, anim, (x + 3), (y + 48), 1, 1, 0, c_white, bgalpha)
anim += 0.25
if (sans > 0)
{
    if (sans == 1)
    {
        if (sansamt < 33)
            sansamt += 2
        else
            sans = 2
    }
    if (sans == 2)
    {
        alarm[3] = 50
        sans = 3
        caster_play(wawa, 1, 1)
    }
    if (sans == 4)
    {
        if (sansamt > 4)
            sansamt -= 4
        else
        {
            sansamt = 0
            sans = 0
        }
    }
    if (sans != 3)
        draw_sprite_part(spr_sans_trombone, 0, (36 - sansamt), 0, sansamt, 32, (x + 33), (y + 13))
    else
        draw_sprite_part(spr_sans_trombone, (anim / 1.5), (36 - sansamt), 0, sansamt, 32, (x + 33), (y + 13))
}
