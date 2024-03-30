if (active == true)
{
    if (rotspeed > rotmin)
        rotspeed -= 0.2
    if (rotspeed < rotmin)
        rotspeed += 0.2
    for (i = 0; i < num; i += 1)
    {
        if instance_exists(spear[i])
        {
            hx = (x + lengthdir_x(rr, (curang + ((i / num) * 360))))
            hy = (y + lengthdir_y(rr, (curang + ((i / num) * 360))))
            spear[i].x = hx
            spear[i].y = hy
            with (spear[i])
                image_angle = point_direction(x, y, parent.x, parent.y)
        }
        if (rr < 8)
        {
            with (spear[i])
                deactivate = 1
        }
    }
    if (rr < 8)
    {
        rr += 1
        rotspeed *= 0.8
    }
    if (rr < -20)
        instance_destroy()
    rr -= 4
    curang += rotspeed
}
if (global.turntimer < 1)
    instance_destroy()
