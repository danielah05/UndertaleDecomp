if (falling == 0)
    depth = (50000 - ((y * 10) + (sprite_height * 4)))
if (vspeed > 0.1)
    depth = (obj_mainchara.depth - 1)
if (vspeed < -0.1)
    depth = (obj_mainchara.depth + 1)
if (falling > 0)
    depth = 1000
xchange = abs(hspeed)
ychange = abs(vspeed)
tchange = (xchange + ychange)
angle += ((tchange * 30) / (size * 10))
image_xscale = size
image_yscale = size
if (falling == 1)
{
    friction = -0.1
    vspeed = 3
    falling = 2
}
if (falling == 2 && y > specialy)
{
    y = specialy
    friction = 0.1
    vspeed = 0
    falling = 0
}
if (t == 1 || t == 2)
{
    if (hspeed == 0 && vspeed == 0)
        t = 1
    else
        t = 2
}
golf = 0
if (t == 1)
    size -= 0.01
if (size < 0.2)
{
    instance_destroy()
    with (obj_rollsnowgen)
        alarm[0] = 10
}
