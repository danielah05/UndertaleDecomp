if (global.turntimer < 1)
    instance_destroy()
if (image_alpha < 0.9)
    image_alpha += 0.1
else
{
    image_alpha = 1
    intangible = 0
}
