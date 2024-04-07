image_xscale = size
image_yscale = size
timer += 1
obj_mettb_body.hurt = 2
obj_mettb_body.dsf = 2
if (timer == 0)
{
    shake = 5
    speed = 0
    x = homex
    y = homey
}
if (timer >= 0 && timer < 4)
{
    shake -= 1
    image_speed = 0.5
    size -= 0.2
}
if (timer == 7)
{
    caster_play(mus_explosion, 1, 1)
    shake = 0
    for (i = 0; i < 12; i += 1)
    {
        g = instance_create(x, y, obj_starburst_x)
        g.speed = (5.7 + random(0.6))
        g.friction = (0.24 + random(0.02))
        g.direction = (((i * 360) / 12) + random(5))
    }
}
if (timer > 7 && timer < 10)
{
    shake += 6
    size += 0.75
    if (another == 2)
        size += 0.15
    if (another == 3)
        size += 0.25
}
if (timer == 13)
{
    image_speed = 0
    image_index = 0
    size = 1
}
if (timer >= 13)
{
    shake -= 2
    if (shake < 1)
        shake = 0
}
if (timer > 20)
{
    if (another != 0)
    {
        if (another == 1)
        {
            global.turntimer = 900
            mtb = instance_create(homex, homey, obj_mettheart_burst)
            mtb.homex = homex
            mtb.homey = homey
            mtb.another = 2
            mtb.timer = 0
            instance_destroy()
        }
        if (another == 2)
        {
            mtb = instance_create(homex, homey, obj_mettheart_burst)
            mtb.homex = homex
            mtb.homey = homey
            mtb.another = 3
            mtb.timer = 0
            instance_destroy()
        }
        if (another == 3)
        {
            obj_mettb_body.heartdead = 1
            global.turntimer = 900
            obj_mettheart_4.lastcon = 3
            instance_destroy()
        }
    }
    else
    {
        if (global.turntimer > 9)
            global.turntimer = 9
        obj_mettb_body.dsf = 0
    }
}
if (shake > 0)
{
    x = (((homex - 5) + shake) - random((shake * 2)))
    y = ((homey + shake) - random((shake * 2)))
}
if (global.turntimer < 0)
{
    if (another == 0)
        global.faceemotion = 7
    instance_destroy()
}
global.faceemotion = 6
