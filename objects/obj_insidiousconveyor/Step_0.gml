if (active == true)
{
    if (collide == 1)
    {
        global.interact = 1
        collide = 2
        timer = 0
        obj_mainchara.phasing = 1
    }
    if (collide == 2)
    {
        if (obj_mainchara.x < 340)
            obj_mainchara.x += 1
        if (obj_mainchara.y < 104.5)
            obj_mainchara.y += 1
        if (obj_mainchara.y > 105.5)
            obj_mainchara.y -= 1
        timer += 1
        if (obj_mainchara.x >= 339)
        {
            obj_mainchara.x = 340
            obj_mainchara.y = 105
            tileguy = instance_create(obj_mainchara.x, obj_mainchara.y, obj_tileguy)
            obj_mainchara.visible = false
            collide = 3
        }
    }
    if (global.plot > 167)
        active = false
}
