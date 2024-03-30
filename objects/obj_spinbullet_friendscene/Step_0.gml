if (fade == 1)
{
    f_timer += 1
    if (f_timer > 8)
        image_alpha -= 0.1
    if (image_alpha < 0.1)
        instance_destroy()
}
