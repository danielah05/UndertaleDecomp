if (global.debug == true)
{
    ub = instance_create(x, y, obj_ultimabullet)
    ub.side = choose(0, 1)
    with (ub)
        event_user(1)
}
