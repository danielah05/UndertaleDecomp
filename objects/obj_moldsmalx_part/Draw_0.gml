if (f == 0)
{
    if (c == 0)
        sl2 = (sin((sinelover / 10)) * 8)
    else
        sl2 = (cos((sinelover / 10)) * 8)
    if (y < (bborder - 20))
        draw_sprite_ext(sprite_index, image_index, (sl2 + x), y, 2, 2, 0, c_white, 1)
}
if (f == 1)
    instance_destroy()
if (f == 2)
{
    vspeed = 0
    if (c == 0)
        sl2 = (sin((sinelover / 10)) * 8)
    else
        sl2 = (cos((sinelover / 10)) * 8)
    if (y < (bborder - 20))
        draw_sprite_ext(sprite_index, image_index, (x + sl2), y, (1.5 + stetch), 2, 0, c_white, 1)
    sinelover += 1
}
