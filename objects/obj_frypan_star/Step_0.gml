if (speed < 6)
{
    image_alpha -= 0.05
    if (ang > 1)
        ang -= 0.5
}
image_angle += ang
if (image_alpha < 0.05)
    instance_destroy()
