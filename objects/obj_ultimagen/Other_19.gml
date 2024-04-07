if (shotbuffer > 3)
{
    borb = instance_create(x, y, obj_blastorb)
    borb.side = 1
    with (borb)
        event_user(1)
    if instance_exists(obj_afinal_body)
    {
        with (obj_afinal_body)
        {
            caster_stop(seg)
            caster_play(seg, 0.9, 0.8)
        }
    }
    shotbuffer = -1
}
