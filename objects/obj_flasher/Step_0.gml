if (active == true)
{
    image_alpha -= fadespeed
    if (image_alpha < 0.02)
        instance_destroy()
}
