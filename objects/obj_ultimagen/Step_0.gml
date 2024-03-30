shotbuffer += 1
timer += 1
if (type == 0)
{
    if (timer == 8)
        event_user(8)
    if (timer > 10 && timer < 19)
    {
        ub = instance_create(x, y, obj_ultimabullet)
        ub.side = 0
        with (ub)
            event_user(1)
    }
    if (timer == 28)
        event_user(9)
    if (timer > 30 && timer < 39)
    {
        ub = instance_create(x, y, obj_ultimabullet)
        ub.side = 1
        with (ub)
            event_user(1)
    }
    if (timer == 48)
        event_user(8)
    if (timer > 50 && timer < 58)
    {
        ub = instance_create(x, y, obj_ultimabullet)
        ub.side = 0
        with (ub)
            event_user(1)
    }
    if (timer == 68)
        event_user(9)
    if (timer > 70 && timer < 78)
    {
        ub = instance_create(x, y, obj_ultimabullet)
        ub.side = 1
        with (ub)
            event_user(1)
    }
    if (timer == 103)
    {
        event_user(8)
        event_user(9)
    }
    if (timer > 105 && timer < 117)
    {
        ub = instance_create(x, y, obj_ultimabullet)
        ub.side = choose(0, 1)
        with (ub)
            event_user(1)
    }
}
if (type == 1)
{
    if (timer == 1)
        t_c = 0
    t_c += 1
    if (t_c == 2)
    {
        ub = instance_create(x, y, obj_ultimabullet)
        sidez = choose(0, 1)
        ub.side = sidez
        with (ub)
            event_user(1)
        if (sidez == 0)
            event_user(8)
        if (sidez == 1)
            event_user(9)
        t_c = -1
    }
}
if (type == 2)
{
    if (timer == 1)
        t_c = 0
    t_c += 1
    if (t_c == 2)
    {
        ub = instance_create(x, y, obj_ultimabullet)
        sidez = choose(0, 1)
        ub.side = sidez
        with (ub)
            event_user(1)
        if (sidez == 0)
            event_user(8)
        if (sidez == 1)
            event_user(9)
        t_c = 1
    }
}
if (type == 3)
{
    if (timer == 1)
        t_c = 0
    t_c += 1
    if (t_c == 2)
    {
        ub = instance_create(x, y, obj_ultimabullet)
        sidez = choose(0, 1)
        ub.side = sidez
        with (ub)
            event_user(1)
        if (sidez == 0)
            event_user(8)
        if (sidez == 1)
            event_user(9)
        t_c = -5
    }
}
