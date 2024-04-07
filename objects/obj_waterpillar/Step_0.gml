if (on == 1)
{
    image_xscale -= 0.4
    image_alpha += 0.25
    image_yscale += 0.3
    if (image_alpha >= 1)
        image_alpha = 1
    if (image_yscale >= 1)
        on = 2
    alarm[0] = 3
}
if (on == 2)
    image_yscale += 0.1
if (on == 0)
{
    image_xscale += 0.25
    image_alpha -= 0.25
    image_yscale -= 0.4
    if (image_yscale < 0.1)
        instance_destroy()
}
