gravity_direction += (4 - random(8))
if (x <= 0)
{
    exist_timer += 4
    x += 1
    if (hspeed < 0)
        hspeed = ((-hspeed) + random(7))
}
if (x >= 320)
{
    exist_timer += 4
    x -= 1
    if (hspeed > 0)
        hspeed = ((-hspeed) - random(7))
}
if (y >= 240)
{
    exist_timer += 4
    y -= 1
    if (vspeed > 0)
        vspeed = ((-vspeed) - random(7))
}
if (y <= 0)
{
    exist_timer += 4
    y += 1
    if (vspeed < 0)
        vspeed = ((-vspeed) + random(7))
}
exist_timer += 1
if (exist_timer >= threshold)
{
    image_alpha -= 0.01
    if (image_alpha <= 0)
        instance_destroy()
}
