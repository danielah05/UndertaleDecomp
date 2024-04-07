if (fade == 1)
{
    image_alpha -= 0.08
    image_xscale -= 0.06
    x += 15.8
}
if (image_xscale < 0.08)
    instance_destroy()
