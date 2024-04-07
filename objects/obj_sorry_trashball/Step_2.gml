if (stop == 0)
    image_angle += aa
if (y > 580)
    instance_destroy()
if (x > 640)
    instance_destroy()
if (x < 0)
    instance_destroy()
if (y < (ystart - 70))
    depth = -1112
if (depth < 0 && image_xscale < 2)
{
    image_xscale += 0.05
    image_yscale += 0.05
}
if (y > (global.idealborder[3] - 10) && stop == 0)
{
    stop = 1
    speed = 0
    gravity = 0
}
if (global.mnfight != 2 && deactivate == 0)
    deactivate = 1
if (deactivate == 1)
{
    stop = 2
    gravity = (0.8 + random(0.3))
    deactivate = 2
}
