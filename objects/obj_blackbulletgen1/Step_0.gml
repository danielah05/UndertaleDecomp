if (global.mnfight != 2)
    instance_destroy()
if (x > (global.idealborder[1] - 20) || x < global.idealborder[0])
{
    x = xprevious
    hspeed = (-hspeed)
}
