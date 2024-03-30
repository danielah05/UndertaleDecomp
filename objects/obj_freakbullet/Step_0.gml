if (con == 0)
{
    image_alpha += 0.05
    if (image_alpha >= 1)
    {
        con = 1
        alarm[4] = 20
    }
}
if (con == 2)
{
    image_speed = 0.5
    sz = (2 + random(0.1))
    sz2 = (2 + random(0.1))
    if (image_index > 9)
        image_alpha -= 0.1
    if (image_alpha < 0.3)
        instance_destroy()
}
image_xscale = sz
image_yscale = sz2
