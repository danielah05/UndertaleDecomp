if (side == 0 && x >= 680 && trail.xprev[12] >= 640)
    instance_destroy()
else if (side == 1 && x < -40 && trail.xprev[12] < 0)
    instance_destroy()
else
{
    trail.x = x
    trail.y = y
}
