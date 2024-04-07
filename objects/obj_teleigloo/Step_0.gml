if (con == 5)
{
    global.interact = 1
    if (xx < 15)
        xx += 0.5
    obj_mainchara.y = -60
    obj_mainchara.x += xx
    obj_mainchara.x = ceil(obj_mainchara.x)
    if (obj_mainchara.x >= 2100)
    {
        if (xx > 3)
            xx -= 1
    }
    if (obj_mainchara.x >= 2335)
    {
        obj_mainchara.x = 2336
        obj_mainchara.y = 118
        global.facing = Direction.Down
        global.interact = 0
        con = 0
        xx = 1
    }
}
if (con == 10)
{
    if (xx < 15)
        xx += 0.5
    global.interact = 1
    obj_mainchara.y = -60
    obj_mainchara.x -= xx
    obj_mainchara.x = floor(obj_mainchara.x)
    if (obj_mainchara.x <= 960)
    {
        if (xx > 3)
            xx -= 1
    }
    if (obj_mainchara.x <= 734)
    {
        obj_mainchara.x = 732
        obj_mainchara.y = 106
        global.facing = Direction.Down
        global.interact = 0
        con = 0
        xx = 1
    }
}
