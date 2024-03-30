h = 0
solved = 0
if (room == room_water7)
{
    if (global.plot > 108)
    {
        solved = 1
        with (obj_solidtall)
            instance_destroy()
        for (i = 0; i < 12; i += 1)
        {
            g = instance_create((440 + (i * 20)), 100, obj_proxglower)
            g = instance_create((440 + (i * 20)), 180, obj_proxglower)
        }
        obj_proxglower.image_speed = 0.25
        obj_proxglower.sprite_index = spr_smallstar
    }
}
