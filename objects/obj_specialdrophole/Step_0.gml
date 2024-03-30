if (global.plot >= 63)
{
    instance_create(x, y, obj_iceevent)
    if (!instance_exists(obj_fakebridge))
        instance_create((x + 3), y, obj_fakebridge)
    instance_destroy()
}
