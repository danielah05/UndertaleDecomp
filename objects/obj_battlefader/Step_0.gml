image_alpha -= 0.2
if (image_alpha < 0.1)
{
    heart.depth = 0
    instance_destroy()
}
