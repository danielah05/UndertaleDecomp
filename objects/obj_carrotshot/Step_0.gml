if (shake == 0)
{
    if (x > (global.idealborder[1] - sprite_width))
    {
        x = xprevious
        hspeed = (-hspeed)
    }
    if (x < global.idealborder[0])
    {
        x = xprevious
        hspeed = (-hspeed)
    }
}
if (y > room_height || y < 0)
    instance_destroy()
if (shake == 1)
{
    x += (sin((siner / 2)) * 2)
    image_angle += (sin((siner / 2)) * 2)
    siner += 1
}
if (global.mnfight != 2)
    instance_destroy()
