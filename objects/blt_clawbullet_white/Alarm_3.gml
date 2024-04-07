if (parent == obj_musicobjectparent)
{
    alarm[4] = 6
    speed = (1.5 + random(0.5))
    g = floor(random(2))
    if (y < global.idealborder[2])
    {
        if (x > (global.idealborder[0] + (c_borderwidth(0) / 2)))
            g = 0
        else
            g = 1
    }
    if (y > global.idealborder[3])
    {
        if (x > (global.idealborder[0] + (c_borderwidth(0) / 2)))
            g = 1
        else
            g = 0
    }
    if (g == 1)
        rotdir = (1 + random(1))
    if (g == 0)
        rotdir = (-1 - random(1))
    startdir = scr_perpendicular()
    startspeed = speed
}
friction = -0.1
visible = true
direction = startdir
speed = startspeed
