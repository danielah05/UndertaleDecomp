angspeed = (1.1 + (sin((siner / 6)) * 0.5))
radius += (sin((siner / 12)) * 3)
siner += 1
for (i = 0; i < maxnum; i += 1)
{
    if instance_exists(glove[i])
    {
        gloveang[i] += angspeed
        glove[i].x = (x + lengthdir_x(radius, (gloveang[i] + ourang)))
        glove[i].y = (y + lengthdir_y(radius, (gloveang[i] + ourang)))
        glove[i].image_angle = (gloveang[i] + ourang)
    }
}
if (x < 0)
    hspeed = (-hspeed)
if (x > room_width)
    hspeed = (-hspeed)
if (slower == 1)
{
    if (speed > 0)
        speed -= 0.05
    else
        speed = 0
}
if (y > 1000)
{
    if (spec == 0)
        instance_destroy()
}
if (y > room_height)
{
    if (spec == 1 && vspeed > 0)
        obj_6glove_boss.vspeed = (-abs(vspeed))
}
if (y < 0)
{
    if (spec == 1 && vspeed < 0)
        obj_6glove_boss.vspeed = abs(vspeed)
}
