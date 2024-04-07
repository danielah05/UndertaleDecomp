if (golf == 0 && falling == 0)
{
    y = yprevious
    x = xprevious
    if (speed <= 0.06)
        speed = 0
    else
        speed -= 0.05
    if (other.bbox_right < bbox_left)
    {
        x += 2
        hspeed = (-hspeed)
    }
    if (other.bbox_left > bbox_right)
    {
        x -= 2
        hspeed = (-hspeed)
    }
    if (other.bbox_top > bbox_bottom)
    {
        y -= 2
        vspeed = (-vspeed)
    }
    if (other.bbox_bottom < bbox_top)
    {
        y += 2
        vspeed = (-vspeed)
    }
    golf = 1
}
