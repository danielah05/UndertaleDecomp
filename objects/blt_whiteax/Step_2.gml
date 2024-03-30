if (global.turntimer < 1)
{
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
if (image_alpha < 1)
    image_alpha += 0.05
