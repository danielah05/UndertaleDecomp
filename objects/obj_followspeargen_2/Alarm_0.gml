for (i = 0; i < num; i += 1)
{
    hx = ((obj_heart.x + 8) + lengthdir_x(rr, (curang + ((i / num) * 360))))
    hy = ((obj_heart.y + 8) + lengthdir_y(rr, (curang + ((i / num) * 360))))
    spear[i] = instance_create(hx, hy, obj_followspear_2)
    spear[i].fade = fade
}
if (type == 1 && rate > 10)
    rate -= 1
if (type == 0 || type == 3)
    curang += ang
if (type == 1)
    curang += (10 + choose(10, 20, 30))
alarm[0] = rate
if (type == 2)
{
    siner += 1
    ang = (sin((siner / 16)) * 16)
    if (abs(ang) < 2)
    {
        if (ang < 0)
            ang = -2
        if (ang > 0)
            ang = 2
    }
    curang += ang
}
