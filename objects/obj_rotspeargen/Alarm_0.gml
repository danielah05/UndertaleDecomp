if (type == 0)
{
    curang = 0
    rotspeed = 8
    rotmin = 2
    num = 7
    rate = 20
    rr = 220
}
if (type == 1)
{
    curang = 0
    rotspeed = -8
    rotmin = -2
    num = 7
    rate = 20
    rr = 220
}
if (type == 2)
{
    curang = random(360)
    rotspeed = 8
    rotmin = 2
    num = 8
    rate = 20
    rr = 230
}
if (type == 3)
{
    curang = random(360)
    rotspeed = -8
    rotmin = -2
    num = 8
    rate = 20
    rr = 230
}
for (i = 0; i < num; i += 1)
{
    hx = ((x + 8) + lengthdir_x(rr, (curang + ((i / num) * 360))))
    hy = ((y + 8) + lengthdir_y(rr, (curang + ((i / num) * 360))))
    spear[i] = instance_create(hx, hy, obj_rotspear)
    spear[i].parent = id
    with (spear[i])
        image_angle = point_direction(x, y, parent.x, parent.y)
}
active = true
