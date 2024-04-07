draw_sprite_part(sprite_index, image_index, 0, ((sprite_height - damt) - 6), sprite_width, (6 + damt), x, y)
if (drawerdown == 1)
{
    if (damt < (sprite_height - 6))
        damt += 2
    else
    {
        damt = (sprite_height - 6)
        drawerdown = 2
    }
}
if (drawerdown == 3)
{
    if (damt > 0)
        damt -= 2
    else
    {
        damt = 0
        drawerdown = 4
    }
}
