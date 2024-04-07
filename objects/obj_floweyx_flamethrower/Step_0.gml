if (extend == 1)
{
    if (image_index < 8)
        image_index += 1
}
if (extend == 2)
{
    if (image_index > 0)
        image_index -= 1
}
if (y > 190 && con == 0)
{
    con = 1
    vspeed = 0
    yanchor = y
    xanchor = x
    anchor = 1
}
if (done == 0)
{
    if (image_xscale < 1)
        image_xscale += 0.1
    else
    {
        done = 1
        con = 2
        alarm[0] = 1
        if (side == 1)
            alarm[0] = 25
    }
}
if (con == 2)
{
    if (side == 0)
    {
    }
    if (side == 1)
    {
    }
}
if (con == 3)
{
    if (extend != 2)
        snd_play(snd_elecdoor_close)
    extend = 2
    vspeed = -5
    alarm[0] = -1
    if (image_xscale > 0.1)
        image_xscale -= 0.1
    if (y <= 150)
        instance_destroy()
}
