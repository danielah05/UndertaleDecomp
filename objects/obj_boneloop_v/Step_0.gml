if (vspeed < 0)
{
    if (y < (global.idealborder[2] - sprite_height))
        y = global.idealborder[3]
}
if (vspeed > 0)
{
    if (y > global.idealborder[3])
        y = (global.idealborder[2] - sprite_height)
}
if (hspeed < 0 && x < 0)
    instance_destroy()
if (hspeed > 0 && x > room_width)
    instance_destroy()
