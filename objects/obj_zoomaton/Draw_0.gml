draw_sprite_part_ext(sprite_index, 0, left, top, width, height, x, y, scalefactor, scalefactor, c_white, image_alpha)
if (on == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.03
}
if (on == 1)
{
    left += ldiff
    top += tdiff
    height += hdiff
    width += wdiff
    scalefactor += sdiff
    if (left <= 0)
        on = 2
}
if (on > 1)
    on += 1
if (on > 60)
{
    image_alpha -= 0.05
    if (image_alpha < 0.05)
        instance_destroy()
}
