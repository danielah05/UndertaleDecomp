if (h >= 3 && solved == 0)
{
    if (room == room_water7)
    {
        with (obj_solidtall)
            instance_destroy()
    }
    solved = 1
    if (global.plot < 109)
        global.plot = 109
    for (i = 0; i < 12; i += 1)
    {
        g = instance_create((440 + (i * 20)), 100, obj_proxglower)
        g = instance_create((440 + (i * 20)), 180, obj_proxglower)
    }
    obj_proxglower.image_speed = 0.25
    obj_proxglower.sprite_index = spr_smallstar
}
h = 0
