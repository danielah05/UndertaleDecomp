if (!instance_exists(obj_halfbullet_gen))
{
    with (obj_heart)
    {
        visible = false
        movement = -1
        x = 320
        y = 308
    }
    hb = instance_create(0, 0, obj_halfbullet_gen)
    hb.type = pattern
    with (hb)
        event_user(0)
}
