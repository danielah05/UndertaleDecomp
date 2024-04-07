sum = scr_monstersum()
image_index = 1
image_speed = 0
if (sum == 1)
{
    vspeed = -4
    a = instance_create(x, (y + 25), blt_stalk2)
    a.c = 1
    a = instance_create(x, (y + 50), blt_stalk2)
    a = instance_create(x, (y + 75), blt_stalk2)
    a.c = 1
}
if (sum > 1)
{
    vspeed = 4.2
    a = instance_create(x, (y - 25), blt_stalk2)
    a.c = 1
    a = instance_create(x, (y - 50), blt_stalk2)
    a = instance_create(x, (y - 75), blt_stalk2)
    a.c = 1
}
xx = 0
dmg = 6
friction = 0.1
alarm[0] = 40
sinr = 0
