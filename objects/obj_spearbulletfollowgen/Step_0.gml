if (global.turntimer < 3)
{
    with (obj_spearbullet_follow)
        deactivate = 1
    with (obj_undyneboss)
        darkify = 3
    instance_destroy()
}
if (global.turntimer < 4)
{
    if instance_exists(obj_undyneboss)
    {
        if (obj_undyneboss.order == 9 || obj_undyneboss.order == 15)
        {
            global.turntimer = 30
            if (obj_undyneboss.order == 9)
                obj_undyneboss.lesson = 8
            if (obj_undyneboss.order == 15)
                obj_undyneboss.lesson = 13
            if (obj_undyneboss.order == 24)
                obj_undyneboss.lesson = 22
            with (obj_spearbullet_follow)
                deactivate = 1
            with (obj_undyneboss)
                darkify = 3
            with (obj_undyneboss)
                event_user(1)
        }
    }
    if instance_exists(obj_undyne_ex)
    {
        if (obj_undyne_ex.order == 6)
        {
            global.turntimer = 30
            with (obj_undyne_ex)
                alarm[11] = 40
            if (obj_undyne_ex.order == 6)
                obj_undyne_ex.lesson = -8
            with (obj_undyne_ex)
                deactivate = 1
            with (obj_undyne_ex)
                darkify = 3
            with (obj_undyne_ex)
                event_user(1)
        }
    }
    instance_destroy()
}
