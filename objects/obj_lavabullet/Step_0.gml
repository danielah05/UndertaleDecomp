image_angle = direction
if (type == 0)
{
    if (hspeed < 0 && x <= global.idealborder[0])
        off = 1
}
if (type == 1)
{
    if (hspeed > 0 && x >= global.idealborder[1])
        off = 1
}
if (off == 1)
{
    image_alpha -= 0.12
    if (image_alpha < 0.05)
        instance_destroy()
}
