curamt += 1
if (curamt < amt)
{
    image_index = 0
    image_speed = 1
    alarm[1] = swipewait
    if (curamt > 1 && curamt < amt)
    {
        if (image_xscale == 2)
            image_xscale = -2
        else
            image_xscale = 2
    }
}
else
{
    image_speed = 0
    alarm[2] = 15
}
