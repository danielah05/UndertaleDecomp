if (normal == 1 && destroy == 0)
{
    speed = 0
    with (obj_maddummy)
        event_user(3)
    if (obj_maddum_drawer.alarm[5] < 2)
    {
        with (obj_maddum_drawer)
            event_user(2)
    }
    with (obj_maddummy)
        event_user(7)
    if (instance_exists(obj_shaker) == false)
        scr_shake(4, 4, 2)
    destroy = 1
    normal = 0
}
