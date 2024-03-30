image_angle = (direction + 90)
if (disappear == 1)
{
    image_alpha -= 0.08
    if (image_alpha < 0.1)
        instance_destroy()
}
