image_angle = (pspeed[1] * 2)
if (lefter == 1 || lefter == 0)
{
    if (hspeed > -20)
        hspeed -= 3
    else
        hspeed -= 0.4
}
if (lefter == 2)
{
    hspeed += 2
    if (hspeed > 1)
    {
        hspeed = 0
        lefter = 3
    }
}
if (lefter == 4)
{
    if (hspeed < 20)
        hspeed += 4
    else
        hspeed += 0.5
}
if (lefter == 5)
{
    hspeed -= 2
    if (x < remx && hspeed < 3)
        hspeed = 3
    if (hspeed < -1 || x >= remx)
    {
        x = remx
        hspeed = 0
        lefter = 16
    }
}
pspeed[0] = hspeed
for (i = 4; i > 0; i -= 1)
    pspeed[i] = pspeed[(i - 1)]
