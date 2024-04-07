if (con == 0)
{
    swipetimer += 1
    if (swipetimer > initswipewait)
        con = 1
    if (quick > 0)
    {
        image_index = 2
        con = 1
    }
}
if (con == 2)
{
    if (image_xscale == 2)
        image_xscale = -2
    else
        image_xscale = 2
    con = 3
    hitted = 0
    image_speed = 0
    image_index = 0
    swipetimer = 0
    curamt += 1
}
if (con == 3)
{
    if (curamt > amt)
    {
        con = 99
        alarm[2] = 45
    }
    else
    {
        swipetimer += 1
        image_speed = 0
        image_index = 0
        if (swipetimer > swipewait)
        {
            con = 1
            if (quick > 1)
                image_index = 2
        }
    }
}
if (con == 1)
{
    image_index += cutspeed
    if (image_index >= 6)
    {
        con = 2
        swipetimer = 0
    }
}
