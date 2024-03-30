zone = 0
if (obj_heart.y >= (global.idealborder[2] + 40))
    zone = 1
if (obj_heart.y >= (global.idealborder[2] + 80))
    zone = 2
reroll = 0
gg2 = gg
gg = g
g = choose(0, 1, 2)
if (gg == g)
{
    if (gg2 == gg)
        reroll = 1
}
if (g == 0)
{
    if (zone == 0)
        reroll = 1
}
if (g == 1)
{
    if (zone == 2)
        reroll = 1
}
if (reroll == 1)
    g = choose(0, 1, 2)
if (g == 0)
    scr_sbo(35, -4, 50, 0)
if (g == 1)
    scr_sbo(90, -4, 50, 2)
if (g == 2)
{
    scr_bwall(80, 4, 50, 1)
    bone.image_yscale = 0.8
}
if (type == 0)
    alarm[2] = 15
if (type == 1)
    alarm[2] = 15
