if (type == 0)
{
    alarm[0] = 100
    scr_hplat(40, -2, 125, 60)
}
if (type == 1)
{
    alarm[0] = 55
    scr_hplat(40, -4, 65, 60)
}
if (type == 2 || type == 3)
{
    alarm[0] = 35
    scr_hplat(40, -4, 65, 25)
    alarm[2] = -1
    if (skl == 0)
    {
        skl = 1
        alarm[3] = 1
    }
}
