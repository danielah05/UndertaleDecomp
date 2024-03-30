if (cl == 4)
{
    if (vspeed > 0 && y > w_d)
    {
        y = w_d
        if (cl == 0)
            direction += 90
        else
            direction -= 90
    }
    if (hspeed > 0 && x > w_r)
    {
        x = w_r
        if (cl == 0)
            direction += 90
        else
            direction -= 90
    }
    if (vspeed < 0 && y < w_u)
    {
        y = w_u
        if (cl == 0)
            direction += 90
        else
            direction -= 90
    }
    if (hspeed < 0 && x < w_l)
    {
        x = w_l
        if (cl == 0)
            direction += 90
        else
            direction -= 90
    }
}
if obj_time.left
    x = w_l
if obj_time.right
    x = w_r
if obj_time.up
    y = w_u
if obj_time.down
    y = w_d
