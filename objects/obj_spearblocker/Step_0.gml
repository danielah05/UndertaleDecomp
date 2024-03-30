ender = 0
buffer += 1
if (refuse != 2)
{
    if (global.turntimer < 1)
    {
        global.turntimer = -1
        ender = 1
    }
    if (obj_heart.sprite_index != spr_heartgreen)
        ender = 1
    if (buffer > 30)
    {
        if (instance_exists(obj_blockbullet) == false && instance_exists(obj_blockbullet2) == false)
        {
            if instance_exists(obj_greenspeargen)
            {
                if (obj_greenspeargen.done == 1)
                    ender = 1
            }
        }
    }
}
if (ender == 1)
{
    with (obj_blockbullet)
        instance_destroy()
    with (obj_blockbullet2)
        instance_destroy()
    if (refuse == 0)
        global.mnfight = 4
    if (refuse == 1)
    {
        if (lesson == 6 || lesson == 11 || lesson == 20)
        {
            with (obj_undyneboss)
                darkify = 3
            with (obj_undyneboss)
                event_user(1)
        }
        if (lesson == -7 || lesson == -10 || lesson == -14)
        {
            with (obj_undyne_ex)
            {
                darkify = 3
                event_user(1)
            }
        }
    }
    instance_destroy()
}
