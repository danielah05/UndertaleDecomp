image_angle = angle
direction = angle
angle += 3
if (global.turntimer <= 4)
{
    if (global.mnfight == 2)
        global.mnfight = 3
    instance_destroy()
}
