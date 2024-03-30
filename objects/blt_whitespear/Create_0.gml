dmg = 0
rr = round(random(1))
y = (global.idealborder[2] + 7)
if (rr == 1)
{
    x = (global.idealborder[1] + 20)
    hspeed = -7
    gravity = 0.13
    gravity_direction = 0
}
if (rr == 0)
{
    x = (global.idealborder[0] - 20)
    hspeed = 7
    gravity = 0.13
    gravity_direction = 180
}
