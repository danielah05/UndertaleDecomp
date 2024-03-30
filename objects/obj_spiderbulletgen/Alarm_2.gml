if (btype[bno] == 0)
    ggg = instance_create(0, 0, obj_spiderbullet)
if (btype[bno] == 1)
    ggg = instance_create(0, 0, obj_donutbullet)
if (btype[bno] == 2)
    ggg = instance_create(0, 0, obj_croissant)
if (btype[bno] < 3)
{
    if (bchoice[bno] == 0)
        ggg.choice = choose(1, 2, 3)
    else
        ggg.choice = bchoice[bno]
    if (bside[bno] == 2)
        ggg.side = choose(0, 1)
    else
        ggg.side = bside[bno]
    ggg.speedfactor = bspeed[bno]
    ggg.dmg = dmg
    if instance_exists(obj_spiderb)
    {
        if (obj_spiderb.turnamt >= 15)
        {
            with (ggg)
                dmg -= 1
        }
    }
}
if (btype[bno] == 3)
{
    gg1 = instance_create(0, 0, obj_spiderbullet)
    gg2 = instance_create(0, 0, obj_spiderbullet)
    if (bchoice[bno] == 1)
    {
        gg1.choice = 1
        gg2.choice = 2
    }
    if (bchoice[bno] == 2)
    {
        gg1.choice = 1
        gg2.choice = 3
    }
    if (bchoice[bno] == 3)
    {
        gg1.choice = 2
        gg2.choice = 3
    }
    if (bside[bno] == 2)
    {
        gg1.side = choose(0, 1)
        gg2.side = gg1.side
    }
    else
    {
        gg1.side = bside[bno]
        gg2.side = bside[bno]
    }
    gg1.speedfactor = bspeed[bno]
    gg2.speedfactor = bspeed[bno]
    gg1.dmg = dmg
    gg2.dmg = dmg
    if instance_exists(obj_spiderb)
    {
        if (obj_spiderb.turnamt >= 15)
        {
            with (gg1)
                dmg -= 1
            with (gg2)
                dmg -= 1
        }
    }
}
if (btime[bno] == 0)
    btime[bno] = global.firingrate
alarm[2] = btime[bno]
bno += 1
if (bno >= bmax)
    alarm[2] = -1
