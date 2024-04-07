step += 1
if (step > 1)
{
    size += 0.2
    image_alpha -= 0.2
}
image_xscale = size
image_yscale = size
if (image_alpha < 0.2)
    instance_destroy()
