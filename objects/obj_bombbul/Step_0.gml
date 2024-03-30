if (type == 0 && y > (global.idealborder[3] - 10))
{
    if (bounce == 1)
    {
        on = 1
        gravity = 0
        vspeed = 0
    }
    if (bounce == 0)
    {
        y -= vspeed
        vspeed = -1.5
        bounce = 1
    }
}
if (type == 1 && x > (global.idealborder[1] - 10))
{
    if (bounce == 1)
    {
        on = 1
        gravity = 0
        hspeed = 0
    }
    if (bounce == 0)
    {
        x -= hspeed
        hspeed = -1.5
        bounce = 1
    }
}
if (type == 2 && y < (global.idealborder[2] + 10))
{
    if (bounce == 1)
    {
        on = 1
        gravity = 0
        vspeed = 0
    }
    if (bounce == 0)
    {
        y -= vspeed
        vspeed = 1.5
        bounce = 1
    }
}
if (type == 3 && x < (global.idealborder[0] + 10))
{
    if (bounce == 1)
    {
        on = 1
        gravity = 0
        hspeed = 0
    }
    if (bounce == 0)
    {
        x -= hspeed
        hspeed = 1.5
        bounce = 1
    }
}
if (type == 0 || type == 2)
{
    if (x > (global.idealborder[1] - 15) || x < (global.idealborder[0] + 15))
    {
        x = xprevious
        hspeed = (-hspeed)
    }
}
if (type == 1 || type == 3)
{
    if (y > (global.idealborder[3] - 15) || y < (global.idealborder[2] + 15))
    {
        y = yprevious
        vspeed = (-vspeed)
    }
}
if (bounce == 1)
{
    flash += 1
    if (flash > 14)
    {
        flash = 14
        if (expl == 0)
        {
            alarm[0] = 15
            expl = 1
        }
    }
    image_speed = (1 / (3 - (flash / 10)))
}
