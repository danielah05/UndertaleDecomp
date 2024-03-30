if (side == 0)
    direction = 180
if (side == 1)
    direction = 0
if (side == 2)
    direction = 90
if (side == 3)
    direction = 270
speed = 4
alarm[5] = 30
if (type == 0)
{
    fb = instance_create(x, y, blt_dummyshot)
    fb.speed = 1
    fb.dmg = dmg
    fb.friction = -0.15
}
if (type == 4)
{
    fb = instance_create(x, y, blt_dummymissle)
    fb.dmg = dmg
}
part = 2
