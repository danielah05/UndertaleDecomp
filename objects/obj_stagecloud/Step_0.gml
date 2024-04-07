image_alpha += 0.03
timer += 1
if (timer > 30)
{
    image_alpha -= 0.07
    if (image_alpha < 0.1)
        instance_destroy()
}
