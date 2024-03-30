if (on == 1)
{
    if (parent.x != parent.xprevious)
    {
        hspeed = (parent.x - parent.xprevious)
        if (hspeed > 0)
            hspeed += friction
        if (hspeed < 0)
            hspeed -= friction
    }
    y = (parent.y - relative)
}
if (x < (parent.x - 2) && on == 1)
{
    on = 0
    hspeed = -4
    fall = 1
    g = instance_create(x, y, obj_failuredog)
    g.fally = (parent.y + 30)
    g.fall = fall
    g.friction = friction
    g.hspeed = hspeed
    instance_destroy()
}
if (x > (parent.x + 18) && on == 1)
{
    hspeed = 4
    on = 0
    fall = 6
    g = instance_create(x, y, obj_failuredog)
    g.friction = friction
    g.fally = (parent.y + 30)
    g.fall = fall
    g.hspeed = hspeed
    instance_destroy()
}
