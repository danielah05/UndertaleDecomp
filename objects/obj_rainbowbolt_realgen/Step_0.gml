l_buffer -= 1
timer += 1
if (h_mode == 0)
{
    if (timer > 1 && timer < 10)
    {
        caster_stop(er)
        instance_create((((-80 + x) + ((i / 8) * 640)) + 20), 360, obj_rainbowtarget)
        i += 1
    }
    if (timer > 21 && timer < 30)
    {
        caster_stop(er)
        instance_create((((-80 + x) + ((i / 8) * 640)) - 20), 360, obj_rainbowtarget)
        i -= 1
    }
    if (timer > 41 && timer < 50)
    {
        caster_stop(er)
        instance_create((((-80 + x) + ((i / 8) * 640)) + 20), 360, obj_rainbowtarget)
        i += 1
    }
    if (timer > 61 && timer < 70)
    {
        caster_stop(er)
        instance_create((((-80 + x) + ((i / 8) * 640)) - 20), 360, obj_rainbowtarget)
        i -= 1
    }
    if (timer == 90)
    {
        gg = instance_create(200, 360, obj_rainbowtarget)
        gg.giga = 1
        gg.image_xscale = 3
        gg.image_yscale = 3
        gg = instance_create(320, 360, obj_rainbowtarget)
        gg.giga = 1
        gg.image_xscale = 3
        gg.image_yscale = 3
        gg = instance_create(440, 360, obj_rainbowtarget)
        gg.giga = 1
        gg.image_xscale = 3
        gg.image_yscale = 3
    }
    if (timer == 106)
    {
        gg = instance_create(260, 360, obj_rainbowtarget)
        gg.giga = 1
        gg.image_xscale = 3
        gg.image_yscale = 3
        gg = instance_create(380, 360, obj_rainbowtarget)
        gg.giga = 1
        gg.image_xscale = 3
        gg.image_yscale = 3
    }
    if (timer == 122)
    {
        gg = instance_create(200, 360, obj_rainbowtarget)
        gg.giga = 1
        gg.image_xscale = 3
        gg.image_yscale = 3
        gg = instance_create(320, 360, obj_rainbowtarget)
        gg.giga = 1
        gg.image_xscale = 3
        gg.image_yscale = 3
        gg = instance_create(440, 360, obj_rainbowtarget)
        gg.giga = 1
        gg.image_xscale = 3
        gg.image_yscale = 3
    }
}
if (h_mode == 1)
{
    if (timer > 1 && timer < 10)
    {
        caster_stop(er)
        instance_create((((-80 + x) + ((i / 8) * 640)) + 20), 360, obj_rainbowtarget)
        i += 1
    }
    if (timer > 17 && timer < 27)
    {
        caster_stop(er)
        instance_create((((-80 + x) + ((i / 8) * 640)) - 20), 360, obj_rainbowtarget)
        i -= 1
    }
    if (timer > 34 && timer < 44)
    {
        caster_stop(er)
        instance_create((((-80 + x) + ((i / 8) * 640)) + 20), 360, obj_rainbowtarget)
        i += 1
    }
    if (timer > 54 && timer < 70)
    {
        caster_stop(er)
        instance_create((obj_heart.x + 8), 360, obj_rainbowtarget)
        i += 1
    }
    if (timer == 76 || timer == 91 || timer == 106 || timer == 121 || timer == 136)
    {
        caster_stop(er)
        gg = instance_create((200 + (rr * 60)), 360, obj_rainbowtarget)
        gg.giga = 1
        gg.image_xscale = 3
        gg.image_yscale = 3
        rr += 1
    }
}
