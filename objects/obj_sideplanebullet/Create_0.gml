image_speed = 0
y += (40 + random(40))
hspeed = (6 + random(2))
hspeed *= choose(-1, 1)
if (hspeed < 0)
{
    image_index = 1
    x = (global.idealborder[1] + 40)
}
if (hspeed > 0)
{
    x = (global.idealborder[0] - 40)
    image_index = 0
}
alarm[0] = 10
