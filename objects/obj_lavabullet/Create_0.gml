image_speed = 0
if (x < 300)
{
    type = 0
    hspeed = (6 + random(2))
    gravity = 0.17
    gravity_direction = 180
    vspeed = (-1 + random(2))
}
else
{
    type = 1
    image_index = 1
    hspeed = (-6 - random(2))
    gravity = 0.17
    gravity_direction = 0
    vspeed = (-1 + random(2))
}
off = 0
