if (active == true)
{
    timer += 1
    if (truetype == 0 || truetype == 1)
    {
        if (timer == 50)
        {
            for (i = 0; i < 5; i += 1)
            {
                with (cb_a[i])
                {
                    speed = 0
                    direction = 0
                }
            }
        }
        if (timer >= 50 && timer <= 70)
        {
            for (i = 0; i < 5; i += 1)
            {
                with (cb_a[i])
                {
                    image_angle = direction
                    curdir = direction
                    idealdir = point_direction(x, y, (obj_creditsheart.x + 8), (obj_creditsheart.y + 8))
                    facingMinusTarget = (curdir - idealdir)
                    angleDiff = facingMinusTarget
                    if (abs(facingMinusTarget) > 180)
                    {
                        if (curdir > idealdir)
                            angleDiff = (-1 * ((360 - curdir) + idealdir))
                        else
                            angleDiff = ((360 - idealdir) + curdir)
                    }
                    leastAccurateAim = 3
                    if (abs(angleDiff) > leastAccurateAim)
                    {
                        dirspeed = 1
                        angleDiff2 = abs(angleDiff)
                        if (angleDiff2 > 10)
                            dirspeed = 2
                        if (angleDiff2 > 20)
                            dirspeed = 5
                        if (angleDiff2 > 30)
                            dirspeed = 15
                        if (angleDiff2 > 40)
                            dirspeed = 16
                        if (angleDiff2 > 50)
                            dirspeed = 17
                        if (angleDiff2 > 60)
                            dirspeed = 18
                        if (angleDiff2 > 70)
                            dirspeed = 20
                        if (angleDiff2 > 80)
                            dirspeed = 22
                        if (angleDiff2 > 90)
                            dirspeed = 24
                        if (angleDiff2 > 100)
                            dirspeed = 25
                        if (angleDiff < 0)
                            dirspeed = (-dirspeed)
                        direction -= dirspeed
                    }
                }
            }
        }
        if (timer == 75)
        {
            for (i = 0; i < 5; i += 1)
            {
                with (cb_a[i])
                {
                    speed = 3
                    friction = -0.5
                    action = 0
                }
            }
        }
        if (timer == 85)
            instance_destroy()
    }
    if (truetype == 2)
    {
        if (timer > 50 && timer < 70)
            x += 4
        if (timer > 80 && timer < 100)
            x -= 4
        if (timer > 130 && timer < 150)
            x -= 4
        if (timer > 160 && timer < 180)
            x += 4
        if (timer > 210 && timer < 230)
            x += 4
        if (timer > 230 && timer < 250)
            x -= 4
        if (timer == 250)
        {
            siner = 0
            sf = 5
        }
        if (timer > 250 && timer < 420)
        {
            siner += 1
            x += (sin((siner / 7)) * sf)
            sf += 0.02
        }
        if (timer == 420)
            instance_destroy()
    }
    if (truetype == 3)
    {
        for (i = 0; i < 10; i += 1)
        {
            if (hspeed > 0)
            {
                with (cb_a[i])
                    hspeed = 0.1
            }
            if (hspeed < 0)
            {
                with (cb_a[i])
                    hspeed = -0.1
            }
            if instance_exists(cb_a[i])
            {
                cb_a[i].x = x
                cb_a[i].y = y
            }
            with (cb_a[i])
            {
                if (abs(aa) < 1.7)
                    aa *= 1.02
                x += lengthdir_x(85, image_angle)
                y += lengthdir_y(85, image_angle)
            }
        }
        if (x > 1000 || x < -400)
            instance_destroy()
    }
}
