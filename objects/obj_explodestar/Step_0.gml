if (big == 0)
{
    image_alpha -= 0.05
    image_xscale += 0.1
    image_yscale += 0.1
}
if (big == 1)
{
    aa = 0
    image_alpha -= 0.05
    image_xscale += 0.2
    image_yscale += 0.2
}
timer += 1
if (timer > 19)
    instance_destroy()
