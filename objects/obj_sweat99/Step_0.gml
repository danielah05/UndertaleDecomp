if (on == 1)
{
    if (image_alpha < 1)
        image_alpha += 0.1
    else
        on = 2
    gravity = 0.1
    alarm[1] = 20
}
if (on == 3)
{
    if (image_alpha > 0)
        image_alpha -= 0.04
    if (image_alpha < 0.1)
        instance_destroy()
}
image_angle = direction
