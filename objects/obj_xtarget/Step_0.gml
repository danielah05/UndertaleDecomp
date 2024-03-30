if (priority < 0)
    priority = 0
if (x > fatalx)
{
    image_alpha -= 0.2
    if (image_alpha < 0.1)
    {
        image_alpha = 0
        if instance_exists(obj_targetparent)
        {
            with (obj_targetparent)
                priority -= 1
        }
        instance_destroy()
        priority = 999999
        return;
    }
}
if (priority == 0)
{
    image_index = 0
    if control_check_pressed(InteractButton)
    {
        image_alpha = 1
        image_speed = 0.5
        obj_battlethingparent.check = id
        with (obj_battlethingparent)
            event_user(3)
        control_clear(InteractButton)
        with (obj_targetparent)
            event_user(1)
    }
}
