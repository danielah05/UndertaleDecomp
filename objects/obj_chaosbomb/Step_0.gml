image_angle += 10
if (con == 3)
{
    image_xscale += 0.05
    image_yscale += 0.05
    image_alpha -= 0.1
    if (image_alpha < 0.1)
        instance_destroy()
}
if (con == 2.2)
{
    image_xscale += 0.4
    image_yscale += 0.4
    if (image_xscale >= 2)
        con = 3
}
if (con == 2.1)
    con = 2.2
if (con == 2)
    con = 2.1
if (con == 1)
{
    image_xscale = 0.8
    image_yscale = 0.8
    con = 1.5
}
if (con == 1.5)
{
    image_xscale -= 0.1
    image_yscale -= 0.1
    if (image_xscale < 0.2)
        con = 2
}
