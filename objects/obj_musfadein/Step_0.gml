volume += fadespeed
if (volume > 0.95)
    volume = 1
caster_set_volume(mysong, volume)
if (volume == 1)
    instance_destroy()
