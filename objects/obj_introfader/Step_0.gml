if (image_alpha <= 0.9 && over == 0)
    image_alpha += tspeed
if (image_alpha > 0.9 && over == 0)
{
    over = 1
    alarm[2] = 4
}
