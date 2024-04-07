counter += 1
bodycounter += 1
siner += 1
if (counter > 60 && counter < 80)
{
    head_index += 0.5
    if (head_index >= 6)
        counter = 100
}
if (counter > 130 && counter < 160)
{
    head_index -= 0.5
    if (head_index < 1)
    {
        head_index = 0
        counter = 160
    }
}
if (counter > 200 && counter < 210)
{
    head_index = 0
    headsprite = spr_reaperbird_bite
    counter = 210
}
if (counter > 210)
{
    head_index += 0.5
    if (head_index > 14)
    {
        head_index = 0
        counter = -30
        headsprite = spr_reaperbird_head
    }
}
if (bodycounter > 150)
{
    torso_index += 0.2
    if (torso_index > 7)
    {
        bodycounter = 0
        torso_index = 0
    }
}
sx = (sin((siner / 10)) * 5)
sy = abs((cos((siner / 8)) * 6))
draw_sprite_ext(spr_reaperbird_torso, floor(torso_index), ((x + 14) + sx), (((y + 90) + sy) - (mstretch * 20)), 2, ystretch, 0, c_white, image_alpha)
if (stretchup == 2)
{
    if (ystretch > 0)
        ystretch -= 0.1
    else
        ystretch = 0
    if (mstretch < 2)
        mstretch += 0.05
    else
        mstretch = 2
}
if (stretchup == 1)
{
    if (ystretch > 2)
        ystretch -= 0.2
    else
        ystretch = 2
}
if (stretchup == 0)
{
    if (ystretch < 4)
        ystretch += 0.2
    else
        ystretch = 4
}
draw_sprite_ext(headsprite, floor(head_index), x, y, 2, (2 - mstretch), 0, c_white, image_alpha)
