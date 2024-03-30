timer += 1
if (timer < 5)
{
    if (image_yscale < 1)
        image_yscale += 0.25
    if (image_alpha < 1)
        image_alpha += 0.15
}
if (timer > 6)
{
    image_yscale -= 0.25
    image_alpha -= 0.2
}
if (timer > 9)
    instance_destroy()
