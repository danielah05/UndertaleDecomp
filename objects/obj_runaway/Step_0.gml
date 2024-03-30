if instance_exists(obj_mainchara)
{
    if (movement == 1)
    {
        if (obj_mainchara.x != obj_mainchara.xprevious || obj_mainchara.y != obj_mainchara.yprevious)
        {
            shouldir = -1
            jim = distance_to_object(obj_mainchara)
            if (jim < 80)
            {
                movement = 0
                alarm[0] = 15
                if (abs((x - obj_mainchara.x)) >= abs((y - obj_mainchara.y)))
                {
                    vspeed = 0
                    if (x > obj_mainchara.x)
                    {
                        hspeed = 4
                        x += 4
                        shoulddir = 0
                    }
                    else
                    {
                        hspeed = -4
                        x -= 4
                        shoulddir = 2
                    }
                    hedge = 0
                }
                else
                {
                    hspeed = 0
                    if (y > obj_mainchara.y)
                    {
                        vspeed = 4
                        y += 4
                        shoulddir = 3
                    }
                    else
                    {
                        vspeed = -4
                        y -= 4
                        shoulddir = 1
                    }
                    vedge = 0
                }
            }
        }
    }
    if (y < u && vspeed < 0)
    {
        vspeed = 0
        vedge = 1
        y = u
    }
    if (y > d && vspeed > 0)
    {
        vspeed = 0
        vedge = 2
        y = d
    }
    if (x > r && hspeed > 0)
    {
        hspeed = 0
        hedge = 2
        x = r
    }
    if (x < l && hspeed < 0)
    {
        hspeed = 0
        hedge = 1
        x = l
    }
    if (vedge > 0 || hedge > 0)
    {
        if (xmovement == 1)
        {
            if (obj_mainchara.x != obj_mainchara.xprevious || obj_mainchara.y != obj_mainchara.yprevious)
            {
                vspeed = 0
                hspeed = 0
                if (vedge == 1 && hedge == 1)
                {
                    if (shoulddir == 2)
                        vspeed = 4
                    if (shoulddir == 1)
                        hspeed = 4
                    hedge = 0
                    vedge = 0
                }
                if (vedge == 2 && hedge == 2)
                {
                    if (shoulddir == 3)
                        hspeed = -4
                    if (shoulddir == 0)
                        vspeed = -4
                    hedge = 0
                    vedge = 0
                }
                if (vedge == 2 && hedge == 1)
                {
                    if (shoulddir == 2)
                        vspeed = -4
                    if (shoulddir == 3)
                        hspeed = 4
                    hedge = 0
                    vedge = 0
                }
                if (vedge == 1 && hedge == 2)
                {
                    if (shoulddir == 1)
                        hspeed = -4
                    if (shoulddir == 0)
                        vspeed = 4
                    hedge = 0
                    vedge = 0
                }
                if (hedge == 1 || hedge == 2)
                {
                    vspeed = choose(4, -4)
                    hedge = 0
                }
                if (vedge == 1 || vedge == 2)
                {
                    hspeed = choose(4, -4)
                    vedge = 0
                }
                movement = 0
                xmovement = 0
                alarm[0] = 12
            }
        }
    }
    mykid.x = x
    mykid.y = y
    if (mykid.using == 1)
        instance_destroy()
}
