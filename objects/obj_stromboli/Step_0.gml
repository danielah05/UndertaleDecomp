wall_l = (global.idealborder[0] - 2)
wall_r = (global.idealborder[1] - 22)
wall_d = (global.idealborder[3] - 22)
wall_u = (global.idealborder[2] - 2)
if (active == true)
{
    if (hspeed > 0 && x > wall_r)
    {
        event_user(1)
        vspeed = 0
        hspeed = -2
    }
    if (hspeed < 0 && x < wall_l)
    {
        event_user(1)
        vspeed = 0
        hspeed = 2
    }
    if (vspeed > 0 && y > wall_d)
    {
        event_user(1)
        vspeed = -2
        hspeed = 0
    }
    if (vspeed < 0 && y < wall_u)
    {
        event_user(1)
        vspeed = 2
        hspeed = 0
    }
}
if (image_alpha < 1 && off == 0)
    image_alpha += 0.1
if (off == 1)
    image_alpha -= 0.05
if (image_alpha < 0.1 && off == 1)
    instance_destroy()
