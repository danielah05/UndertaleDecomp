choseang = random(360)
if (diff == 0)
{
    choseangspeed = 0
    i = 0
    repeat (36)
    {
        cc = instance_create(0, 0, obj_cfire)
        cc.ang = (choseang + (i * 8))
        cc.rspeed = 4
        cc.r = 300
        cc.angspeed = choseangspeed
        i += 1
    }
    alarm[0] = 35
}
if (diff == 1)
{
    choseangspeed = (-2 + random(4))
    i = 0
    repeat (36)
    {
        cc = instance_create(0, 0, obj_cfire)
        cc.ang = (choseang + (i * 8))
        cc.rspeed = 6
        cc.r = 300
        cc.angspeed = choseangspeed
        i += 1
    }
    alarm[0] = 30
}
if (diff == 2)
{
    choseangspeed = (-4 + random(8))
    i = 0
    repeat (36)
    {
        cc = instance_create(0, 0, obj_cfire)
        cc.ang = (choseang + (i * 8))
        cc.rspeed = 4
        cc.r = 300
        cc.angspeed = choseangspeed
        i += 1
    }
    alarm[0] = 30
}
if (diff == 3)
{
    choseangspeed = (-6 + random(12))
    i = 0
    repeat (33)
    {
        cc = instance_create(0, 0, obj_cfire)
        cc.ang = (choseang + (i * 8))
        cc.rspeed = 6
        cc.r = 300
        cc.angspeed = choseangspeed
        i += 1
    }
    alarm[0] = 25
}
