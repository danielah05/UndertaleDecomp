if (shake > 0)
{
    x = ((nowx + random(shake)) - random(shake))
    y = ((nowy + random(shake)) - random(shake))
}
if (walking == true)
    nowx -= 1
if (active == true)
{
    atimer += 1
    if (atimer > 5)
    {
        if (trueindex < 5)
            trueindex += 1
    }
}
draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_growneck, trueindex, x, y, 2, 2, 0, c_white, 1)
