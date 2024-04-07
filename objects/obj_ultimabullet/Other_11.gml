if (side == 0)
{
    x -= 160
    hspeed = (-9 - random(8))
    vspeed = (4 + random(10))
}
if (side == 1)
{
    x += 160
    hspeed = (9 + random(8))
    vspeed = (4 + random(10))
}
for (i = 0; i < 18; i += 1)
{
    trail.xprev[i] = x
    trail.yprev[i] = y
}
