if (wavein == 0)
{
    with (obj_napstablookdate_music)
    {
        event_user(3)
        caster_stop(global.currentsong)
    }
    global.interact = 1
    waver = instance_create(0, 0, obj_fx_waver)
    waver.depth = 100000
    waver.image_alpha = 0
    wavein = 1
}
if (wavein >= 2)
{
    wavein = 3
    with (obj_napstablookdate_music)
        event_user(3)
}
