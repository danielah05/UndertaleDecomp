stage += 1
if (stage < 40)
{
    if (image_alpha < 1)
        image_alpha += 0.05
}
if (stage > 50)
{
    image_alpha -= 0.05
    if (image_alpha <= 0)
        instance_destroy()
}
x += (sin((stage / 8)) * 0.5)
if (image_index >= 2)
    image_speed = 0
