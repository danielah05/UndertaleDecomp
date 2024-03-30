if (con == 0)
{
    siner += 1
    y += (sin((siner / ss)) / 3)
    image_angle += aa
}
if (con == 1)
{
    xx = x
    yy = y
    newx = obj_amalgam_dogevent.dx
    newy = obj_amalgam_dogevent.dy
    tox = ((newx - x) / 10)
    toy = ((newy - y) / 10)
    con = 2
    alarm[4] = 10
}
if (con == 2)
{
    x += tox
    y += toy
}
if (con == 3)
    instance_destroy()
