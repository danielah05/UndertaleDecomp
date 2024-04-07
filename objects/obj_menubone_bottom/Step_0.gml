if (active == true)
{
    if (con == 1)
    {
        x = idealx
        y = 480
        vspeed = -10
        con = 2
    }
    if (con == 2)
    {
        if (y <= idealy)
        {
            vspeed = 0
            hspeed = myspeed
            con = 3
        }
    }
    if (con == 3)
    {
        cool = 0
        if (hspeed < 0)
        {
            if (x <= idealx2)
                cool = 1
        }
        if (hspeed > 0)
        {
            if (x >= idealx2)
                cool = 1
        }
        if (cool == 1)
        {
            hspeed = 0
            vspeed = 10
            con = 4
        }
    }
    if (con == 4)
    {
        if (y >= 480)
        {
            speed = 0
            con = 1
            if (terminate == 1)
                instance_destroy()
        }
    }
}
