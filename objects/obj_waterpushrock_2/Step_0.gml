if (fadeout == 1)
{
    if (image_alpha > 0.1)
        image_alpha -= 0.1
    else
        instance_destroy()
}
