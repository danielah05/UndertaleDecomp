image_blend = merge_color(c_blue, c_aqua, random(1))
image_blend = merge_color(image_blend, c_white, random(0.5))
c = choose(0, 1, 2)
o = choose(0, 1)
if (c == 0)
{
    x = (2 + random(18))
    vspeed = 26
    image_yscale = 6
    image_alpha = 0.9
    y = -100
}
if (c == 1)
{
    x = (18 + random(18))
    vspeed = 22
    image_yscale = 4
    image_alpha = 0.7
    y = -70
}
if (c == 2)
{
    x = (30 + random(40))
    vspeed = 15
    image_yscale = 3
    image_alpha = 0.3
    y = -40
}
if (o == 1)
    x = ((room_width - x) - 4)
