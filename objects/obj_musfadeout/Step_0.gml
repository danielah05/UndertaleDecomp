volume -= fadespeed
if (volume < 0.05)
    volume = 0
caster_set_volume(mysong, volume)
if (volume == 0)
{
    caster_stop(mysong)
    caster_free(mysong)
    instance_destroy()
}
