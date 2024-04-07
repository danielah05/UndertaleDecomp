if (frozen == false)
    siner += 1
if (flash == false)
{
    image_blend = c_white
    blend2 = c_white
}
if (flash == true)
{
    draw_set_color(c_yellow)
    draw_set_alpha((sin((siner / 3)) / 2))
    draw_ellipse_color((x - 70), (y + 50), (x + 30), (y - 40), c_aqua, c_black, 0)
    draw_set_alpha(1)
    image_blend = make_color_rgb((100 - (sin((siner / 3)) * 100)), 230, 255)
}
if (flash == 2)
{
    draw_set_color(c_yellow)
    draw_set_alpha((sin((siner / 3)) / 2))
    draw_ellipse_color(((x + op) + 70), (y + 50), ((x + op) - 30), (y - 40), c_orange, c_black, 0)
    draw_set_alpha(1)
    blend2 = make_color_rgb(230, 180, (100 - (sin((siner / 3)) * 100)))
}
for (i = 0; i < 10; i += 1)
{
    offx = ((x + (sin(((i - 45) / 3)) * 60)) - (i * 2))
    offy = ((y + (cos(((i - 45) / 3)) * 50)) + (cos(((i + siner) / 6)) * 8))
    offs = (sin(((siner + (i * 4)) / 6)) * 2)
    if (offs > 1)
        offs = ((offs - 1) / 3)
    else
        offs = 0
    if (global.soul_rescue < 1)
        draw_sprite_ext(sprite_index, image_index, offx, offy, (1 + offs), (1 + offs), ((i * 20) + 30), image_blend, 1)
    else
    {
        offy = ((y + (cos(((i - 45) / 3)) * 50)) + (cos(((i + siner) / 6)) * 4))
        offs = 0
        draw_sprite_ext(sprite_index, image_index, offx, offy, (1 + offs), (1 + offs), ((i * 20) + 30), c_gray, 1)
    }
}
for (i = 0; i < 10; i += 1)
{
    offx2 = (((x - (sin(((i - 45) / 3)) * 60)) + (i * 2)) + op)
    offy2 = ((y + (cos(((i - 45) / 3)) * 50)) + (cos(((i + siner) / 6)) * 8))
    offs2 = (sin(((siner + (i * 4)) / 6)) * 2)
    if (offs2 > 1)
        offs2 = ((offs2 - 1) / 3)
    else
        offs2 = 0
    if (global.soul_rescue < 2)
        draw_sprite_ext(sprite_index, image_index, offx2, offy2, (1 + offs2), (1 + offs2), ((i * -20) + 150), blend2, 1)
    else
    {
        offy2 = ((y + (cos(((i - 45) / 3)) * 50)) + (cos(((i + siner) / 6)) * 4))
        offs2 = 0
        draw_sprite_ext(sprite_index, image_index, offx2, offy2, (1 + offs2), (1 + offs2), ((i * -20) + 150), c_gray, 1)
    }
}
