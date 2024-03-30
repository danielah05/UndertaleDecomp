if (active == true)
{
    if (site == 0 && x > (object0.x - 90) && part == 0)
        part = 1
    if (site == 1 && x < (object0.x + 90) && part == 0)
        part = 1
    if (site == 2 && y < (object0.y + 90) && part == 0)
        part = 1
    if (site == 3 && y > (object0.y - 90) && part == 0)
        part = 1
    rater = 10
    r2 = 20
    if (part == 1)
    {
        siner = 0
        part = 2
        speed = 0
        remx = x
        remy = y
        xrate = 0
        if (rating > 8)
            xrate = (rating - 8)
        totalx = (145 + (xrate * 8))
    }
    if (down == 1)
    {
        countdown -= 1
        down = 0
    }
    if (part == 2)
    {
        siner += 1
        if (site == 0)
        {
            x = (remx + (sin(((siner * pi) / r2)) * totalx))
            y = (remy - (sin(((siner * pi) / rater)) * 100))
            if (siner == rater)
            {
                part = 3
                hspeed = (-8 * speedmod)
            }
        }
        if (site == 1)
        {
            x = (remx - (sin(((siner * pi) / r2)) * totalx))
            y = (remy - (sin(((siner * pi) / rater)) * 100))
            if (siner == rater)
            {
                part = 3
                hspeed = (8 * speedmod)
            }
        }
        if (site == 2)
        {
            y = (remy - (sin(((siner * pi) / r2)) * totalx))
            x = (remx - (sin(((siner * pi) / rater)) * 100))
            if (siner == rater)
            {
                part = 3
                vspeed = (8 * speedmod)
            }
        }
        if (site == 3)
        {
            y = (remy + (sin(((siner * pi) / r2)) * totalx))
            x = (remx + (sin(((siner * pi) / rater)) * 100))
            if (siner == rater)
            {
                part = 3
                vspeed = (-8 * speedmod)
            }
        }
    }
}
if (alphoid < 1)
    alphoid += 0.2
image_alpha = alphoid
