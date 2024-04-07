caster_resume(global.batmusic)
if instance_exists(obj_shyren)
{
    if (obj_shyren.emotion == 2)
        obj_shyren.emotion = 1
    with (obj_shyren)
    {
        caster_stop(longnote[0])
        caster_stop(longnote[1])
    }
}
