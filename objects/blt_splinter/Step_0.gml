if (flush == 1 && image_alpha < 1)
    image_alpha += 0.1
if (flush == 1 && image_alpha >= 1)
{
    flush = 2
    image_alpha = 1
}
if (iteration > 0 && flush == 0)
{
    flush = 1
    image_alpha = 0
}
if (iend == iteration)
    instance_destroy()
