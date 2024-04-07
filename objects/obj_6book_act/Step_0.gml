if (type == 1)
{
    if (speed > 0)
        speed -= 0.03
    if (speed < 0)
        speed = 0
}
if (x > (405 - (sprite_width / 2)))
{
    if (hspeed > 0)
        hspeed = (-hspeed)
}
if (x < (250 + (sprite_width / 2)))
{
    if (hspeed < 0)
        hspeed = (-hspeed)
}
