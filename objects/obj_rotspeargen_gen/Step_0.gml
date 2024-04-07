if (global.turntimer < 4)
{
    if instance_exists(obj_undyne_ex)
    {
        if (obj_undyne_ex.orderb == 4)
        {
            global.turntimer = 30
            with (obj_undyne_ex)
                alarm[11] = 40
            if (obj_undyne_ex.order == 11)
                obj_undyne_ex.lesson = -11
            with (obj_undyne_ex)
                event_user(1)
        }
    }
    with (obj_rotspeargen)
        instance_destroy()
    with (obj_rotspear)
    {
        deactivate = 1
        fade = 1
    }
    instance_destroy()
}
