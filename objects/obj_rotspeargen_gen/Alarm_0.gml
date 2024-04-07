if (type == 0)
{
    g = instance_create((obj_heart.x + 8), (obj_heart.y + 8), obj_rotspeargen)
    g.type = t
    if (t == 0)
        t = 1
    else
        t = 0
    alarm[0] = 27
}
if (type == 1)
{
    t = choose(2, 3)
    g = instance_create((obj_heart.x + 8), (obj_heart.y + 8), obj_rotspeargen)
    g.type = t
    alarm[0] = 24
}
