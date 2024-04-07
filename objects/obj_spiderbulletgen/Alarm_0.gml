if (type == 0 || type == 1 || type == 2)
{
    ch = choose(0, 1, 2)
    g = instance_create(0, 0, obj_spiderbullet)
    g.choice = (ch + 1)
    g.side = 1
    ch2 = choose(0, 1, 2)
    if (ch2 == ch)
        ch2 += 1
    if (ch2 > 2)
        ch2 = 0
    g2 = instance_create(0, 0, obj_spiderbullet)
    g2.choice = (ch2 + 1)
    g2.side = 1
    if (type == 0)
    {
        g.speedfactor = 8
        g2.speedfactor = 8
        alarm[0] = 19
    }
    if (type == 1)
    {
        g.speedfactor = 11
        g2.speedfactor = 11
        alarm[0] = 16
    }
    if (type == 2)
    {
        g.speedfactor = 13
        g2.speedfactor = 13
        alarm[0] = 14
    }
}
if (type == 3 || type == 4 || type == 5)
{
    g = instance_create(0, 0, obj_donutbullet)
    if (type == 3)
    {
        g.speedfactor = 4
        alarm[0] = 17
    }
    if (type == 4)
    {
        g.speedfactor = 3.5
        alarm[0] = 17
    }
    if (type == 5)
    {
        g.speedfactor = 3
        alarm[0] = 16
    }
}
if (type == 6 || type == 7 || type == 8)
{
    g = instance_create(0, 0, obj_croissant)
    g.speedfactor = 13
    g.side = 0
    if (type == 6)
        alarm[0] = 24
    if (type == 7)
        alarm[0] = 22
    if (type == 8)
        alarm[0] = 19
}
if (type == 9 || type == 10 || type == 11 || type == 12)
{
    g = instance_create(0, 0, obj_spiderbullet)
    if (type == 9)
    {
        alarm[0] = 15
        g.speedfactor = 4
    }
    if (type == 10)
    {
        alarm[0] = 9
        g.speedfactor = 6
    }
    if (type == 11)
    {
        alarm[0] = 8
        g.speedfactor = 8
    }
    if (type == 12)
    {
        alarm[0] = 7
        g.speedfactor = 10
    }
}
if (type == 13 || type == 14 || type == 16)
{
    g = instance_create(0, 0, obj_vertspider)
    g = instance_create(0, 0, obj_vertspider)
    g = instance_create(0, 0, obj_vertspider)
    if (type == 16)
        obj_vertspider.dmg = (dmg - 1)
    if (type == 13)
        alarm[0] = 22
    if (type == 14)
        alarm[0] = 18
    if (type == 16)
        alarm[0] = 16
}
if instance_exists(blt_parent)
{
    blt_parent.dmg = dmg
    if instance_exists(obj_spiderb)
    {
        if (obj_spiderb.turnamt >= 15)
            blt_parent.dmg = (dmg - 1)
    }
}
