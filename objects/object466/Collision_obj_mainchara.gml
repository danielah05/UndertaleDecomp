if (falling == 0)
{
    if (bonk == 1)
    {
        hspeed = 0
        vspeed = 0
        bonk = 0
    }
    else
    {
        if obj_time.left
        {
            if (hspeed > -4)
                hspeed = -4
            else
                hspeed -= ((0.5 / size) + 0.05)
        }
        if obj_time.up
        {
            if (vspeed > -3)
                vspeed = -3
            else
                vspeed -= ((0.5 / size) + 0.05)
        }
        if obj_time.right
            hspeed += ((0.6 / size) + 0.05)
        if obj_time.down
            vspeed += ((0.6 / size) + 0.05)
        if (speed < 0.4)
        {
        }
        t = 1
    }
}
