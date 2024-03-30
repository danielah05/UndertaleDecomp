if (vspeed < -1.5)
    vspeed += 0.15
image_speed = (vspeed / 8)
if (y < (global.idealborder[2] - 20))
    off = 1
if (off == 1)
{
    image_alpha -= 0.05
    if (image_alpha < 0.1)
        instance_destroy()
}
