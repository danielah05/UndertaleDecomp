if (fader == 1)
{
    image_alpha -= 0.2
    if (image_alpha < 0.4)
        instance_destroy()
}
