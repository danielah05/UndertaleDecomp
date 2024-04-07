if (vspeed > 0 && con == 0)
    depth = -31
if (y > 340 && con == 0)
{
    if (vspeed > 0)
    {
        depth = -14
        gravity = 0
        friction = 0.9
    }
    else
    {
        depth = -14
        vspeed = 0
    }
}
image_angle = direction
visible = true
