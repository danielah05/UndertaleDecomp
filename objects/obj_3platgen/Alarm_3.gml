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
{
    gb = instance_create(0, 0, obj_gasterblaster)
    if (sd == 0)
        gb.idealx = (global.idealborder[0] - 60)
    else
    {
        gb.idealx = (global.idealborder[1] + 60)
        gb.x = 640
    }
    gb.idealy = (global.idealborder[3] - 20)
    if (sd == 0)
        gb.idealrot = 90
    else
        gb.idealrot = -90
}
if (g == 1)
{
    gb = instance_create(0, 0, obj_gasterblaster)
    if (sd == 0)
        gb.idealx = (global.idealborder[0] - 60)
    else
    {
        gb.idealx = (global.idealborder[1] + 60)
        gb.x = 640
    }
    gb.idealy = (global.idealborder[2] + 35)
    if (sd == 0)
        gb.idealrot = 90
    else
        gb.idealrot = -90
}
if (g == 2)
{
    gb = instance_create(0, 0, obj_gasterblaster)
    if (sd == 0)
        gb.idealx = (global.idealborder[0] - 60)
    else
    {
        gb.idealx = (global.idealborder[1] + 60)
        gb.x = 640
    }
    gb.idealy = (global.idealborder[2] + 75)
    if (sd == 0)
        gb.idealrot = 90
    else
        gb.idealrot = -90
}
with (obj_gasterblaster)
{
    pause = 17
    terminal = 3
    image_yscale = 2
}
if (type == 3)
{
    with (obj_gasterblaster)
        pause = 17
}
if (sd == 0)
    sd = 1
else
    sd = 0
alarm[3] = 26
if (type == 3)
    alarm[3] = 21
