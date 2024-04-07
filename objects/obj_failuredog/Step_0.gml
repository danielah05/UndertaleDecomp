if (fall == 1)
{
    gravity_direction = 90
    vspeed += (friction + 0.3)
    image_angle -= (speed * 2)
    if (y > fally)
    {
        hspeed = (6 - random(12))
        vspeed = (-vspeed)
        fall = 2
    }
}
if (fall == 2)
{
    vspeed += (friction + 0.1)
    image_angle -= (speed * 4)
    if (y > (fally + 7))
        fall = 3
}
if (fall == 3)
{
    vspeed = 0
    image_alpha -= 0.03
    if (image_alpha < 0.06)
        instance_destroy()
}
if (fall == 6)
{
    gravity_direction = 180
    vspeed += (friction + 0.3)
    image_angle += (speed * 2)
    if (y > fally)
    {
        hspeed = (4 + (random(3) * choose(-1, 1)))
        vspeed = (-vspeed)
        fall = 2
    }
}
