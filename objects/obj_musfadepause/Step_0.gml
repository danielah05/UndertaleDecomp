if (resume == 0)
{
    volume -= fadespeed
    if (volume < 0.05)
        volume = 0
    caster_set_volume(mysong, volume)
    if (volume == 0)
        caster_pause(mysong)
}
if (resume == 1)
{
    caster_resume(mysong)
    volume = 0
    resume = 2
}
if (resume == 2)
{
    volume += fadespeed
    caster_set_volume(mysong, volume)
    if (volume > fvolume)
    {
        volume = fvolume
        instance_destroy()
    }
}
