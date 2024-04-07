image_angle += aa
if (y > 800 && vspeed > 0)
    instance_destroy()
if (x > 800 && hspeed > 0)
    instance_destroy()
if (y < -200 && vspeed < 0)
    instance_destroy()
if (x < -200 && hspeed < 0)
    instance_destroy()
if (action == 1)
{
    if (hspeed < 0 && x < (room_width - (width / 2)))
    {
        if (speed > 0)
            speed -= 0.5
    }
    if (hspeed > 0 && x > (0 + (width / 2)))
    {
        if (speed > 0)
            speed -= 0.5
    }
}
if (action == 3)
{
    if (x < -50 && hspeed < 0)
        x += 710
    if (x > (room_width + 50) && hspeed > 0)
        x -= 710
}
